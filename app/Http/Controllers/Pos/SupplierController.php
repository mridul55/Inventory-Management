<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Supplier;
use Auth;
use Illuminate\Support\Carbon;

class SupplierController extends Controller
{
    public function SupplierAll(){

        $suppliers = Supplier::latest()->get();
        return view('backend.supplier.supplier_all',compact('suppliers'));


    }

    public function SupplierAdd(){

        return view('backend.supplier.supplier_add');
    }

    public function SupplierStore(Request $request){

        Supplier::insert([

            'name' => $request->name,
            'mobile_no' => $request->mobile_no,
            'email' => $request->email,
            'address' => $request->address,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);
        $notification = array(
            'message' => 'New Supplier Successfully Added ',
            'alert-type' => 'info'
        );

        return redirect()->route('supplier.all')->with($notification);
    }

    public function SupplierEdit($id){
        
        $supplieredit = Supplier::findOrFail($id);
        return view('backend.supplier.supplier_edit',compact('supplieredit'));

    }

    public function SupplierUpdate(Request $request, $id){

        Supplier::findOrFail($id)->update([
            'name' => $request->name,
            'mobile_no' => $request->mobile_no,
            'email' => $request->email,
            'address' => $request->address,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),

        ]);
        $notification = array(
            'message' => 'Supplier Information Successfully Updated',
            'alert-type' => 'info'
        );

        return redirect()->route('supplier.all')->with($notification);
    }

    public function SupplierDelete($id){
        Supplier::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Supplier Successfully Deleted',
            'alert-type' => 'info'
        );

        return redirect()->route('supplier.all')->with($notification);

    }

    
}
