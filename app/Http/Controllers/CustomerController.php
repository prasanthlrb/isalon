<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\customer;

class CustomerController extends Controller
{
    public function Customer(){
        $customer = customer::all();
        return view('admin.customer',compact('customer'));
    }
}
