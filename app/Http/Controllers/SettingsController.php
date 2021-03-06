<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\slider;
use App\banner;
use App\settings;
use App\terms_and_condition;

class SettingsController extends Controller
{
    public function saveSlider(Request $request){
    
       $fileName = null;
       if($request->file('slider_image')!=""){
       $image = $request->file('slider_image');
       $fileName = rand() . '.' . $image->getClientOriginalExtension();
       $image->move(public_path('upload_files/'), $fileName);
       }
       $slider = new slider;
       $slider->title = $request->title;
       $slider->sub_title = $request->sub_title;
       $slider->desc = $request->desc;
       $slider->button_text = $request->button_text;
       $slider->button_url = $request->button_url;
       $slider->button_color = $request->button_color;
       $slider->button_y = $request->button_y;
       $slider->slider_position = $request->slider_position;

       $slider->slider_image = $fileName;
       $slider->title_color = $request->title_color;
       $slider->title_y = $request->title_y;
       $slider->sub_color = $request->sub_color;
       $slider->sub_y = $request->sub_y;
       $slider->desc_color = $request->desc_color;
       $slider->desc_y = $request->desc_y;
       $position_count = count(slider::all());
        if(empty($position_count)){
            $position_count = 0;
        }
        $slider->position = $position_count;
        $slider->save();

        return response()->json('successfully save'); 
    }
    public function updateSlider(Request $request){
        $slider = slider::find($request->id);
        $slider->title = $request->title;
        $slider->sub_title = $request->sub_title;
        $slider->desc = $request->desc;
        $slider->button_text = $request->button_text;
        $slider->button_url = $request->button_url;
        $slider->button_color = $request->button_color;
        $slider->button_y = $request->button_y;
        $slider->slider_position = $request->slider_position;
        $slider->title_color = $request->title_color;
        $slider->title_y = $request->title_y;
        $slider->sub_color = $request->sub_color;
        $slider->sub_y = $request->sub_y;
        $slider->desc_color = $request->desc_color;
        $slider->desc_y = $request->desc_y;
        $fileName = null;
       if($request->file('slider_image')!=""){
        $old_image = "upload_files/".$request->slider_image;
        if (file_exists($old_image)) {
            @unlink($old_image);
        }
       $image = $request->file('slider_image');
       $fileName = rand() . '.' . $image->getClientOriginalExtension();
       $image->move(public_path('upload_files/'), $fileName);
       $slider->slider_image =  $fileName;
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
        $fileName = null;
       if($request->file('banner_image')!=""){
       $image = $request->file('banner_image');
       $fileName = rand() . '.' . $image->getClientOriginalExtension();
       $image->move(public_path('upload_files/'), $fileName);
       }
       $banner = new banner;
       $banner->title = $request->title;
       $banner->sub_title = $request->sub_title;
       $banner->desc = $request->desc;
       $banner->button_text = $request->button_text;
       $banner->button_url = $request->button_url;
       $banner->button_color = $request->button_color;
       $banner->button_y = $request->button_y;
       $banner->banner_position = $request->banner_position;

       $banner->banner_image = $fileName;
       $banner->title_color = $request->title_color;
       $banner->title_y = $request->title_y;
       $banner->sub_color = $request->sub_color;
       $banner->sub_y = $request->sub_y;
       $banner->desc_color = $request->desc_color;
       $banner->desc_y = $request->desc_y;
       $position_count = count(banner::all());
        if(empty($position_count)){
            $position_count = 0;
        }
        $banner->position = $position_count;
        $banner->save();
        return response()->json('successfully save'); 
    }
    public function updateBanner(Request $request){
        $banner = banner::find($request->id);
        $banner->title = $request->title;
        $banner->sub_title = $request->sub_title;
        $banner->desc = $request->desc;
        $banner->button_text = $request->button_text;
        $banner->button_url = $request->button_url;
        $banner->button_color = $request->button_color;
        $banner->button_y = $request->button_y;
        $banner->banner_position = $request->banner_position;
        $banner->title_color = $request->title_color;
        $banner->title_y = $request->title_y;
        $banner->sub_color = $request->sub_color;
        $banner->sub_y = $request->sub_y;
        $banner->desc_color = $request->desc_color;
        $banner->desc_y = $request->desc_y;
        $fileName = null;
       if($request->file('banner_image')!=""){
        $old_image = "upload_files/".$request->banner_image;
        if (file_exists($old_image)) {
            @unlink($old_image);
        }
       $image = $request->file('banner_image');
       $fileName = rand() . '.' . $image->getClientOriginalExtension();
       $image->move(public_path('upload_files/'), $fileName);
       $banner->banner_image =  $fileName;
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

    public function applicationSettings(){
        $data = settings::first();
        return view('admin.application_settings',compact('data')); 
    }


    public function updateApplicationSettings(Request $request){        
        $settings = settings::find($request->id);
        $settings->name = $request->name;
        $settings->email = $request->email;
        $settings->phone = $request->phone;
        $settings->address = $request->address;
        $settings->city = $request->city;
        $settings->area = $request->area;
        $settings->map_iframe = $request->map_iframe;
        $settings->latitude = $request->latitude;
        $settings->longitude = $request->longitude;
        if($request->license!=""){
            $old_image = "upload_files/".$request->license1;
            if (file_exists($old_image)) {
                @unlink($old_image);
            }
            //image upload
            $fileName = null;
            if($request->file('license')!=""){
            $image = $request->file('license');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
            }
        $settings->license = $fileName;
        }

        if($request->logo!=""){
            $old_image = "upload_files/".$request->logo1;
            if (file_exists($old_image)) {
                @unlink($old_image);
            }
            //image upload
            $fileName = null;
            if($request->file('logo')!=""){
            $image = $request->file('logo');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
            }
        $settings->logo = $fileName;
        }

        $settings->save();

        return back(); 
    }

    public function termsAndCondition(){
        $data = terms_and_condition::first();
        return view('admin.terms_and_condition',compact('data')); 
    }


    public function updateTermsAndCondition(Request $request){        
        $data = terms_and_condition::find($request->id);
        $data->terms_and_condition = $request->terms_and_condition;
        $data->save();

        return back(); 
    }


}
