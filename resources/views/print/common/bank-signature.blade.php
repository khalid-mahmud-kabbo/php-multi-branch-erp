<table class="">
            <tr>
                @php
                    $hideBankDetailsData = isset($hideBankDetails) && $hideBankDetails;//default: false, if $hideBankDetails set then true
                @endphp
                @if(!$hideBankDetailsData)
                <td class="bank-details">
                    <span class="fw-bold cu-fs-18">{{ __('print.bank_details') }}</span><br>
                        <p class="cu-fs-18">
                        <x-bank-details-component />
                    </p>
                </td>
                @endif
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
<style>
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
        <button class="btn btn-success print-btn" id="translateBtn" onclick="window.print()">Print</button>
