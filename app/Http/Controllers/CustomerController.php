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

    public function viewCustomerDetails($_id){
         $customer_all = customer::all();
         $customer = customer::find($_id);
        return view('admin.customer_details',compact('customer','customer_all'));
    }
}
