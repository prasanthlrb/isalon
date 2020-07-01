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
                            <h5 class="content-header-title float-left pr-1 mb-0">Reviews & Ratings List</h5>
                            <div class="breadcrumb-wrapper col-12">
                                <ol class="breadcrumb p-0 mb-0">
                                    <li class="breadcrumb-item"><a href="/dashboard"><i class="bx bx-home-alt"></i></a>
                                    </li>
                                    <li class="breadcrumb-item active">Reviews & Ratings
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
        <!-- new task button -->
        <!-- <button id="add_new" style="width: 200px;" type="button" class="btn btn-primary add-task-btn btn-block my-1">
          <i class="bx bx-plus"></i>
          <span>New Salon</span>
        </button> -->
                                </div>
                                <div class="card-content">
                                    <div class="card-body card-dashboard">
                                        <!-- <p class="card-text">In this Table Show All type of Salon Information, Booking Details and Payment Details.</p> -->
                                        
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
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                    	<td>#INV-000001</td>
                                                        <td> jojo Salon</td>
                                                        <td>John jojo</td>
                                                        <td>Really Good</td>
                                                        
   
                                                        <td>
                        <div class="mb-1 font-small-2">
                          <i class="cursor-pointer bx bxs-star text-warning"></i>
                          <i class="cursor-pointer bx bxs-star text-warning"></i>
                          <i class="cursor-pointer bx bxs-star text-warning"></i>
                          <i class="cursor-pointer bx bxs-star text-warning"></i>
                          <i class="cursor-pointer bx bx-star text-muted"></i>
                        </div>
                                                        </td>
                                                        <td>2020-06-10 12:00:45</td>
                                                        <td><div class="dropdown">
                <span class="bx bx-dots-horizontal-rounded font-medium-3 dropdown-toggle nav-hide-arrow cursor-pointer" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="menu">
                </span>
                <div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end" style="position: absolute; transform: translate3d(-125px, 19px, 0px); top: 0px; left: 0px; will-change: transform;">
                  <a class="dropdown-item" href="#"><i class="bx bx-edit-alt mr-1"></i> Approved</a>
                  <a class="dropdown-item" href="#"><i class="bx bx-trash mr-1"></i> Remove</a>
                </div>
              </div></td>
                                                    </tr>
                                                 
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                      <th>Invoice ID</th>
                                                        <th>Salon Name</th>
                                                        <th>Customer Name</th>
                                                        <th>Comments</th>
                                                        <th>Reviews</th>
                                                        <th>Date & Time</th>
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

                    <div class="form-group">
                        <label>Busisness Type</label>
                        <select id="busisness_type" name="busisness_type" class="form-control">
                            <option value="">SELECT</option>
                            <option value="1">Indivigual</option>
                            <option value="2">Shop</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Owner Name</label>
                        <input autocomplete="off" type="text" id="owner_name" name="owner_name" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Email ID</label>
                        <input autocomplete="off" type="email" id="email" name="email" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Phone Number</label>
                        <input autocomplete="off" type="text" id="phone" name="phone" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" id="password" name="password" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Salon Name</label>
                        <input type="text" id="salon_name" name="salon_name" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Salon ID</label>
                        <input type="text" id="salon_id" name="salon_id" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Emirates ID</label>
                        <input type="text" id="emirates_id" name="emirates_id" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Passport Number</label>
                        <input type="text" id="passport_number" name="passport_number" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Member License</label>
                        <select id="member_license" name="member_license" class="form-control">
                            <option value="">SELECT</option>
                            <option value="1">Trial</option>
                            <option value="1">Plan 1</option>
                            <option value="2">Plan 2</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Salon Comission (%)</label>
                        <input type="text" id="salon_commission" name="salon_commission" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Trade License Copy</label>
                        <input type="file" id="trade_license" name="trade_license" class="form-control">
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
$('#add_new').click(function(){
    $('#popup_modal').modal('show');
    $("#form")[0].reset();
    action_type = 1;
    $('#saveButton').text('Save');
    $('#modal-title').text('Add Salon');
});
</script>
@endsection