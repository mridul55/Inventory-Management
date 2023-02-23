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

class DefaultController extends Controller
{
    public function GetCategory(Request $request){

        $supplier_id = $request->supplier_id;
        //dd($supplier_id);
        $allcategory  = Product::with(['ctg'])->select('category_id')->where('supplier_id',$supplier_id)->groupBy('category_id')->get();
        //dd($allcategory);
        return response()->json($allcategory);
    }
    public function GetProduct(Request $request){

        $category_id = $request->cat_id;
        
        $allproduct  = Product::where('category_id',$category_id)->get();
        
        return response()->json($allproduct);
    }

    public function GetProductStock(Request $request){
        
        $product_id = $request->product_id;

        //$stock = Product::where('id',$product_id)->first()->quantity;
        $stock = Product::find($product_id)->quantity;
        
         return response()->json($stock);

    }
}
