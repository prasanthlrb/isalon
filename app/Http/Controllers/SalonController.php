<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\service;
use App\service_time;
use App\salon_service;
use Hash;

class SalonController extends Controller
{

    public function viewSalon($id){
        $salon_id = $id;
        $salon = User::find($id);
        $all_salon = User::all();
        $service = service::all();
        $service_time = service_time::where('salon_id',$id)->get();
        $salon_service = salon_service::where('salon_id',$id)->get();
        return view('admin.view_salon',compact('salon','all_salon','service_time','salon_service','service','salon_id'));
    }

    public function saveSalon(Request $request){
        $request->validate([
            'email'=> 'required|unique:users',
            'owner_name'=>'required',
            // 'password' => 'min:6|required_with:password_confirmation|same:password_confirmation',
            // 'password_confirmation' => 'min:6'
        ]);

        //image upload
        $fileName = null;
        if($request->file('trade_license')!=""){
            $image = $request->file('trade_license');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        }

        $salon = new User;
        $salon->busisness_type = $request->busisness_type;
        $salon->owner_name = $request->owner_name;
        $salon->email = $request->email;
        $salon->phone = $request->phone;
        $salon->password = Hash::make($request->password);
        $salon->salon_name = $request->salon_name;
        $salon->salon_id = $request->salon_id;
        $salon->emirates_id = $request->emirates_id;
        $salon->passport_number = $request->passport_number;
        $salon->member_license = $request->member_license;
        $salon->salon_commission = $request->salon_commission;
        $salon->trade_license = $fileName;
        $salon->save();

            $days = array('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
            for ($i = 0; $i < 7; $i++) {
                $service_time = new service_time;
                $service_time->salon_id = $salon->id;
                $service_time->days = $days[$i];
                $service_time->save();
            }

        return response()->json('successfully save'); 
    }

    public function updateSalon(Request $request){
        $request->validate([
            'email'=>'required|unique:users,email,'.$request->id,
            'owner_name'=> 'required',
            // 'password' => 'nullable|min:6|required_with:password_confirmation|same:password_confirmation',
            // 'password_confirmation' => 'nullable|min:6'
        ]);

        if($request->trade_license!=""){
            $old_image = "upload_files/".$request->trade_license1;
            if (file_exists($old_image)) {
                @unlink($old_image);
            }
            //image upload
            $fileName = null;
            if($request->file('trade_license')!=""){
            $image = $request->file('trade_license');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
            }
        }
        else
        {
            $fileName = $request->trade_license1;
        }

        $salon = User::find($request->id);
        $salon->busisness_type = $request->busisness_type;
        $salon->owner_name = $request->owner_name;
        $salon->email = $request->email;
        $salon->phone = $request->phone;
        if($request->password != ''){
        $salon->password = Hash::make($request->password);
    	}
        $salon->salon_name = $request->salon_name;
        $salon->salon_id = $request->salon_id;
        $salon->emirates_id = $request->emirates_id;
        $salon->passport_number = $request->passport_number;
        $salon->member_license = $request->member_license;
        $salon->salon_commission = $request->salon_commission;
        $salon->trade_license = $fileName;
        $salon->save();
        return response()->json('successfully update'); 
    }
    public function Salon(){
        $salon = User::all();
        return view('admin.salon',compact('salon'));
    }
    public function editSalon($id){
        $salon = User::find($id);
        return response()->json($salon); 
    }
    
    public function deleteSalon($id){
        $salon = User::find($id);
        $old_image = "upload_files/".$salon->trade_license;
        if (file_exists($old_image)) {
            @unlink($old_image);
        }
        $salon->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }



    public function saveAddService(Request $request){
        $salon_service = new salon_service;
        $salon_service->salon_id = $request->salon_id;
        $salon_service->service_id = $request->service_id;
        $salon_service->price = $request->price;
        $salon_service->duration = $request->duration;
        $salon_service->save();

        return response()->json('successfully save'); 
    }
    public function updateAddService(Request $request){
        $salon_service = salon_service::find($request->id);
        $salon_service->salon_id = $request->salon_id;
        $salon_service->service_id = $request->service_id;
        $salon_service->price = $request->price;
        $salon_service->duration = $request->duration;
        $salon_service->save();
        return response()->json('successfully update'); 
    }

    public function editAddService($id){
        $salon_service = salon_service::find($id);
        return response()->json($salon_service); 
    }
    
    public function deleteAddService($id){
        $salon_service = salon_service::find($id);
        $salon_service->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }

    public function updateTime(Request $request){

        for ($x=0; $x<count($_POST['timing_id']); $x++) 
        {
            $service_time = service_time::find($_POST['timing_id'][$x]);
            $service_time->open_time = $_POST['open_time'][$x];
            $service_time->close_time = $_POST['close_time'][$x];
            $service_time->status = $_POST['status'][$x];
            $service_time->save();
        }

        return response()->json('Successfully Update'); 
    }


}
