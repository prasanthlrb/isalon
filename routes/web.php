<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


//Clear route cache:
 Route::get('/route-cache', function() {
     $exitCode = Artisan::call('route:cache');
     return 'Routes cache cleared';
 });

 //Clear config cache:
 Route::get('/config-cache', function() {
     $exitCode = Artisan::call('config:cache');
     return 'Config cache cleared';
 }); 

// Clear application cache:
 Route::get('/clear-cache', function() {
     $exitCode = Artisan::call('cache:clear');
     return 'Application cache cleared';
 });

 // Clear view cache:
 Route::get('/view-clear', function() {
     $exitCode = Artisan::call('view:clear');
     return 'View cache cleared';
 });


Route::get('/', 'PageController@SalonRegister');
Route::get('/salon-register', 'PageController@SalonRegister');
Route::POST('/save-salon-register', 'PageController@saveSalonRegister');

Route::group(['prefix' => 'admin'],function(){

	Route::get('/login', 'Admin\LoginController@showLoginForm')->name('admin.login');
    Route::post('/login', 'Admin\LoginController@login')->name('admin.login.submit');
	Route::get('/logout', 'Admin\LoginController@logout')->name('admin.logout');
	  // Password reset routes
    Route::post('/password/email', 'Admin\ForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
    Route::get('/password/reset', 'Admin\ForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
    Route::post('/password/reset', 'Admin\ResetPasswordController@reset');
    Route::get('/password/reset/{token}', 'Admin\ResetPasswordController@showResetForm')->name('admin.password.reset');


	Route::get('/dashboard', 'AdminController@dashboard')->name('admin.dashboard');

	//salon
	Route::POST('/save-salon', 'SalonController@saveSalon');
	Route::POST('/update-salon', 'SalonController@updateSalon');
	Route::get('/salon/{id}', 'SalonController@editSalon');
	Route::get('/salon', 'SalonController@Salon');
	Route::get('/salon-delete/{id}', 'SalonController@deleteSalon');

	Route::get('/view-salon/{id}', 'SalonController@viewSalon');

	//addservice
	Route::POST('/save-addservice', 'SalonController@saveAddService');
	Route::POST('/update-addservice', 'SalonController@updateAddService');
	Route::get('/addservice/{id}', 'SalonController@editAddService');
	Route::get('/addservice-delete/{id}', 'SalonController@deleteAddService');

	Route::POST('/update-time', 'SalonController@updateTime');

	//category
	Route::POST('/save-category', 'CategoryController@saveCategory');
	Route::POST('/update-category', 'CategoryController@updateCategory');
	Route::get('/category/{id}', 'CategoryController@editCategory');
	Route::get('/category', 'CategoryController@Category');
	Route::get('/category-delete/{id}', 'CategoryController@deleteCategory');

	//sub category
	Route::POST('/save-sub-category', 'CategoryController@saveSubCategory');
	Route::POST('/update-sub-category', 'CategoryController@updateSubCategory');
	Route::get('/edit-sub-category/{id}', 'CategoryController@editSubCategory');
	Route::get('/sub-category/{id}','CategoryController@SubCategory');
	Route::get('/sub-category-delete/{id}', 'CategoryController@deleteSubCategory');

	//package
	Route::POST('/save-package', 'PackageController@savePackage');
	Route::POST('/update-package', 'PackageController@updatePackage');
	Route::get('/package/{id}', 'PackageController@editPackage');
	Route::get('/package', 'PackageController@Package');
	Route::get('/package-delete/{id}', 'PackageController@deletePackage');

	//sub package
	Route::POST('/save-sub-package', 'PackageController@saveSubPackage');
	Route::POST('/update-sub-package', 'PackageController@updateSubPackage');
	Route::get('/edit-sub-package/{id}', 'PackageController@editSubPackage');
	Route::get('/sub-package/{id}','PackageController@SubPackage');
	Route::get('/sub-package-delete/{id}', 'PackageController@deleteSubPackage');


	//service
	Route::POST('/save-service', 'ServiceController@saveService');
	Route::POST('/update-service', 'ServiceController@updateService');
	Route::get('/service/{id}', 'ServiceController@editService');
	Route::get('/service', 'ServiceController@Service');
	Route::get('/service-delete/{id}', 'ServiceController@deleteService');

	//city
	Route::POST('/save-city', 'AreaController@saveCity');
	Route::POST('/update-city', 'AreaController@updateCity');
	Route::get('/city/{id}', 'AreaController@editCity');
	Route::get('/city', 'AreaController@City');
	Route::get('/city-delete/{id}', 'AreaController@deleteCity');

	//area
	Route::POST('/save-area', 'AreaController@saveArea');
	Route::POST('/update-area', 'AreaController@updateArea');
	Route::get('/edit-area/{id}', 'AreaController@editArea');
	Route::get('/area/{id}', 'AreaController@Area');
	Route::get('/area-delete/{id}', 'AreaController@deleteArea');

	//user
	Route::POST('/save-user', 'AdminController@saveUser');
	Route::POST('/update-user', 'AdminController@updateUser');
	Route::get('/user/{id}', 'AdminController@editUser');
	Route::get('/user', 'AdminController@User');
	Route::get('/user-delete/{id}', 'AdminController@deleteUser');

	Route::get('/customer', 'CustomerController@Customer');
	Route::get('/customer/{id}', 'CustomerController@viewCustomerDetails');

	Route::get('/review', 'ReviewController@Review');

	//notification
	Route::POST('/save-notification', 'NotificationController@saveNotification');
	Route::POST('/update-notification', 'NotificationController@updateNotification');
	Route::get('/notification/{id}', 'NotificationController@editNotification');
	Route::get('/push-notification', 'NotificationController@Notification');
	Route::get('/notification-delete/{id}', 'NotificationController@deleteNotification');

	Route::post('change-password', 'AdminController@changePassword');
	Route::get('view-user/{id}', 'AdminController@viewUser');

	Route::post('settlement-period', 'AdminController@updateSettlementPeriod');
	Route::get('settlement-period', 'AdminController@getSettlementPeriod');

	// coupon Management
	Route::get('/coupon','CouponController@index');
	Route::get('/addCoupon','CouponController@addCoupon');
	Route::get('/viewCoupon/{id}','CouponController@viewCoupon');
	Route::post('/CouponSave','CouponController@CouponSave');
	Route::post('/CouponUpdate','CouponController@CouponUpdate');
	Route::get('/CouponEdit/{id}','CouponController@CouponEdit');
	Route::get('/CouponDelete/{id}','CouponController@CouponDelete');
	Route::get('/get_coupon_service/{id}','CouponController@get_coupon_service');
	Route::get('/get_coupon_user/{id}','CouponController@get_coupon_user');
});


Route::group(['prefix' => 'vendor'],function(){

	Route::get('/dashboard', function () {
    	return view('vendor.dashboard');
	});
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
