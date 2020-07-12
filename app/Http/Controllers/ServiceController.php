<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\service;
use App\category;
use App\new_service;

class ServiceController extends Controller
{

    public function saveService(Request $request){
        $request->validate([
            'service_name_english'=>'required',
        ]);
        //image upload
        $fileName = null;
        if($request->file('image')!=""){
            $image = $request->file('image');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        }  

        $service = new service;
        $service->service_name_english = $request->service_name_english;
        $service->service_name_arabic = $request->service_name_arabic;
        $service->category_id = $request->category_id;
        $service->image = $fileName;
        $service->save();
        return response()->json('successfully save'); 
    }
    public function updateService(Request $request){
        $request->validate([
            'service_name_english'=> 'required',
        ]);
        
        $service = service::find($request->id);
        $service->service_name_english = $request->service_name_english;
        $service->service_name_arabic = $request->service_name_arabic;
        $service->category_id = $request->category_id;

        if($request->image!=""){
            $old_image = "upload_files/".$request->image1;
            if (file_exists($old_image)) {
                @unlink($old_image);
            }
            //image upload
            $fileName = null;
            if($request->file('image')!=""){
            $image = $request->file('image');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
            }
        $service->image = $fileName;
        }

        $service->save();
        return response()->json('successfully update'); 
    }

    public function service(){
        $service = service::all();
        $category = category::all();
        return view('admin.service',compact('service','category'));
    }
    public function editService($id){
        $service = service::find($id);
        return response()->json($service); 
    }
    
    public function deleteService($id){
        $service = service::find($id);
        $old_image = "upload_files/".$service->image;
        if (file_exists($old_image)) {
            @unlink($old_image);
        }
        $service->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }

    public function newService(){
        $service = new_service::all();
        return view('admin.new_service',compact('service'));
    }

    public function updateNewService($id,$status){
        $new_service = new_service::find($id);
        $new_service->status = $status;
        $new_service->save();
        return response()->json(['message'=>'Successfully Update'],200); 
    }





}
