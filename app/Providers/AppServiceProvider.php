<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use DB;
use Auth;
use App\salon_role;
use App\User;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        view()->composer('vendor.menu', function($view) {
            $user = User::find(Auth::user()->id);
            $role = salon_role::where('id',$user->role_id)->where('salon_id',$user->user_id)->first();
           
            $view->with(compact('role','user'));
        });
    }
}
