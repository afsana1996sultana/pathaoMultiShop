@extends('admin.admin_master')
@section('admin')
<section class="content-main">
    <div class="content-header">
        <h2 class="content-title">Online User List <span class="badge rounded-pill alert-success"> {{ count($customers) }} </span></h2>
        <div>
            <a href="{{ route('online.user.print') }}" class="btn btn-primary"><i class="material-icons md-print"></i></a>
        </div>
    </div>
    </div>
    <div class="card mb-4">
        <div class="card-body">
            <div class="table-responsive-sm">
               <table id="example" class="table table-bordered table-striped" width="100%">
                    <thead>
                        <tr>
                            <th scope="col">Sl</th>
                            <th scope="col">Name</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Address</th>
                            <th scope="col">Total</th>
                            <th scope="col">Status</th>
                            <th scope="col">Type</th>
                            <th scope="col">User Register</th>
                            <th scope="col" class="text-end">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($customers as $key => $customer)
                        <tr>
                            <td> {{ $key+1}} </td>
                            <td> {{ $customer->name ?? 'No Name' }} </td>
                            <td> {{ $customer->phone ?? 'No Phone Number' }} </td>
                            <td>
                                @php
                                    $address = App\Models\Address::where('user_id', $customer->id)->first();
                                @endphp

                                {{ isset($customer->address) ? $customer->address . ',' : 'No address' }}
                            </td>
                            @php
                                $order_total = App\Models\Order::where('user_id', $customer->id)->sum('grand_total');
                                $order_paid = App\Models\Order::where('user_id', $customer->id)->sum('paid_amount');
                                $payment_paid = App\Models\OrderPayment::where('user_id', $customer->id)->sum('paid');
                                $paid_total = ($order_paid+$payment_paid);
                                if($order_total && $order_total > $paid_total){
                                    $due_total = ($order_total-$paid_total);
                                }else{

                                $due_total = 0;
                                }
                            @endphp
                            <td> {{ $order_total }} </td>
                            <td>
                                @if($customer->status == 1)
                                    <a href="{{ route('customer.status',$customer->id) }}">
                                    <span class="badge rounded-pill alert-success"><i class="material-icons md-check"></i></span>
                                    </a>
                                @else
                                    <a href="{{ route('customer.status',$customer->id) }}" > <span class="badge rounded-pill alert-danger"><i class="material-icons md-close"></i></span></a>
                                @endif
                            </td>
                            <td>
                                @if($order_total > $member ||$order_total == $member)
                                     <button type="button" class="badge rounded-pill bg-info" style="border: none;">Membership</button>
                                @else
                                <button type="button" class="badge rounded-pill bg-secondary" style="border: none;">Normal</button>
                                @endif
                            </td>
                            <td>{{$customer->created_at->format('d-m-Y') }}</td>
                            <td class="text-end">
                                <a href="{{ route('online.User.details',$customer->id) }}" class="btn btn-md rounded font-sm bg-dark">Detail</a>
                                <a class="btn btn-md rounded font-sm bg-danger" href="{{ route('customer.delete',$customer->id) }}" id="delete">Delete</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <!-- table-responsive //end -->
        </div>
        <!-- card-body end// -->
    </div>
</section>
@endsection
