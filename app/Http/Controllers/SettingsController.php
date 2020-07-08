<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\slider;
use App\banner;

class SettingsController extends Controller
{
    public function saveSlider(Request $request){
        $request->validate([
            'title'=>'required',
        ]);
        //image upload
        $fileName = null;
        if($request->file('image')!=""){
            $image = $request->file('image');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        }  

        $slider = new slider;
        $slider->title = $request->title;
        $slider->description = $request->description;
        $slider->image = $fileName;
        $slider->save();
        return response()->json('successfully save'); 
    }
    public function updateSlider(Request $request){
        $request->validate([
            'title'=> 'required',
        ]);
        
        $slider = slider::find($request->id);
        $slider->title = $request->title;
        $slider->description = $request->description;
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
        $slider->image = $fileName;
        }

        $slider->save();
        return response()->json('successfully update'); 
    }

    public function Slider(){
        $slider = slider::all();
        return view('admin.slider',compact('slider'));
    }
    public function editSlider($id){
        $slider = slider::find($id);
        return response()->json($slider); 
    }
    
    public function deleteSlider($id){
        $slider = slider::find($id);

        $old_image = "upload_files/".$slider->image;
        if (file_exists($old_image)) {
            @unlink($old_image);
        }
        $slider->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }

    public function saveBanner(Request $request){
        $request->validate([
            'title'=>'required',
        ]);
        //image upload
        $fileName = null;
        if($request->file('image')!=""){
            $image = $request->file('image');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        }  

        $banner = new banner;
        $banner->title = $request->title;
        $banner->description = $request->description;
        $banner->image = $fileName;
        $banner->save();
        return response()->json('successfully save'); 
    }
    public function updateBanner(Request $request){
        $request->validate([
            'title'=> 'required',
        ]);
        
        $banner = banner::find($request->id);
        $banner->title = $request->title;
        $banner->description = $request->description;
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
        $banner->image = $fileName;
        }

        $banner->save();
        return response()->json('successfully update'); 
    }

    public function Banner(){
        $banner = banner::all();
        return view('admin.banner',compact('banner'));
    }
    public function editBanner($id){
        $banner = banner::find($id);
        return response()->json($banner); 
    }
    
    public function deleteBanner($id){
        $banner = banner::find($id);

        $old_image = "upload_files/".$banner->image;
        if (file_exists($old_image)) {
            @unlink($old_image);
        }
        $banner->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }


}
