@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body ">

                        <h4 class="card-title">Edit Supplier</h4>
                        <form action="{{ route('supplier.update', $supplieredit->id) }}" id="myForm" method="post">
                            @csrf

                            <div class="row mb-3">
                                <label for="example-text-input" class="col-sm-2 col-form-label">Supplier Name</label>
                                <div class="form-group col-sm-10">
                                    <input class="form-control" type="text"  required name="name" value="{{ $supplieredit->name }}">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="example-text-input" class="col-sm-2 col-form-label">Supplier Mobile Number</label>
                                <div class="form-group col-sm-10">
                                    <input class="form-control" type="text"  required name="mobile_no" value="{{ $supplieredit->mobile_no }}">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="example-text-input" class="col-sm-2 col-form-label">Supplier Email</label>
                                <div class="form-group col-sm-10">
                                    <input class="form-control" type="email"  required name="email" value="{{ $supplieredit->email }}">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="example-text-input" class="col-sm-2 col-form-label">Supplier Address</label>
                                <div class="form-group col-sm-10">
                                    <input class="form-control" type="text" name="address" value="{{ $supplieredit->address }}" >
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-10">
                                    <input type="submit" class="btn btn-info" value="Update Supplier Information">
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
                name:{
                   required : true,
                },
                mobile_no:{
                   required : true,
                },
                email:{
                   required : true,
                },
                address:{
                   required : true,
                },
            },
            messages : {
                name:{
                    required: 'Please Enter Suplier Name',
                },
                mobile_no:{
                    required: 'Please Enter Suplier Mobile Number',
                },
                email:{
                    required: 'Please Enter Suplier Email',
                },
                address:{
                    required: 'Please Enter Suplier Address',
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
