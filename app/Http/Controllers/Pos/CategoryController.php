<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use Auth;
use Illuminate\Support\Carbon;

class CategoryController extends Controller
{
    public function CategoryAll(){
        $categories = Category::latest()->get();
        return view('backend.category.category_all',compact('categories'));
    }
    public function CategoryAdd(){
        return view('backend.category.category_add');
    }

    public function CategoryStore(Request $request){
        Category::insert([

            'name' => $request->name,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);
        $notification = array(
            'message' => 'New Category Name Added',
            'alert-type' => 'info'
        );

        return redirect()->route('category.all')->with($notification);
    }

    public function CategoryEdit($id){

        $editcategory = Category::findOrFail($id);
        return view('backend.category.category_edit',compact('editcategory'));
    }

    public function CategoryUpdate(Request $request, $id){

        Category::findOrFail($id)->update([
            'name' => $request->name,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),

        ]);
        $notification = array(
            'message' => 'Category Name Updated',
            'alert-type' => 'info'
        );

        return redirect()->route('category.all')->with($notification);
    }

    public function CategoryDelete($id){
        Category::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Category Deleted',
            'alert-type' => 'info'
        );

        return redirect()->route('category.all')->with($notification);
    }
}
