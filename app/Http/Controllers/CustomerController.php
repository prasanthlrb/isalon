<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\customer;
use App\order;
use App\service;
use Hash;


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


    public function saveCustomer(Request $request){
        $request->validate([
            'name'=>'required',
            'email'=>'required',
        ]);

        $customer = new customer;
        $customer->date = date('Y-m-d');
        $customer->name = $request->name;
        $customer->phone = $request->phone;
        $customer->email = $request->email;
        $customer->password = Hash::make($request->password);
        $customer->save();

        return response()->json('successfully save'); 
    }
    public function updateCustomer(Request $request){
        $request->validate([
            'name'=>'required',
            'email'=>'required',
        ]);
        
        $customer = customer::find($request->id);
        $customer->name = $request->name;
        $customer->phone = $request->phone;
        $customer->email = $request->email;
        if($request->password != ''){
        $customer->password = Hash::make($request->password);
        }
        $customer->save();

        return response()->json('successfully update'); 
    }

    public function editCustomer($id){
        $customer = customer::find($id);
        return response()->json($customer); 
    }
    
    public function deleteCustomer($id){
        $customer = customer::find($id);
        $customer->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }


}
