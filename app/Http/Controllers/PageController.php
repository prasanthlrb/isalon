<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\area;
use App\User;
use Hash;

class PageController extends Controller
{

	public function SalonRegister(){
		$city = area::where('parent_id',0)->get();
        $area = area::where('parent_id','!=',0)->get();
        return view('pages.salon_register',compact('city','area'));
	}
    public function saveSalonRegister(Request $request){
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
        $salon->city = $request->city;
        $salon->area = $request->area;
        $salon->address = $request->address;
        $salon->trade_license = $fileName;
        $salon->save();
        return response()->json('successfully save'); 
    }


}
