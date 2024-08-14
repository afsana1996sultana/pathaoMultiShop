<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8" />
    <title>{{ config('app.name', 'Laravel') }}</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta property="og:title" content="" />
    <meta property="og:type" content="" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    @php
        $logo = get_setting('site_favicon');
    @endphp
    @if($logo != null)
        <link rel="shortcut icon" type="image/x-icon" href="{{ asset(get_setting('site_favicon')->value ?? ' ') }}" />
    @else
        <link rel="shortcut icon" type="image/x-icon" href="{{ asset('upload/no_image.jpg') }}" alt="{{ env('APP_NAME') }}" />
    @endif
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/main.css?v=5.3 ') }}" />
    <style>
        .invoice-3 .invoice-header {
            padding: 30px;
        }
        .invoice .invoice-top {
            padding: 20px;
            margin-bottom: 10px;
        }
        .invoice-addr-1.text-capitalize {
            margin-bottom: 0;
        }
        .invoice .invoice-center {
            padding: 20px;
        }
        .invoice .table > :not(caption) > * > * {
            padding: 10px;
        }
        @media (max-width: 480px) {
            .invoice-center tr {
                display: flex;
                justify-content: center
            }
         }

    </style>
</head>

<body>
    <div class="invoice invoice-content invoice-3">
        <div class="back-top-home hover-up mt-30 ml-30">
            <a class="hover-up" href="{{ route('home') }}"><i class="fi-rs-home mr-5"></i> Homepage</a>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="invoice-inner">
                        <div class="invoice-info" id="invoice_wrapper">
                            <div class="invoice-header">
                                <div class="row">
                                    <div class="col-sm-8 col-12">
                                        <div class="invoice-name">
                                            <div class="logo w-50">
                                                <a href="{{route('home')}}">
                                                    @php
                                                        $logo = get_setting('site_footer_logo');
                                                    @endphp
                                                    @if($logo != null)
                                                        <img src="{{ asset(get_setting('site_footer_logo')->value ?? 'null') }}" style="max-width: 200px !important;" alt="{{ env('APP_NAME') }}">
                                                    @else
                                                        <img src="{{ asset('upload/no_image.jpg') }}" alt="{{ env('APP_NAME') }}" style="max-width: 200px !important;">
                                                    @endif
                                                </a>
                                                <div>
                                                    <strong>{{ get_setting('business_name')->value ?? ''}}</strong> <br />
                                                    <abbr title="Phone">Phone:</abbr> {{ get_setting('phone')->value ?? ''}}<br>
                                                    <abbr title="Email">Email: </abbr>{{ get_setting('email')->value ?? ''}}<br>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div class="invoice-numb">
                                            <h4 class="invoice-header-1 mb-10 mt-20">Invoice No:<span class="text-heading">{{ $order->invoice_no }}</span></h4>
                                            <strong class="text-mute">Invoice Data:</strong> {{ \Carbon\Carbon::parse($order->date)->isoFormat('MMM Do YYYY')}}<br />
                                            <strong class="text-mute">Payment Method:</strong> @if($order->payment_method == 'cod') Cash On Delivery @else {{ $order->payment_method }} @endif<br />
                                            <strong class="text-mute">Status:</strong> <span class="">{{ $order->delivery_status }}</span>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="invoice-top">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="invoice-number">
                                            <h4 class="invoice-title-1 mb-10">Bill To</h4>
                                            <p class="invoice-addr-1 text-capitalize">
                                                <strong>Name: {{ $order->name ?? '' }}</strong> <br />
                                                @php
                                                    if ($order->address) {
                                                        $pathao = new App\Http\Controllers\Frontend\PathaoController();
                                                        $cityResult = $pathao->getCities();
                                                        $cities = $cityResult->data->data;
                                                        $city = null;
                                                        foreach ($cities as $key => $cityItem) {
                                                            if ($cityItem->city_id == $order->division_id) {
                                                                $city = $cityItem;
                                                                break;
                                                            }
                                                        }
                                                        $pathao = new App\Http\Controllers\Frontend\PathaoController();
                                                        $zoneResult = $pathao->getZones($order->division_id);
                                                        $zones = $zoneResult->data->data;
                                                        $zone = null;
                                                        foreach ($zones as $key => $zoneItem) {
                                                            if ($zoneItem->zone_id == $order->district_id) {
                                                                $zone = $zoneItem;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                @endphp
                                                Address : {{ isset($order->address) ? $order->address . ',' : 'No address' }}
                                                    {{ isset($zone) && isset($zone->zone_name) ? ucwords($zone->zone_name) . ',' : '' }}
                                                    {{ isset($city) && isset($city->city_name) ? ucwords($city->city_name) : '' }}
                                                <br>
                                                <abbr >Phone:</abbr> {{ $order->phone ?? ''}}<br>
                                                <abbr >Email: </abbr>{{ $order->email ?? ''}}<br>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="invoice-center">
                                <div class="table-responsive">
                                    <table class="table table-striped invoice-table">
                                        <thead class="bg-active">
                                            <tr>
                                                <th>Item Item</th>
                                                <th class="text-center">Unit Price</th>
                                                <th class="text-center">Quantity</th>
                                                <th class="text-right">Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                                @foreach($order->order_details as $order_detail)
                                                <tr>
                                                    <td>
                                                        <div class="item-desc-1">
                                                            <span>{{$order_detail->product->name_en ?? ' '}}</span>
                                                            <span>
                                                                @if($order_detail->is_varient && count(json_decode($order_detail->variation))>0)
                                                                    @foreach(json_decode($order_detail->variation) as $varient)
                                                                        <span>{{ $varient->attribute_name }} : <span class="d-inline-block fw-normal ms-1">{{ $varient->attribute_value }}</span></span>
                                                                    @endforeach
                                                                @endif
                                                            </span>
                                                            <span>
                                                                @if ($order_detail->is_varient == 1)
                                                                    @php
                                                                        $jsonData = $order_detail->variation;
                                                                        $data = json_decode($jsonData, true);
                                                                        $attributeValues = [];
                                                                        foreach ($data as $item) {
                                                                            $attributeValues[] = $item['attribute_value'];
                                                                        }
                                                                        $concatenatedValue = implode('-', $attributeValues);
                                                                        $productStockId = App\Models\ProductStock::where('product_id', $order_detail->product_id)
                                                                            ->where('varient', $concatenatedValue)
                                                                            ->first();
                                                                    @endphp
                                                                    Code: {{ $productStockId->stock_code ?? ' ' }}
                                                                @else
                                                                    Code:
                                                                    {{  $order_detail->product->product_code ?? ' hy' }}
                                                                @endif
                                                            </span>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">{{$order_detail->
                                                    price ?? ''}}</td>
                                                    <td class="text-center">{{$order_detail->
                                                    qty ?? ''}}</td>
                                                    <td class="text-right">{{ ($order_detail->price * $order_detail->
                                                        qty) ?? ' ' }}</td>
                                                </tr>
                                                @endforeach
                                                 <tr>
                                                    <td colspan="3" class="text-end f-w-600">SubTotal</td>
                                                    <td class="text-right">{{ $order->sub_total ?? ' ' }}</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3" class="text-end f-w-600">Shipping cost:</td>
                                                    <td class="text-right">{{ $order->shipping_charge ?? '' }}</td>
                                                </tr>
                                                @if($order->coupon_discount > 0)
                                                <tr>
                                                    <td colspan="3" class="text-end f-w-600">Coupon Discount:</td>
                                                    <td class="text-right">{{ $order->coupon_discount ?? '0.00' }}</td>
                                                </tr>
                                                @endif
                                                <tr>
                                                    <td colspan="3" class="text-end f-w-600">Grand Total</td>
                                                    <td class="text-right f-w-600">{{ ($order->grand_total-$order->discount) ?? ' '}}</td>
                                                </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="invoice-bottom mb-5">
                                <div class="row">
                                    <div class="col-sm-6">
                                    </div>
                                    <div class="col-sm-6 col-offsite">
                                        <div class="text-end">
                                            <p class="mb-0 text-13">Thank you for your Order</p>
                                            <p><strong>{{ get_setting('business_name')->value ?? ' '}}</strong></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="invoice-btn-section clearfix d-print-none">
                            <a id="invoice_download_btn" class="btn btn-lg btn-custom btn-download hover-up"> <img src="{{ asset('frontend/assets/imgs/theme/icons/icon-download.svg') }}" alt="" /> Download </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Vendor JS-->
    <script src="{{asset('frontend/assets/js/vendor/modernizr-3.6.0.min.js ') }}"></script>
    <script src="{{asset('frontend/assets/js/vendor/jquery-3.6.0.min.js ') }}"></script>
    <!-- Invoice JS -->
    <script src="{{asset('frontend/assets/js/invoice/jspdf.min.js ') }}"></script>
    <script src="{{asset('frontend/assets/js/invoice/invoice.js ') }}"></script>
</body>
</html>
