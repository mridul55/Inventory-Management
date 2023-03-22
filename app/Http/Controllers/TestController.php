<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TestController extends Controller
{
    public function TestAll(){
        return view('backend.test.test_all');
    }
}
