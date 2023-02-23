@extends('admin.admin_master')
@section('admin')
<!-- ======================Start Page-content======================================== -->
<div class="page-content">
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">Print Invoice All</h4>

                </div>
            </div>
        </div>
        <!-- end page title -->

        <!-- start table  -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                       <a href="{{ route('invoice.add') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;">Add Invoice</a> <br><br>
                        <h4 class="card-title">Invoice Print Data</h4>
                        <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Customer Name</th>
                                <th>Invoice No</th>
                                <th>Date</th>
                                <th>Description</th>
                                <th>Amount</th>
                                <th>Action</th>
                                
                            </tr>
                            </thead>

                            <tbody>
                            
                                @foreach($alldata as $key => $item)1
                            <tr>
                                <td> {{ $key+1 }} </td>
                                <td> {{ $item->payment->customer->name }} </td>
                                <td> {{ $item->invoice_no }} </td>
                                <td> {{ date('d-m-Y',strtotime($item->date))  }} </td>
                                <td> {{ $item->description }} </td>
                               <td>$ {{ $item->payment->total_amount }}</td>
    
                                <td>
                                <a href="{{ route('print.invoice',$item->id) }}" class="btn btn-dark sm" title="Print Invoice" >  <i class="fas fa-print"></i> </a>
                                </td>
                               
                            </tr>
                            @endforeach
                            
                            </tbody>
                        </table>

                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row or end table-->

    </div> <!-- container-fluid -->
</div>
<!-- End Page-content -->
@endsection