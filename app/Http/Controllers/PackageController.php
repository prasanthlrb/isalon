<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\package;
use App\addpackage;


class PackageController extends Controller
{

    public function savePackage(Request $request){
        $request->validate([
            'package_name'=>'required',
            'package_status'=>'required',
        ]);

        $package = new package;
        $package->package_name = $request->package_name;
        $package->package_status = $request->package_status;
        $package->description = $request->description;
        $package->save();
        return response()->json('successfully save'); 
    }
    public function updatePackage(Request $request){
        $request->validate([
            'package_name'=>'required',
            'package_status'=>'required',
        ]);
        
        $package = package::find($request->id);
        $package->package_name = $request->package_name;
        $package->package_status = $request->package_status;
        $package->description = $request->description;
        $package->save();
        return response()->json('successfully update'); 
    }

    public function Package(){
        $package = package::all();
        return view('admin.package',compact('package'));
    }
    public function editPackage($id){
        $package = package::find($id);
        return response()->json($package); 
    }
    
    public function deletePackage($id){
        $package = package::find($id);
        $package->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }




    public function saveSubPackage(Request $request){
        $request->validate([
            'package_name'=>'required',
        ]);  

        $addpackage = new addpackage;
        $addpackage->package_name = $request->package_name;
        $addpackage->description = $request->description;
        $addpackage->parent_id = $request->parent_id;
        $addpackage->save();
        return response()->json('successfully save'); 
    }

    public function updateSubPackage(Request $request){
        $request->validate([
            'package_name'=> 'required',
        ]);
        
        $addpackage = addpackage::find($request->id);
        $addpackage->package_name = $request->package_name;
        $addpackage->description = $request->description;
        $addpackage->parent_id = $request->parent_id;
        $addpackage->save();
        return response()->json('successfully update'); 
    }

    public function SubPackage($id){
        $package = addpackage::where('parent_id',$id)->get();
        return view('admin.sub_package',compact('package','id'));
    }
    public function editSubPackage($id){
        $addpackage = addpackage::find($id);
        return response()->json($addpackage); 
    }
    
    public function deleteSubPackage($id){
        $addpackage = addpackage::find($id);
        $addpackage->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }




}
