<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\salon_package;
use App\salon_package_item;


class PackageController extends Controller
{

    public function saveSalonPackage(Request $request){
        $request->validate([
            'package_name'=>'required',
            'price'=>'required',
        ]);

        $salon_package = new salon_package;
        $salon_package->package_name = $request->package_name;
        $salon_package->price = $request->price;
        $salon_package->validity = $request->validity;
        $salon_package->validity_count = $request->validity_count;
        $salon_package->next_renewal_discount = $request->next_renewal_discount;
        $salon_package->package_renewal_remember_days = $request->package_renewal_remember_days;
        $salon_package->save();

        for ($x=0; $x<count($_POST['package_item']); $x++) 
        {
            $salon_package_item = new salon_package_item;
            $salon_package_item->package_id = $salon_package->id;
            $salon_package_item->package_item = $_POST['package_item'][$x];   
            $salon_package_item->save();
        }

        return response()->json('successfully save'); 
    }
    public function updateSalonPackage(Request $request){
        $request->validate([
            'package_name'=>'required',
            'price'=>'required',
        ]);
        
        $salon_package = salon_package::find($request->id);
        $salon_package->package_name = $request->package_name;
        $salon_package->price = $request->price;
        $salon_package->validity = $request->validity;
        $salon_package->validity_count = $request->validity_count;
        $salon_package->next_renewal_discount = $request->next_renewal_discount;
        $salon_package->package_renewal_remember_days = $request->package_renewal_remember_days;
        $salon_package->save();

        $salon_package_item = salon_package_item::where('package_id',$request->id)->delete();

        for ($x=0; $x<count($_POST['package_item']); $x++) 
        {
            $salon_package_item = new salon_package_item;
            $salon_package_item->package_id = $salon_package->id;
            $salon_package_item->package_item = $_POST['package_item'][$x];   
            $salon_package_item->save();
        }
        return response()->json('successfully update'); 
    }

    public function SalonPackage(){
        $salon_package = salon_package::all();
        return view('admin.salon_package',compact('salon_package'));
    }
    public function editSalonPackage($id){
        $salon_package = salon_package::find($id);
        return response()->json($salon_package); 
    }
    
    public function deleteSalonPackage($id){
        $salon_package = salon_package::find($id);
        $salon_package->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }


    public function getSalonPackageItem($id){ 
    
    $data = salon_package_item::where('package_id',$id)->get();

$count = 1;
$output ='';
foreach ($data as $key => $value) {
    
$output .= '<tr style="padding:20px;" value="'.$count.'" class="all_row" id="row'.$count.'">
    <td style="width:80%">
        <input class="form-control" type="text" name="package_item[]" value="'.$value->package_item.'" id="package_item'.$count.'" autocomplete="off"  />
    </td>
    <td style="width:20%" align="center">
        <button onclick="removeProductRow('.$count.')" id="removeProductRowBtn'.$count.'" class="btn btn-icon btn-danger rounded-circle" type="button" data-repeater-delete><i class="bx bx-x"></i></button>
    </td>
</tr>';
$count++;
}
      
      echo $output;
      
    }




}
