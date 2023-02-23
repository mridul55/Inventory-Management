<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Purchase;
use App\Models\Product;
use App\Models\Supplier;
use App\Models\Unit;
use App\Models\Category;
use Auth;
use Illuminate\Support\Carbon;

class PurchaseController extends Controller
{
    public function PurchaseAll(){
        
        $alldata = Purchase::orderBy('date','desc')->orderBy('id','desc')->get();
        return view('backend.purchase.purchase_all',compact('alldata'));
    }

    public function PurchaseAdd(){
        $supplier = Supplier::all();
        $unit = Unit::all();
        $category = Category::all();
        $product = Product::all();

        return view('backend.purchase.purchase_add',compact('supplier','unit','category','product'));
    }

    public function PurchaseStore(Request $request){

        if($request->category_id == null){

            $notification = array(
                'message' => 'Sorry You donot select any item',
                'alert-type' => 'error'
            );
            return redirect()->back()->with($notification);
        } else {
            $count_category = count($request->category_id);
            for($i=0; $i< $count_category; $i++){
                $purchase = new Purchase();
                $purchase->date = date('Y-m-d', strtotime($request->date[$i]));
                $purchase->purchase_no = $request->purchase_no[$i];
                $purchase->supplier_id = $request->supplier_id[$i];
                $purchase->category_id = $request->category_id[$i];
                $purchase->product_id  = $request->product_id[$i];
                $purchase->buying_qty = $request->buying_qty[$i];
                $purchase->unit_price = $request->unit_price[$i];
                $purchase->buying_price = $request->buying_price[$i];
                $purchase->description = $request->description[$i];
                $purchase->created_by = Auth::user()->id;
                $purchase->status = '0';
                $purchase->save();
            }//end for 
        }//end else
            $notification = array(
                'message' => 'Data save succesfully',
                'alert-type' => 'success'
            );

            return redirect()->route('purchase.all')->with($notification);
    }

    public function PurchaseDelete($id){
        
        Purchase::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Purchase Item Deleted succesfully',
            'alert-type' => 'success'
        );

        return redirect()->route('purchase.all')->with($notification);

    }

    public function PurchasePending(){

        $alldata = Purchase::orderBy('date','desc')->orderBy('id','desc')->where('status','0')->get();
        return view('backend.purchase.purchase_pending',compact('alldata'));
    }
 
    public function PurchaseApprove($id){

        $purchase = Purchase::findOrFail($id);
        $product = Product::where('id',$purchase->product_id)->first();
        $purchase_qty = ((float)($purchase->buying_qty))+((float)($product->quantity));
        $product->quantity = $purchase_qty;
        if($product->save()){

            Purchase::findOrFail($id)->update([
                'status' => '1',
            ]);

            $notification = array(
                'message' => 'Status Approved',
                'alert-type' => 'success'
            );

            return redirect()->route('purchase.all')->with($notification);
        }
    }

}
