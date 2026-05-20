<!DOCTYPE html>
<html lang="en" dir="{{ $appDirection }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $invoiceData['name'] }}</title>
    <link href="{{ versionedAsset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ versionedAsset('custom/css/print/pos.css') }}?v"/>

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

        html,
        body {
            width: 80mm !important;
            min-width: 80mm !important;
            max-width: 80mm !important;
            height: auto !important;
            margin: 0 !important;
            padding: 0 !important;
            overflow: visible !important;
        }

        body {
            zoom: 1 !important;
        }
    }
</style>

</head>
<body>
    <div class="invoice-wrapper" id="receiptRoot">
        <div class="container mt-3">
            <div class="invoice-header">
                <div class="invoice-title">{{ app('company')['name'] }}</div>
                <div>
                    {{ app('company')['address'] }}
                        <p>
                            @if(app('company')['mobile'] || app('company')['email'])
                                {{ app('company')['mobile'] ? app('company')['mobile'] : ''}}{{ app('company')['email'] ? ', '.app('company')['email'] : '' }}
                            @endif
                            @if(app('company')['tax_number']!= '' && app('company')['tax_type'] != 'no-tax')
                                <br>{{ app('company')['tax_type'] == 'gst' ? 'GST:' : __('tax.tax') . ':' }} {{ app('company')['tax_number'] }}
                            @endif
                        </p>
                </div>
            </div>

            <div class="text-center">--------{{ $invoiceData['name'] }}--------</div>

            <div class="row">
                <div class="col-6">
                    <div>{{ __('print.name') }}: {{ $sale->party->first_name.' '. $sale->party->last_name }}</div>
                    <div>{{ __('print.mobile') }}: {{ $sale->party->mobile }}</div>
                    <div>{{ __('print.seller') }}: {{ $sale->user->first_name.' '. $sale->user->last_name }}</div>
                    {{-- Party Tax/GST Number --}}
                    @include('print.common.party-tax-details', ['model' => $sale, 'isPOSInvoice'    => true])

                </div>
                <div class="col-6 text-end">
                    <div>{{ __('print.invoice') }}: #{{ $sale->sale_code  }}</div>
                    <div>{{ __('print.date') }}: {{ $sale->formatted_sale_date  }}</div>
                    <div>{{ __('print.time') }}: {{ $sale->format_created_time  }}</div>
                    @if(!empty($sale->reference_no))
                        <div>{{ __('print.reference_no') }}: {{ $sale->reference_no }}</div>
                    @endif
<div>{{ __('print.payment_method') }}: {{ $sale->paymentTransaction->map(function ($payment) {
    return $payment->paymentType->name . (!empty($payment->note) ? '-' . $payment->note : '');
})->unique()->implode(', ') }}
                    </div>
                </div>
            </div>

            <table class="table table-sm mt-2">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>{{ __('print.description') }}</th>
                        <th class="text-end">{{ __('print.price_per_unit') }}</th>
                        <th class="text-end">{{ __('print.qty') }}</th>
                        <th class="text-end">{{ __('print.total') }}</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $i=1;
                    @endphp

                    @foreach($sale->itemTransaction as $transaction)
                    @php
                        $displayUnitPrice = $transaction->unit_price;
                        $displayLineTotal = $displayUnitPrice * $transaction->quantity;
                    @endphp
                    <tr>
                        <td>{{ $i++ }}</td>
                        <td>
                            {{ $transaction->item->name }}
                            <small>{{ $transaction->description }}</small>
                            {{-- Show Brand Name --}}
                            @include('print.common.brand-details', ['model' => $transaction])
                            <small>
                                @if ($transaction->itemSerialTransaction->count() > 0)
                                    <br>{{ $transaction->itemSerialTransaction->pluck('itemSerialMaster.serial_code')->implode(',') }}<br>
                                @endif
                            </small>
                        </td>
                       <td class="text-end">{{ $formatNumber->formatWithPrecision($displayUnitPrice) }}</td>
                        <td class="text-end">{{ $formatNumber->formatQuantity($transaction->quantity) }}</td>


                        {{--
                            Note:
                                Calculate Total = (Unit Price - Discount) + Tax
                                Here we are showing only Total, in below destriburted the discount and Tax
                        --}}
                        <td class="text-end">{{ $formatNumber->formatWithPrecision($displayLineTotal) }}</td>



                    </tr>
                    @endforeach

                    @php
                       $totalQty = $sale->itemTransaction->sum(function ($transaction) {
                            return $transaction->quantity;
                        });
                    @endphp
                    <tr class="text-end fw-bold">
                        <td colspan="3">{{ __('app.total') }}</td>
                         <td></td>
                        <td>{{ $formatNumber->formatWithPrecision($sale->grand_total) }}</td>
                    </tr>
                </tbody>
            </table>

            <div class="row text-end">
                @php
                    $subtotal = $sale->itemTransaction->sum(function ($transaction) {
                                /*if($transaction->tax_type == 'inclusive'){
                                    $unitPrice = calculatePrice($transaction->unit_price, $transaction->tax->rate, needInclusive: true);
                                }else{
                                    $unitPrice = calculatePrice($transaction->unit_price, $transaction->tax->rate, needInclusive: false);
                                }*/
                                $unitPrice = $transaction->unit_price;
                                return $unitPrice * $transaction->quantity;
                            });
                    $discount = $sale->itemTransaction->sum(function ($transaction) {
                                return $transaction->discount_amount;
                            });

                    $taxAmount = $sale->itemTransaction->sum(function ($transaction) {
                                return $transaction->tax_amount;
                            });

                @endphp
                <div class="col-8 text-end"><strong>{{ __('print.discount') }}</strong></div>
                <div class="col-4">{{ $formatNumber->formatWithPrecision(-$discount) }}</div>

                <div class="col-8 text-end"><strong>{{ __('print.grand_total') }}</strong></div>
                <div class="col-4">{{ $formatNumber->formatWithPrecision($sale->grand_total) }}</div>

                @if(app('company')['tax_type'] != 'no-tax')
                    <div class="col-8 text-end"><strong>{{ __('print.tax') }}</strong></div>
                    <div class="col-4">{{ $formatNumber->formatWithPrecision($taxAmount) }}</div>
                @endif

                <div class="col-8 text-end"><strong>{{ __('print.paid_amount') }}</strong></div>
                <div class="col-4">{{ $formatNumber->formatWithPrecision($sale->paid_amount) }}</div>

                <div class="col-8 text-end"><strong>{{ __('print.balance') }}</strong></div>
                <div class="col-4">{{ $formatNumber->formatWithPrecision($sale->grand_total - $sale->paid_amount) }}</div>

                
                <div class="col-8 text-end"><strong>{{ __('print.return_amount') }}</strong></div>
                <div class="col-4">{{ $formatNumber->formatWithPrecision($sale->change_return) }}</div>


                @if(app('company')['show_mrp'])
                    @php
                        $savedAmount = $sale->itemTransaction->sum(function ($transaction) {
                                    if($transaction->mrp > 0){
                                        return ($transaction->mrp * $transaction->quantity) - $transaction->total;
                                    }else{
                                        return 0;
                                    }
                            });

                    @endphp
                    <div class="col-8 text-end"><strong>{{ __('print.you_saved') }}</strong></div>
                    <div class="col-4">{{ $formatNumber->formatWithPrecision($savedAmount) }}</div>
                @endif

                @if(app('company')['show_party_due_payment'])
                    @php
                        $partyTotalDue = $sale->party->getPartyTotalDueBalance();
                        $partyTotalDueBalance = $partyTotalDue['balance'];
                    @endphp
                    <div class="col-8 text-end"><strong>{{ __('print.previous_due') }}</strong></div>
                    <div class="col-4">{{ $formatNumber->formatWithPrecision($partyTotalDueBalance - ($sale->grand_total - $sale->paid_amount) ) }}</div>
                    <div class="col-8 text-end"><strong>{{ __('print.total_due_balance') . ($partyTotalDue['status'] == 'you_pay' ? '(You Pay)' : '(Receive)') }}</strong></div>
                    <div class="col-4">{{ $formatNumber->formatWithPrecision($partyTotalDueBalance) }}</div>
                @endif


            </div>

            @if(app('company')['show_tax_summary'] && app('company')['tax_type'] != 'no-tax')
        <table class="table table-bordered custom-table tax-breakdown table-compact">
            <thead>
                @if(app('company')['tax_type'] == 'tax')
                    <tr>
                        <th>{{ __('print.tax') }}</th>
                        <th>{{ __('print.taxable_amount') }}</th>
                        <th>{{ __('print.rate') }}</th>
                        <th>{{ __('print.tax_amount') }}</th>
                    </tr>
                 @else
                    {{-- GST --}}
                     <tr>
                        <th rowspan="2">{{ __('print.hsn') }}</th>
                        <th rowspan="2">{{ __('print.taxable_amount') }}</th>
                        <th colspan="2" class="text-center">{{ __('print.gst') }}</th>
                        <th rowspan="2">{{ __('print.tax_amount') }}</th>
                    </tr>
                    <tr>
                        <th>{{ __('print.rate') }}%</th>
                        <th>{{ __('print.amount') }}</th>
                    </tr>
                @endif
            </thead>
            <tbody>
                @php

                if(app('company')['tax_type'] == 'tax'){
                    $taxSummary = $sale->itemTransaction
                        ->groupBy('tax_id')
                        ->map(function ($group) {
                            $firstItem = $group->first();
                            $totalTaxableAmount = $group->sum(function ($item) use ($firstItem) {
                                $totalOfEachItem = ($item->unit_price * $item->quantity) - $item->discount_amount;
                                return $totalOfEachItem;
                                /*
                                if ($item->tax_type == 'inclusive') {
                                    return calculatePrice($totalOfEachItem, $firstItem->tax->rate, needInclusive: true);
                                } else {
                                    return calculatePrice($totalOfEachItem, $firstItem->tax->rate, needInclusive: false);
                                }*/
                            });
                            return [
                                'tax_id' => $firstItem->tax_id,
                                'tax_name' => $firstItem->tax->name,
                                'tax_rate' => $firstItem->tax->rate,
                                'total_taxable_amount' => $totalTaxableAmount,
                                'total_tax' => $group->sum('tax_amount')
                            ];
                        })
                        ->values();
                }
                else{
                    //GST
                    $taxSummary = $sale->itemTransaction
                    ->groupBy('item.hsn') // First group by HSN
                    ->map(function ($hsnGroup) {
                        return $hsnGroup->groupBy('tax_id') // Then group by tax_id within each HSN group
                            ->map(function ($group) {
                                $firstItem = $group->first();
                                $totalTaxableAmount = $group->sum(function ($item) {
                                    $totalOfEachItem = ($item->unit_price * $item->quantity) - $item->discount_amount;
                                    return $totalOfEachItem;
                                });
                                return [
                                    'hsn' => $firstItem->item->hsn,
                                    'tax_id' => $firstItem->tax_id,
                                    'tax_name' => $firstItem->tax->name,
                                    'tax_rate' => $firstItem->tax->rate,
                                    'total_taxable_amount' => $totalTaxableAmount,
                                    'total_tax' => $group->sum('tax_amount')
                                ];
                            });
                    })
                    ->flatMap(function ($hsnGroup) {
                        return $hsnGroup;
                    })
                    ->values();
                }

                @endphp
                @foreach($taxSummary as $summary)
                    @if(app('company')['tax_type'] == 'tax')


                    <tr>
                        <td>{{ $summary['tax_name'] }}</td>
                        <td class="text-end">{{ $formatNumber->formatWithPrecision($summary['total_taxable_amount']) }}</td>
                        <td class="text-center">{{ $summary['tax_rate'] }}%</td>
                        <td class="text-end">{{ $formatNumber->formatWithPrecision($summary['total_tax']) }}</td>
                    </tr>
                    @else
                    <tr>
                        @php
                            $isCSGST = (empty($sale->state_id) || app('company')['state_id'] == $sale->state_id) ? true:false;
                        @endphp
                        <td>{{ $summary['hsn'] }}</td>
                        <td class="text-end">{{ $formatNumber->formatWithPrecision($summary['total_taxable_amount']) }}</td>

                        @php
                            $cs_gst = $i_gst = '';
                            $cs_gst_amt = $i_gst_amt = '';
                            if($isCSGST){
                                $cs_gst = ($summary['tax_rate']/2).'%';
                                $cs_gst_amt = $formatNumber->formatWithPrecision($summary['total_tax']/2);
                            }else{
                                $i_gst = ($summary['tax_rate']).'%';
                                $i_gst_amt = $formatNumber->formatWithPrecision($summary['total_tax']);
                            }
                        @endphp
                        @if($isCSGST)
                            <!-- CGST & SGT -->
                            <td class="text-center">{{ $cs_gst }}</td>
                            <td class="text-end">{{ $cs_gst_amt }}</td>
                        @else
                            <!-- IGST -->
                            <td class="text-center">{{ $i_gst }}</td>
                            <td class="text-end">{{ $i_gst_amt }}</td>
                        @endif
                        <td class="text-end">{{ $formatNumber->formatWithPrecision($summary['total_tax']) }}</td>
                    </tr>
                    @endif
                @endforeach
            </tbody>
        </table>
        @endif

            <div class="footer">


                <table class="addresses">
            <tr>
                <td class="address">
                    <span class="fw-bold cu-fs-18">{{ __('print.note') }}</span><br>
                    <span class="cu-fs-14 ">{{ $sale->party->note }}</span>
                </td>
            </tr>
        </table>



                @include('print.common.terms-conditions')


            </div>
        </div>
    </div>
    <div class="container mt-3 mb-3 hide-print-btn">
        <button class="btn btn-success print-btn" onclick="prepareAndPrint()">Print</button>
    </div>

    <!-- Bootstrap JS -->
    <script src="{{ versionedAsset('assets/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ versionedAsset('assets/js/jquery.min.js') }}"></script>
     @if(app('company')['is_saudi'])
      <script src="{{ versionedAsset('custom/js/common/translator.js') }}"></script>  
     @endif
    <script>
        const mmPerPixel = 25.4 / 96;
        let printSizeStyle = null;

        function applyReceiptPageSize() {
            const receiptRoot = document.getElementById('receiptRoot');

            if (!receiptRoot) {
                return;
            }

            const contentHeightPx = Math.max(
                receiptRoot.scrollHeight,
                receiptRoot.offsetHeight,
                Math.ceil(receiptRoot.getBoundingClientRect().height)
            );

            const bufferedHeightMm = Math.ceil((contentHeightPx + 140) * mmPerPixel);
            const receiptHeightMm = Math.max(320, Math.min(5000, bufferedHeightMm));

            if (!printSizeStyle) {
                printSizeStyle = document.createElement('style');
                printSizeStyle.id = 'dynamic-print-size';
                document.head.appendChild(printSizeStyle);
            }

            printSizeStyle.textContent = `@media print {
                @page { size: 80mm ${receiptHeightMm}mm; margin: 0; }
                html, body {
                    height: ${receiptHeightMm}mm !important;
                    min-height: ${receiptHeightMm}mm !important;
                }
            }`;
        }

        function prepareAndPrint() {
            applyReceiptPageSize();
            window.setTimeout(function () {
                window.print();
            }, 50);
        }

        window.addEventListener('load', function () {
            window.requestAnimationFrame(function () {
                window.requestAnimationFrame(applyReceiptPageSize);
            });
        });

        window.addEventListener('beforeprint', applyReceiptPageSize);
    </script>
</body>
</html>
