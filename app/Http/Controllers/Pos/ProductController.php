<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Unit;
use App\Models\Supplier;
use App\Models\Category;
use Auth;
use Illuminate\Support\Carbon;

class ProductController extends Controller
{
    public function ProductAll(){

        $products = Product::latest()->get();
        return view('backend.product.product_all',compact('products'));
    }

    public function ProductAdd(){
        
        $supplier = Supplier::all();
        $unit = Unit::all();
        $category = Category::all();
        return view('backend.product.product_add',compact('supplier','unit','category'));
    }

    public function ProductStore(Request $request){
           
        Product::insert([
            'name' => $request->name,
            'supplier_id' => $request->supplier_id,
            'unit_id' => $request->unit_id,
            'category_id' => $request->category_id,
            'quantity' => '0',
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(), 
        ]);
        $notification = array(
            'message' => 'Product Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('product.all')->with($notification);
    }

    public function ProductEdit($id){
       
        $productedit = Product::findOrFail($id);
        $supplier = Supplier::all();
        $unit = Unit::all();
        $category = Category::all();
        return view('backend.product.product_edit',compact('productedit','supplier','unit','category'));
    }

    public function ProductUpdate(Request $request, $id){
      
        Product::findOrFail($id)->update([
            'name' => $request->name,
            'supplier_id' => $request->supplier_id,
            'unit_id' => $request->unit_id,
            'category_id' => $request->category_id,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(), 
        ]);
        $notification = array(
            'message' => 'Product Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('product.all')->with($notification);
    }

    public function ProductDelete($id){

        Product::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Product Successfully Deleted',
            'alert-type' => 'success'
        );

        return redirect()->route('product.all')->with($notification);

    }
}
