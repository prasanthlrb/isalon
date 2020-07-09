<?php

namespace App\Http\Controllers\Vendor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\salon_push_notification;
use App\customer;
use App\city;
use App\area;
use Auth;

class NotificationController extends Controller
{
    public function saveNotification(Request $request){
        $request->validate([
            'title'=>'required',
        ]);

        $customer_id;
        foreach($request->customer_ids as $row){
            $customer_id[]=$row;
        }
        $customer_ids = collect($customer_id)->implode(',');

        $salon_push_notification = new salon_push_notification;
        $salon_push_notification->date = date('Y-m-d');
        $salon_push_notification->salon_id = Auth::user()->id;
        $salon_push_notification->title = $request->title;
        $salon_push_notification->description = $request->description;
        $salon_push_notification->customer_ids = $customer_ids;
        $salon_push_notification->save();
        return response()->json('successfully save'); 
    }

    public function updateNotification(Request $request){
        $request->validate([
            'title'=> 'required',
        ]);
        
        $customer_id;
        foreach($request->customer_ids as $row){
            $customer_id[]=$row;
        }
        $customer_ids = collect($customer_id)->implode(',');

        $salon_push_notification = salon_push_notification::find($request->id);
        $salon_push_notification->title = $request->title;
        $salon_push_notification->description = $request->description;
        $salon_push_notification->customer_ids = $customer_ids;
        $salon_push_notification->save();
        return response()->json('successfully update'); 
    }

    public function Notification(){
        $notification = salon_push_notification::all();
        $customer = customer::all();
        $area = area::all();
        return view('vendor.push_notification',compact('notification','customer','area'));
    }

    public function editNotification($id){
        $salon_push_notification = salon_push_notification::find($id);
        return response()->json($salon_push_notification); 
    }
    
    public function deleteNotification($id){
        $salon_push_notification = salon_push_notification::find($id);
        $salon_push_notification->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }


    public function getNotificationCustomer($id){ 
        $data  = salon_push_notification::find($id);

        $customer = customer::all();

      $arraydata=array();
      foreach(explode(',',$data->customer_ids) as $customer1){
        $arraydata[]=$customer1;
      }
      $output = '<option value="">ALL</option>';
        foreach ($customer as $value){
            if(in_array($value->id , $arraydata))
            {
                $output .='<option selected="true" value="'.$value->id.'">'.$value->email.'</option>'; 
            }
            else{
                $output .='<option value="'.$value->id.'">'.$value->email.'</option>'; 
            }
        }
      // $output .='</option>';
      
      echo $output;
      
    }

}
