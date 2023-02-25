@extends('admin.admin_master')
@section('admin')
<!-- ======================Start Page-content======================================== -->
<div class="page-content">
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">Stock Report All</h4>

                </div>
            </div>
        </div>
        <!-- end page title -->

        <!-- start table  -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                       <a href="{{ route('stock.report.pdf') }}" target="_blank" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"> <i class="fa fa-print">Stock report Print</a> </i><br><br>
                        <h4 class="card-title">Stock All Data</h4>
                        <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Supplier Name</th>
                                <th>Unit Name</th>
                                <th>Category Name</th>
                                <th>Product Name</th>
                                <th>In Qty</th>
                                <th>Out Qty</th>
                                <th>Product Stock</th>
                           
                                
                            </tr>
                            </thead>

                            <tbody>
                            
                                @foreach($allData as $key => $item)

                                @php
                                  $buying_total = App\Models\Purchase::where('category_id',$item->category_id)->where('product_id',$item->id)->where('status','1')->sum('buying_qty'); 
                                  
                                  $selling_total = App\Models\InvoiceDetail::where('category_id',$item->category_id)->where('product_id',$item->id)->where('status','1')->sum('selling_qty');
                                  
                                @endphp
                            <tr>
                                <td> {{ $key+1 }} </td>
                                <td> {{ $item->supply->name }} </td>
                                <td> {{ $item->unit->name }} </td>
                                <td> {{ $item->ctg->name }} </td>
                                <td> {{ $item->name }} </td>
                                <td> <span class="btn btn-success"> {{ $buying_total }} </span></td>
                                <td><span class="btn btn-info"> {{ $selling_total }}  </span> </td>
                                <td><span class="btn btn-primary"> {{ $item->quantity }}  </span> </td>
                                <td>
       {{-- <a href="{{ route('product.edit', $item->id) }}" class="btn btn-info sm" title="Edit Data">  <i class="fas fa-edit"></i> </a>
       <a href="{{ route('product.delete',$item->id) }}" class="btn btn-danger sm" title="Delete Data" id="delete">  <i class="fas fa-trash-alt"></i> </a> --}}
    
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