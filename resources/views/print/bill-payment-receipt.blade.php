<!DOCTYPE html>
<html lang="ar" dir="{{ $appDirection }}">
<head>
    <meta charset="UTF-8">
    <title>{{ __('payment.receipt') }}</title>
    @include('print.common.css')
<style>
    @import url('https://fonts.googleapis.com/css2?family=Cairo:wght@400;700&display=swap');

    .ar-text {
        font-family: 'Cairo', sans-serif;
        display: block;
        direction: rtl;
    }

    #translateBtn {
        background-color: #4CAF50;
        padding: 0.5rem 1rem;
        border: none;
        border-radius: 0.5rem;
        color: white;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
    }

    @media print {
        #translateBtn { display: none; }
        .ar-text { color: #000; }
    }


</style>
    
</head>
<body onload="window.print();">

    @if(app('company')['is_saudi'])
     <div class="no-print" style="padding: 20px; text-align: center;">
    <button id="translateBtn" onclick="translateEverything()" class="btn btn-success">
        Translate Entire Invoice (Arabic)
    </button>
</div>
@endif

    <div class="invoice-container">
        <span class="invoice-name">{{ __('print.payment_out') }}</span>
        <div class="invoice">
            <table class="header">
                <tr>
                    @include('print.common.header')

                    <td class="bill-info">
                        <span class="bill-number">{{ __('print.receipt_no') }} #: {{ $payment->reference_no }}</span><br>
                        <span class="cu-fs-16">{{ __('print.date') }}: {{ $payment->formatted_transaction_date  }}</span><br>
                        <span class="cu-fs-16">{{ __('print.time') }}: {{ $payment->format_created_time  }}</span><br>
                    </td>
                </tr>
            </table>
            <table class="addresses">
                <tr>
                    <td class="address">
                        <span class="fw-bold cu-fs-18">{{ __('print.paid_to') }}</span><br>
                        <span>{{ $purchase->party->first_name.' '. $purchase->party->last_name }}<br>
                        {{ $purchase->party->billing_address }}</span>
                    </td>
                </tr>
            </table>

        <table class="table-bordered custom-table table-compact" id="item-table">
            <thead>
                <tr>
                    <th>{{ __('print.payment_type') }}</th>
                    <th>{{ __('print.amount') }}</th>
                </tr>
            </thead>
            <tbody>

                <tr>

                    <td class="text-left">
                        <b>{{ $payment->paymentType->name }}</b>
                   </td>
                   <td class="text-end">
                       {{ $formatNumber->formatWithPrecision($payment->amount) }}
                   </td>
                </tr>
                <tr>
                    <td>
                        {{ __('print.due_balance') }} {{ $balanceData['status']=='you_pay' ? '(Pay)' : ($balanceData['status']=='you_collect' ? '(Collect)' : '') }}
                    </td>
                    <td class="text-end">
                       {{ $formatNumber->formatWithPrecision($balanceData['balance']) }}
                   </td>
                </tr>

            </tbody>
        </table>


        <table class="">
            <tr>
                <td class="signature">
                     @if(app('company')['show_signature_on_invoice'])
                         @php
                            if($isPdf){
                                 //No image Path
                                $defaultSignature = 'app/public/images/noimages/no-image-found.jpg';

                                //Company logo path
                                $signaturePath = 'app/public/images/signature/';

                                $signature = storage_path(
                                    !empty(app('company')['signature']) &&
                                    file_exists(storage_path($signaturePath . app('company')['signature']))
                                        ? $signaturePath . app('company')['signature']
                                        : $defaultSignature
                                );


                            }else{
                                //Routing or direct view
                                $signature = url('/company/signature/getimage/'.app('company')['signature']);
                            }
                        @endphp

                        <img src="{{ $signature }}" alt="Logo" class="company-logo">
                        @endif
                        <p>{{ app('company')['name'] }}</p>
                        <p>{{ __('print.authorized_signatory') }}</p>
                </td>
            </tr>
        </table>


    </div>
    </div>

    <script>
async function translateEverything() {
    const body = document.body;
    const button = document.getElementById('translateBtn');
    button.innerText = 'Translating...';
    button.disabled = true;

    // 1. Collect all text nodes
    function getTextNodes(node) {
        let all = [];
        for (node = node.firstChild; node; node = node.nextSibling) {
            if (node.nodeType === Node.TEXT_NODE && node.textContent.trim().length > 1) {
                // Skip script parents and numbers
                if (!['SCRIPT', 'STYLE', 'NOSCRIPT'].includes(node.parentElement.tagName) && 
                    isNaN(node.textContent.trim()) && 
                    node.parentElement.id !== 'translateBtn') {
                    all.push(node);
                }
            } else if (node.nodeType === Node.ELEMENT_NODE) {
                all = all.concat(getTextNodes(node));
            }
        }
        return all;
    }

    const textNodes = getTextNodes(body);
    if (textNodes.length === 0) return;

    // 2. Prepare for Batch Translation (Combine with a unique separator)
    const separator = " ||| ";
    const combinedText = textNodes.map(node => node.textContent.trim()).join(separator);

    try {
        // 3. One single request for EVERYTHING
        const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=ar&dt=t&q=${encodeURIComponent(combinedText)}`;
        const response = await fetch(url);
        const data = await response.json();

        // Google sometimes breaks the array into parts, we merge them back
        let translatedFull = data[0].map(item => item[0]).join('');
        const translatedParts = translatedFull.split(separator);

        // 4. Apply translations back to the DOM
        textNodes.forEach((node, index) => {
            if (translatedParts[index]) {
                const span = document.createElement('span');
                // If you want BOTH languages, use: 
                // span.innerHTML = `${node.textContent} <br> <small dir="rtl" class="ar-text">${translatedParts[index].trim()}</small>`;
                
                // If you want ARABIC ONLY:
                span.textContent = translatedParts[index].trim();
                span.setAttribute('dir', 'rtl');
                span.classList.add('ar-text');
                
                node.parentNode.replaceChild(span, node);
            }
        });

    } catch (e) {
        console.error('Batch translation failed:', e);
    }

    button.innerText = 'Translated';
}   
</script>

</body>
</html>
