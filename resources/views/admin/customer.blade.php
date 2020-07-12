 @section('css')
     <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/tables/datatable/datatables.min.css">
 @endsection
 @extends('admin.layouts')
@section('body-section')
 <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-12 mb-2 mt-1">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h5 class="content-header-title float-left pr-1 mb-0">Customer List</h5>
                            <div class="breadcrumb-wrapper col-12">
                                <ol class="breadcrumb p-0 mb-0">
                                    <li class="breadcrumb-item"><a href="/dashboard"><i class="bx bx-home-alt"></i></a>
                                    </li>
                                    <li class="breadcrumb-item active">Customer
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">
           
<!-- Zero configuration table -->
<section id="basic-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Customer List</h4>
                </div>
                <div class="card-content">
                    <div class="card-body card-dashboard">
                        <p class="card-text">In this Table Show All type of Customer Personal Information, Booking Details and Payment Details.</p>
                        <div class="table-responsive">
                            <table class="table zero-configuration">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Phone Number</th>
                                        <th>E-mail</th>
                                        <th>Registered On</th>
                                        <th>Current Status</th>
                                        <th>Membership Plan</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($customer as $row)
                                    <tr>
                                        <td>{{$row->name}}</td>
                                        <td>{{$row->phone}}</td>
                                        <td>{{$row->email}}</td>
                                        <td>{{$row->date}}</td>
                                        <td>Active</td>
                                        <td>Trial Plan</td>
                                        <td><div class="dropdown">
                <span class="bx bx-dots-horizontal-rounded font-medium-3 dropdown-toggle nav-hide-arrow cursor-pointer" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="menu">
                </span>
                <div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end" style="position: absolute; transform: translate3d(-125px, 19px, 0px); top: 0px; left: 0px; will-change: transform;">
                  <!-- <a class="dropdown-item" href="#"><i class="bx bx-edit-alt mr-1"></i> edit</a>
                  <a class="dropdown-item" href="#"><i class="bx bx-trash mr-1"></i> delete</a> -->
                  <a class="dropdown-item" href="/admin/chat-to-customer"><i class="bx bxs-chat mr-1"></i> Chat</a>
                  <a class="dropdown-item" href="#"><i class="bx bx-lock-alt mr-1"></i> Block</a>
                  <a class="dropdown-item" href="/admin/customer/{{$row->id}}"><i class="bx bx-show-alt mr-1"></i> See Profile</a>
                </div>
              </div></td>

                                    </tr>
                                @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Name</th>
                                        <th>Phone Number</th>
                                        <th>E-mail</th>
                                        <th>Registered On</th>
                                        <th>Current Status</th>
                                        <th>Membership Plan</th>
                                        <th>Action</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
            </div>
        </div>
        
            @endsection
            @section('js')
                 <script src="/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
             
                    <!-- BEGIN: Page Vendor JS-->
    
    <script src="../../../app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/buttons.bootstrap.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
    <!-- END: Page Vendor JS-->

<script src="/app-assets/js/scripts/datatables/datatable.js"></script>
<script type="text/javascript">

$('.customer').addClass('active');

</script>
@endsection