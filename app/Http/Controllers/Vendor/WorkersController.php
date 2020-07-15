<?php

namespace App\Http\Controllers\Vendor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\salon_worker;
use App\service;
use Hash;

class WorkersController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function saveWorkers(Request $request){
        $request->validate([
            'name'=> 'required',
            'email'=> 'required',
        ]);

        $service_ids='';
        $service_id;
        foreach($request->service_ids as $row){
            $service_id[]=$row;
        }
        $service_ids = collect($service_id)->implode(',');

        $salon_worker = new salon_worker;
        $salon_worker->name = $request->name;
        $salon_worker->mobile = $request->mobile;
        $salon_worker->email = $request->email;
        $salon_worker->service_ids = $service_ids;
        $salon_worker->password = Hash::make($request->password);
        $salon_worker->save();
        return response()->json('successfully save'); 
    }
    public function updateWorkers(Request $request){
        $request->validate([
            'name'=> 'required',
            'email'=> 'required',
        ]);

        $service_ids='';
        $service_id;
        foreach($request->service_ids as $row){
            $service_id[]=$row;
        }
        $service_ids = collect($service_id)->implode(',');
        
        $salon_worker = salon_worker::find($request->id);
        $salon_worker->name = $request->name;
        $salon_worker->mobile = $request->mobile;
        $salon_worker->service_ids = $service_ids;
        $salon_worker->email = $request->email;
        if($request->password != ''){
        $salon_worker->password = Hash::make($request->password);
    	}
        $salon_worker->save();
        return response()->json('successfully update'); 
    }

    public function Workers(){
        $salon_worker = salon_worker::all();
        $service = service::all();
        return view('vendor.workers',compact('salon_worker','service'));
    }
    
    public function editWorkers($id){
        $salon_worker = salon_worker::find($id);
        return response()->json($salon_worker); 
    }
    
    public function deleteWorkers($id){
        $salon_worker = salon_worker::find($id);
        $salon_worker->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }


    public function getWorkersServices($id){ 
        $data  = salon_worker::find($id);

        $service = service::all();

      $arraydata=array();
      foreach(explode(',',$data->service_ids) as $service_id){
        $arraydata[]=$service_id;
      }
      $output = '';
        foreach ($service as $value){
            if(in_array($value->id , $arraydata))
            {
                $output .='<option selected="true" value="'.$value->id.'">'.$value->service_name_english.'</option>'; 
            }
            else{
                $output .='<option value="'.$value->id.'">'.$value->service_name_english.'</option>'; 
            }
        }
      
      echo $output;
      
    }


}
