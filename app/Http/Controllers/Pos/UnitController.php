<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Unit;
use Auth;
use Illuminate\Support\Carbon;

class UnitController extends Controller
{
    public function UnitAll(){
        $units = Unit::latest()->get();
        return view('backend.unit.unit_all',compact('units'));
    }

    public function UnitAdd(){

        return view('backend.unit.unit_add');
    }

    public function UnitStore(Request $request){
        Unit::insert([

            'name' => $request->name,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);
        $notification = array(
            'message' => 'New Unit Added ',
            'alert-type' => 'info'
        );

        return redirect()->route('unit.all')->with($notification);
    }

    public function UnitEdit($id){
        $unitedit = Unit::findOrFail($id);
        return view('backend.unit.unit_edit',compact('unitedit'));
    }

    public function UnitUpdate(Request $request, $id){

        Unit::findOrFail($id)->update([
            'name' => $request->name,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),

        ]);
        $notification = array(
            'message' => 'Unit Name Change',
            'alert-type' => 'info'
        );

        return redirect()->route('unit.all')->with($notification);
    }

    public function UnitDelete($id){
        Unit::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Unit Deleted',
            'alert-type' => 'info'
        );

        return redirect()->route('unit.all')->with($notification);
    }
}
