<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Hash;

class SalonController extends Controller
{

    public function viewSalon(){
        $salon = User::all();
        return view('admin.view_salon',compact('salon'));
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


}
