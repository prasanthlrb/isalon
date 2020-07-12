<?php

namespace App\Http\Controllers\Vendor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\terms_and_condition;
use Auth;

class HomeController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function dashboard(){
		return view('vendor.dashboard');
    }
}
