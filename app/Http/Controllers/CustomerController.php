<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\customer;
use App\order;
use App\service;

class CustomerController extends Controller
{
    public function Customer(){
        $customer = customer::all();
        return view('admin.customer',compact('customer'));
    }

    public function viewCustomerDetails($id){
         $customer_all = customer::all();
         $order = order::all();
         $service = service::all();
         $customer = customer::find($id);
        return view('admin.customer_details',compact('customer','customer_all','order','service'));
    }


}
