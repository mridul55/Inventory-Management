@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body ">

                        <h4 class="card-title">Add Product</h4>
                        <form action="{{ route('product.store') }}" id="myForm" method="post" enctype="multipart/form-data">
                            @csrf

                            <div class="row mb-3">
                                <label for="example-text-input" class="col-sm-2 col-form-label">Product Name</label>
                                <div class="form-group col-sm-10">
                                    <input class="form-control" type="text"  required name="name" >
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">Supplier Name</label>
                                <div class="form-group col-sm-10">
                                    <select name="supplier_id" class="form-select" aria-label="Default select example">
                                        <option selected="">Select Your Supplier</option>
                                        @foreach ( $supplier as $supp )
                                        <option value="{{ $supp->id }}">{{ $supp->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">Unit Name</label>
                                <div class="form-group col-sm-10">
                                    <select name="unit_id" class="form-select" aria-label="Default select example">
                                        <option selected="">Select Unit</option>
                                        @foreach ( $unit as $unitname )
                                        <option value="{{ $unitname->id }}">{{ $unitname->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">Category Name</label>
                                <div class="form-group col-sm-10">
                                    <select name="category_id" class="form-select" aria-label="Default select example">
                                        <option selected="">Select Category</option>
                                        @foreach ( $category as $cat )
                                        <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-10">
                                    <input type="submit" class="btn btn-info" value="Add Product">
                                </div>
                            </div>
                        </form>

                        <!-- end row -->

                    </div>
                </div>
            </div> <!-- end col -->
        </div>

    </div>
</div>

<script type="text/javascript">

    $(document).ready(function (){
        $('#myForm').validate({
            rules:{
                supplier_id:{
                   required : true,
                },
                unit_id:{
                   required : true,
                },
                category_id:{
                   required : true,
                },
                name:{
                   required : true,
                },
            },
            messages : {
                supplier_id:{
                    required: 'Please Select Suplier Name',
                },
                unit_id:{
                    required: 'Please Select Unit Name',
                },
                category_id:{
                    required: 'Please Select Category Name',
                },
                name:{
                    required: 'Please Enter Product',
                },
            },
            errorElement : 'span',
            errorPlacement : function(error,element){
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight : function(element, errorClass, validClass){
                $(element).addClass('is-invalid');
            },
            unhighlight : function(element, errorClass, validClass){
                $(element).removeClass('is-invalid');
            },

        })
    })



</script>



@endsection
