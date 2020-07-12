<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->
@include('admin.headlink');
<head>
  
     <link rel="stylesheet" type="text/css" href="/app-assets/css/plugins/forms/wizard.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/pages/app-chat.css">
    <!-- END: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/tables/datatable/datatables.min.css">
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern dark-layout content-left-sidebar chat-application navbar-sticky footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="content-left-sidebar" data-layout="dark-layout">


    <!-- END: Header-->
 @include('admin.header')
     @include('admin.sidebar')
    <!-- BEGIN: Content-->
    <div class="app-content content">
        <div class="content-area-wrapper">
            <div class="sidebar-left">
                <div class="sidebar">
                    <!-- app chat user profile left sidebar start -->
                    <!-- <div class="chat-user-profile">
                        <header class="chat-user-profile-header text-center border-bottom">
                            <span class="chat-profile-close">
                                <i class="bx bx-x"></i>
                            </span>
                            <div class="my-2">
                                <div class="avatar">
                                    <img src="/app-assets/images/portrait/small/avatar-s-11.jpg" alt="user_avatar" height="100" width="100">
                                </div>
                                <h5 class="mb-0">John Doe</h5>
                                <span>Designer</span>
                            </div>
                        </header>
                        <div class="chat-user-profile-content">
                            <div class="chat-user-profile-scroll">
                                <h6 class="text-uppercase mb-1">ABOUT</h6>
                                <p class="mb-2">It is a long established fact that a reader will be distracted by the readable content .</p>
                                <h6>PERSONAL INFORAMTION</h6>
                                <ul class="list-unstyled mb-2">
                                    <li class="mb-25">email@gmail.com</li>
                                    <li>+1(789) 950 -7654</li>
                                </ul>
                                <h6 class="text-uppercase mb-1">CHANNELS</h6>
                                <ul class="list-unstyled mb-2">
                                    <li><a href="javascript:void(0);"># Devlopers</a></li>
                                    <li><a href="javascript:void(0);"># Designers</a></li>
                                </ul>
                                <h6 class="text-uppercase mb-1">SETTINGS</h6>
                                <ul class="list-unstyled">
                                    <li class="mb-50 "><a href="javascript:void(0);" class="d-flex align-items-center"><i class="bx bx-tag mr-50"></i> Add
                                            Tag</a></li>
                                    <li class="mb-50 "><a href="javascript:void(0);" class="d-flex align-items-center"><i class="bx bx-star mr-50"></i>
                                            Important Contact</a>
                                    </li>
                                    <li class="mb-50 "><a href="javascript:void(0);" class="d-flex align-items-center"><i class="bx bx-image-alt mr-50"></i>
                                            Shared
                                            Documents</a></li>
                                    <li class="mb-50 "><a href="javascript:void(0);" class="d-flex align-items-center"><i class="bx bx-trash-alt mr-50"></i>
                                            Deleted
                                            Documents</a></li>
                                    <li><a href="javascript:void(0);" class="d-flex align-items-center"><i class="bx bx-block mr-50"></i> Blocked
                                            Contact</a></li>
                                </ul>
                            </div>
                        </div>
                    </div> -->
                    <!-- app chat user profile left sidebar ends -->
                    <!-- app chat sidebar start -->
                    <div class="chat-sidebar card">
                        <span class="chat-sidebar-close">
                            <i class="bx bx-x"></i>
                        </span>
                        <div class="chat-sidebar-search">
                            <div class="d-flex align-items-center">
                                <div class="chat-sidebar-profile-toggle">
                                    <div class="avatar">
                                        <img src="/app-assets/images/portrait/small/avatar-s-11.jpg" alt="user_avatar" height="36" width="36">
                                    </div>
                                </div>
                                <fieldset class="form-group position-relative has-icon-left mx-75 mb-0">
                                    <input type="text" class="form-control round" id="chat-search" placeholder="Search">
                                    <div class="form-control-position">
                                        <i class="bx bx-search-alt text-dark"></i>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                        <div class="chat-sidebar-list-wrapper pt-2">
                            <h6 class="px-2 pt-2 pb-25 mb-0">CONTACTS<i class="bx bx-plus float-right cursor-pointer"></i></h6>
                            <ul class="chat-sidebar-list">
                            @foreach($all_salon as $row)
                                <li>
                                    <a href="/admin/view-salon/{{$row->id}}">
                                    <div class="d-flex align-items-center">
                                        <div class="avatar m-0 mr-50"><img src="/app-assets/images/portrait/small/avatar-s-8.jpg" height="36" width="36" alt="sidebar user image">
                                            <!-- <span class="avatar-status-offline"></span> -->
                                            <!-- <span class="avatar-status-away"></span>
                                            <span class="avatar-status-away"></span> -->
                                        </div>
                                        <div class="chat-sidebar-name">
                                            <h6 class="mb-0">{{$row->salon_name}}</h6><span class="text-muted"> {{$row->phone}}</span>
                                        </div>
                                    </div>
                                    </a>
                                </li>
                            @endforeach
                            </ul>
                        </div>
                    </div>
                    <!-- app chat sidebar ends -->
                </div>
            </div>
            <div style="max-height: 900px;overflow: scroll;" class="content-right">
                <div class="content-overlay"></div>
                <div class="content-wrapper">
                    <div class="content-header row">
                    </div>
                    <div class="content-body">
                        <!-- app chat overlay -->
                        <div class="chat-overlay"></div>
 <section id="vertical-wizard" >
  <div class="card">
    <div class="card-header">
      <h4 class="card-title">{{$salon->salon_name}}</h4>
    </div>
    <div class="card-content">
      <div class="card-body">
        
<section id="basic-tabs-components">
  <div class="card">
    <div class="card-content">
      <div class="card-body">
        <ul class="nav nav-tabs" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="profile-tab" data-toggle="tab" href="#profile" aria-controls="profile" role="tab"
              aria-selected="true">
              <i class="bx bx-home align-middle"></i>
              <span class="align-middle">View Profile</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="service-tab" data-toggle="tab" href="#service" aria-controls="service" role="tab"
              aria-selected="false">
              <i class="bx bx-user align-middle"></i>
              <span class="align-middle">Service</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="working-hours-tab" data-toggle="tab" href="#working-hours" aria-controls="working-hours" role="tab"
              aria-selected="false">
              <i class="bx bx-message-square align-middle"></i>
              <span class="align-middle">Working Hours</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" id="location-tab" data-toggle="tab" href="#location" aria-controls="location" role="tab"
              aria-selected="false">
              <i class="bx bx-message-square align-middle"></i>
              <span class="align-middle">Location</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" id="reviews-tab" data-toggle="tab" href="#reviews" aria-controls="reviews" role="tab"
              aria-selected="false">
              <i class="bx bx-message-square align-middle"></i>
              <span class="align-middle">Reviews & Rating</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" id="appointment-tab" data-toggle="tab" href="#appointment" aria-controls="appointment" role="tab"
              aria-selected="false">
              <i class="bx bx-message-square align-middle"></i>
              <span class="align-middle">Appointment</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" id="gallery-tab" data-toggle="tab" href="#gallery" aria-controls="gallery" role="tab"
              aria-selected="false">
              <i class="bx bx-message-square align-middle"></i>
              <span class="align-middle">Gallery</span>
            </a>
          </li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane active" id="profile" aria-labelledby="profile-tab" role="tabpanel">
            <h6>PERSONAL INFORAMTION</h6>

            <ul class="list-unstyled">
              <li><i class="cursor-pointer bx bx-phone-call mb-1 mr-50"></i>{{$salon->phone}}</li>
              <li><i class="cursor-pointer bx bx-envelope mb-1 mr-50"></i>{{$salon->email}}</li>
            </ul>

              <div class="row">

                <div class="col-6">
                  <h6><small class="text-muted">Salon Name</small></h6>
                  <p>{{$salon->salon_name}}</p>
                </div>
                <div class="col-6">
                  <h6><small class="text-muted">Salon ID</small></h6>
                  <p>{{$salon->salon_id}}</p>
                </div>
                <div class="col-6">
                  <h6><small class="text-muted">Emirates ID</small></h6>
                  <p>{{$salon->emirates_id}}</p>
                </div>
                <div class="col-6">
                  <h6><small class="text-muted">Passport Number</small></h6>
                  <p>{{$salon->passport_number}}</p>
                </div>
                
                <div class="col-12">
                  <h6>Package Details</h6>
                  <p>Package Name :</p>
                  <p>Price :</p>
                  <p>Validity :</p>
                </div>
              </div>
          </div>

          <div class="tab-pane" id="service" aria-labelledby="service-tab" role="tabpanel">
            <button id="add_new" style="width: 200px;" type="button" class="btn btn-primary add-task-btn btn-block my-1">
              <i class="bx bx-plus"></i>
              <span>New Service</span>
            </button>

            <div class="table-responsive">
                <table class="table zero-configuration">
                    <thead>
                        <tr>
                            <th>Service</th>
                            <th>Price</th>
                            <th>Duration</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($salon_service as $row)
                        <tr>
                            <td>{{$row->service_id}}</td>
                            <td>{{$row->price}}</td>
                            <td>{{$row->duration}}</td>
                            <td><div class="dropdown">
                                <span class="bx bx-dots-horizontal-rounded font-medium-3 dropdown-toggle nav-hide-arrow cursor-pointer" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="menu">
                                </span>
                                <div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end" style="position: absolute; transform: translate3d(-125px, 19px, 0px); top: 0px; left: 0px; will-change: transform;">
                                  <a onclick="Edit({{$row->id}})" class="dropdown-item" href="#"><i class="bx bx-edit-alt mr-1"></i> edit</a>
                                  <a onclick="Delete({{$row->id}})" class="dropdown-item" href="#"><i class="bx bx-trash mr-1"></i> delete</a>
                                </div>
                              </div>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Service</th>
                            <th>Price</th>
                            <th>Duration</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                </table>
            </div>

          </div>

          <div class="tab-pane" id="working-hours" aria-labelledby="working-hours-tab" role="tabpanel">
            <button id="add_hours" style="width: 200px;" type="button" class="btn btn-primary add-task-btn btn-block my-1">
              <i class="bx bx-plus"></i>
              <span>Working Hours</span>
            </button>
            <div class="table-responsive">
                <table class="table working-hours-table">
                    <thead>
                        <tr>
                            <th>Days</th>
                            <th>Open/Closed</th>
                            <th>Opening Time</th>
                            <th>Closing Time</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($service_time as $row)
                        <tr>
                            <td>{{$row->days}}</td>
                            <td>
                                @if($row->status == 1)
                                Open
                                @else
                                Closed
                                @endif
                            </td>
                            <td>{{$row->open_time}}</td>
                            <td>{{$row->close_time}}</td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>

          </div>

          <div class="tab-pane" id="location" aria-labelledby="location-tab" role="tabpanel">
            <h6>Location Details</h6>
            <div id="googleMap" style="width:100%;height:400px;"></div>
          </div>


          <div class="tab-pane" id="reviews" aria-labelledby="reviews-tab" role="tabpanel">

            <div class="table-responsive">
                <table class="table zero-configuration">
                    <thead>
                        <tr>
                            <th>Invoice ID</th>
                            <th>Salon Name</th>
                            <th>Customer Name</th>
                            <th>Comments</th>
                            <th>Reviews</th>
                            <th>Date & Time</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($review as $row)
                    <tr>
                        <td>#{{$row->invoice_id}}</td>
                        <td>{{$row->salon_name}}</td>
                        <td>{{$row->customer_name}}</td>
                        <td>{{$row->comments}}</td>
                        <td>
                            <div class="mb-1 font-small-2">
                              <i class="cursor-pointer bx bxs-star text-warning"></i>
                              <i class="cursor-pointer bx bxs-star text-warning"></i>
                              <i class="cursor-pointer bx bxs-star text-warning"></i>
                              <i class="cursor-pointer bx bxs-star text-warning"></i>
                              <i class="cursor-pointer bx bx-star text-muted"></i>
                            </div>
                        </td>
                        <td>{{$row->created_at}}</td>
                    </tr>
                    @endforeach
                    </tbody>
                    <tfoot>
                        <tr>
                          <th>Invoice ID</th>
                            <th>Salon Name</th>
                            <th>Customer Name</th>
                            <th>Comments</th>
                            <th>Reviews</th>
                            <th>Date & Time</th>
                        </tr>
                    </tfoot>
                </table>
            </div>

          </div>


          <div class="tab-pane" id="appointment" aria-labelledby="appointment-tab" role="tabpanel">

            <div class="table-responsive">
                <table class="table zero-configuration">
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Customer Name</th>
                            <th>Appoinment DateTime</th>
                            <th>Services</th>
                            <th>Payment</th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>#001</td>
                        <td>Aravind</td>
                        <td>08-07-2020</td>
                        <td></td>
                        <td>100 AED</td>
                    </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Order ID</th>
                            <th>Customer Name</th>
                            <th>Appoinment DateTime</th>
                            <th>Services</th>
                            <th>Payment</th>
                        </tr>
                    </tfoot>
                </table>
            </div>

          </div>


          <div class="tab-pane" id="gallery" aria-labelledby="gallery-tab" role="tabpanel">

            <div class="row">
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title=""
                   data-image="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title=""
                   data-image="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>

            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title=""
                   data-image="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Test1"
                   data-image="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>



            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>



            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
        </div>

          </div>


        </div>
      </div>
    </div>
  </div>
</section>



      </div>
    </div>
  </div>
</section>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END: Content-->

    <!-- demo chat-->
 
    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

<!-- Bootstrap Modal -->
<div class="modal fade" id="time_modal" tabindex="-1" role="dialog" aria-labelledby="popup_modal" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-grey-dark-5">
                <h6 class="modal-title text-white" id="modal-title">Add New</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="time_form" method="POST" enctype="multipart/form-data">
                {{ csrf_field() }}
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Days</th>
                                <th>Open/Closed</th>
                                <th>Opening Time</th>
                                <th>Closing Time</th>
                            </tr>
                        </thead>
                        <tbody>
<?php
$time = array('12:00 AM','12:30 AM','01:00 AM','01:30 AM','02:00 AM','02:30 AM','03:00 AM','03:30 AM','04:00 AM','04:30 AM','05:00 AM','05:30 AM','06:00 AM','06:30 AM','07:00 AM','07:30 AM','08:00 AM','08:30 AM','09:00 AM','09:30 AM','10:00 AM','10:30 AM','11:00 AM','11:30 AM','12:00 PM','12:30 PM','01:00 PM','01:30 PM','02:00 PM','02:30 PM','03:00 PM','03:30 PM','04:00 PM','04:30 PM','05:00 PM','05:30 PM','06:00 PM','06:30 PM','07:00 PM','07:30 PM','08:00 PM','08:30 PM','09:00 PM','09:30 PM','10:00 PM','10:30 PM','11:00 PM','11:30 PM');
?>
                        @foreach($service_time as $row)
                            <tr>
                                <td>
                                    {{$row->days}}
                                    <input value="{{$row->id}}" type="hidden" name="timing_id[]">
                                </td>
                                <td>
                                    <select name="status[]" class="form-control">
                                        <option value="">SELECT</option>
                                        <option {{$row->status == 1 ?'selected':''}} value="1">Open</option>
                                        <option {{$row->status == 2 ?'selected':''}} value="2">Closed</option>
                                    </select>
                                </td>

                                <td>
                                    <select name="open_time[]" class="form-control">
                                        <option value="">SELECT</option>
                                        @for ($i = 0; $i < 48; $i++) {
                                        <option {{$row->open_time == $time[$i] ?'selected':''}} value="{{$time[$i]}}">{{$time[$i]}}</option>
                                        @endfor
                                    </select>
                                </td>
                                <td>
                                    <select name="close_time[]" class="form-control">
                                        <option value="">SELECT</option>
                                        @for ($i = 0; $i < 48; $i++) {
                                        <option {{$row->close_time == $time[$i] ?'selected':''}} value="{{$time[$i]}}">{{$time[$i]}}</option>
                                        @endfor
                                    </select>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>

                    <div class="form-group">
                        <button onclick="timeUpdate()" id="saveButton" class="btn btn-primary btn-block mr-10" type="button">Add</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- /Bootstrap Modal -->


<!-- Bootstrap Modal -->
<div class="modal fade" id="popup_modal" tabindex="-1" role="dialog" aria-labelledby="popup_modal" aria-hidden="true">
    <div class="modal-dialog " role="document">
        <div class="modal-content">
            <div class="modal-header bg-grey-dark-5">
                <h6 class="modal-title text-white" id="modal-title">Add New</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="form" method="POST" enctype="multipart/form-data">
                {{ csrf_field() }}
                <input type="hidden" name="id" id="id">
                <input type="hidden" value="{{$salon_id}}" name="salon_id" id="salon_id">

                <div class="row">
                    <div class="form-group col-md-12">
                        <label>Choose Service</label>
                        <select id="service_id" name="service_id" class="form-control">
                            <option value="">SELECT</option>
                            @foreach($service as $row)
                            <option value="{{$row->id}}">{{$row->service_name_english}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label>Price</label>
                        <input autocomplete="off" type="text" id="price" name="price" class="form-control">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label>Choose Duration</label>
                        <select id="duration" name="duration" class="form-control">
                            <option value="">SELECT</option>
                            <option value="15">15 Minutes</option>
                            <option value="30">30 Minutes</option>
                            <option value="45">45 Minutes</option>
                            <option value="60">1 hour</option>
                            <option value="75">1 hour 15 Minutes</option>
                            <option value="90">1 hour 30 Minutes</option>
                            <option value="105">1 hour 45 Minutes</option>
                            <option value="120">2 hour</option>
                        </select>
                    </div>
                </div>

                    <div class="form-group">
                        <button onclick="Save()" id="saveButton" class="btn btn-primary btn-block mr-10" type="button">Add</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- /Bootstrap Modal -->


@include('admin.footer')
    <script src="/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/buttons.bootstrap.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
    <!-- END: Page Vendor JS-->
    <script src="/app-assets/js/scripts/datatables/datatable.js"></script>
    
    <script src="/app-assets/js/scripts/pages/app-chat.js"></script>
    

<script type="text/javascript">
$('.salon').addClass('active');
var action_type;
$('#add_hours').click(function(){
    $('#time_modal').modal('show');
    $("#time_form")[0].reset();
    $('#saveButton').text('Update');
    $('#modal-title').text('Add Hours');
});

$('#add_new').click(function(){
    $('#popup_modal').modal('show');
    $("#form")[0].reset();
    action_type = 1;
    $('#saveButton').text('Save');
    $('#modal-title').text('Add Service');
});

function Save(){
  var formData = new FormData($('#form')[0]);
  if(action_type == 1){
    $.ajax({
        url : '/admin/save-addservice',
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        dataType: "JSON",
        success: function(data)
        {                
            $("#form")[0].reset();
            $('#popup_modal').modal('hide');
            $('.zero-configuration').load(location.href+' .zero-configuration');
            toastr.success(data, 'Successfully Save');
        },error: function (data) {
            var errorData = data.responseJSON.errors;
            $.each(errorData, function(i, obj) {
            toastr.error(obj[0]);
      });
    }
    });
  }else{
    $.ajax({
      url : '/admin/update-addservice',
      type: "POST",
      data: formData,
      contentType: false,
      processData: false,
      dataType: "JSON",
      success: function(data)
      {
        console.log(data);
          $("#form")[0].reset();
           $('#popup_modal').modal('hide');
           $('.zero-configuration').load(location.href+' .zero-configuration');
           toastr.success(data, 'Successfully Update');
      },error: function (data) {
        var errorData = data.responseJSON.errors;
        $.each(errorData, function(i, obj) {
          toastr.error(obj[0]);
        });
      }
    });
  }
}

function timeUpdate(){
  var formData = new FormData($('#time_form')[0]);
    $.ajax({
        url : '/admin/update-time',
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        dataType: "JSON",
        success: function(data)
        {                
            $("#form")[0].reset();
            $('#time_modal').modal('hide');
            toastr.success(data, 'Successfully Save');
            location.reload();;
        },error: function (data) {
            var errorData = data.responseJSON.errors;
            $.each(errorData, function(i, obj) {
            toastr.error(obj[0]);
      });
    }
    });
}

function Edit(id){
  $.ajax({
    url : '/admin/addservice/'+id,
    type: "GET",
    dataType: "JSON",
    success: function(data)
    {
      $('#modal-title').text('Update Service');
      $('#save').text('Save Change');
      $('select[name=service_id]').val(data.service_id);
      $('input[name=price]').val(data.price);
      $('select[name=duration]').val(data.duration);
      $('input[name=id]').val(id);
      $('#popup_modal').modal('show');
      action_type = 2;
    }
  });
}

function Delete(id){
    var r = confirm("Are you sure");
    if (r == true) {
      $.ajax({
        url : '/admin/addservice-delete/'+id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
          toastr.success(data, 'Successfully Delete');
          $('.zero-configuration').load(location.href+' .zero-configuration');
        }
      });
    } 
}

</script>

<script>
function myMap() {
var mapProp= {
  center:new google.maps.LatLng(51.508742,-0.120850),
  zoom:5,
};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>