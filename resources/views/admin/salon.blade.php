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
                            <h5 class="content-header-title float-left pr-1 mb-0">Salon List</h5>
                            <div class="breadcrumb-wrapper col-12">
                                <ol class="breadcrumb p-0 mb-0">
                                    <li class="breadcrumb-item"><a href="/dashboard"><i class="bx bx-home-alt"></i></a>
                                    </li>
                                    <li class="breadcrumb-item active">Salon
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
        <button id="add_new" style="width: 200px;" type="button" class="btn btn-primary add-task-btn btn-block my-1">
          <i class="bx bx-plus"></i>
          <span>New Salon</span>
        </button>
        </div>
        <div class="card-content">
            <div class="card-body card-dashboard">
                <!-- <p class="card-text">In this Table Show All type of Salon Information, Booking Details and Payment Details.</p> -->
                
                <div class="table-responsive">
                   
                    <table class="table zero-configuration">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Salon Name</th>
                                <th>Owner / Person Name</th>
                                <th>Phone Number</th>
                                <th>Total Booking</th>
                                <th>Current Status</th>
                                <th>Membership Plan</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($salon as $key => $row)
                            <tr>
                                <td>{{$key + 1}}</td>
                                <td>{{$row->salon_name}}</td>
                                <td>{{$row->owner_name}}</td>
                                <td>{{$row->phone}}</td>
                                <td>200</td>

                                <td>Active</td>
                                <td>Trial</td>
                                <td><div class="dropdown">
                                    <span class="bx bx-dots-horizontal-rounded font-medium-3 dropdown-toggle nav-hide-arrow cursor-pointer" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="menu">
                                    </span>
                                    <div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end" style="position: absolute; transform: translate3d(-125px, 19px, 0px); top: 0px; left: 0px; will-change: transform;">
                                      <a onclick="Edit({{$row->id}})" class="dropdown-item" href="#"><i class="bx bx-edit-alt mr-1"></i> edit</a>
                                      <a onclick="Delete({{$row->id}})" class="dropdown-item" href="#"><i class="bx bx-trash mr-1"></i> delete</a>
                                      <a class="dropdown-item" href="/admin/chat-to-salon"><i class="bx bxs-chat mr-1"></i> Chat</a>
                                      <a class="dropdown-item" href="#"><i class="bx bx-lock-alt mr-1"></i> Block</a>
                                      <a class="dropdown-item" href="/admin/view-salon/{{$row->id}}"><i class="bx bx-show-alt mr-1"></i> See Profile</a>
                                    </div>
                                  </div>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>#</th>
                                <th>Salon Name</th>
                                <th>Owner / Person Name</th>
                                <th>Phone Number</th>
                                <th>Total Booking</th>
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


 
<!-- Bootstrap Modal -->
<div class="modal fade" id="popup_modal" tabindex="-1" role="dialog" aria-labelledby="popup_modal" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
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

                <div class="row">
                    <div class="form-group col-md-6">
                        <label>Busisness Type</label>
                        <select id="busisness_type" name="busisness_type" class="form-control">
                            <option value="">SELECT</option>
                            <option value="1">Indivigual</option>
                            <option value="2">Shop</option>
                        </select>
                    </div>

                    <div class="form-group col-md-6">
                        <label>Owner Name</label>
                        <input autocomplete="off" type="text" id="owner_name" name="owner_name" class="form-control">
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-6">
                        <label>Email ID</label>
                        <input autocomplete="off" type="email" id="email" name="email" class="form-control">
                    </div>

                    <div class="form-group col-md-6">
                        <label>Phone Number</label>
                        <input autocomplete="off" type="text" id="phone" name="phone" class="form-control">
                    </div>
                </div>
                <!-- <div class="row">
                    <div class="form-group col-md-6">
                        <label>Password</label>
                        <input type="password" id="password" name="password" class="form-control">
                    </div>

                    <div class="form-group col-md-6">
                        <label>Confirm Password</label>
                        <input type="password" id="password_confirmation" name="password_confirmation" class="form-control">
                    </div>
                </div> -->
                <div class="row salon-view">
                    <div class="form-group col-md-6">
                        <label>Salon Name</label>
                        <input type="text" id="salon_name" name="salon_name" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label>Salon ID</label>
                        <input type="text" id="salon_id" name="salon_id" class="form-control">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Emirates ID</label>
                        <input type="text" id="emirates_id" name="emirates_id" class="form-control">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Passport Number</label>
                        <input type="text" id="passport_number" name="passport_number" class="form-control">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Nationality</label>
                        <select id="nationality" name="nationality" class="form-control">
                            <option value="">SELECT</option>
                            <option value="1">United Arab Emirates</option>
                            <option value="2">India</option>
                            <option value="3">Russia</option>
                            <option value="4">Pakistan</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <label>Member License</label>
                        <select id="member_license" name="member_license" class="form-control">
                            <option value="">SELECT</option>
                            <option value="1">Trial</option>
                            <option value="1">Plan 1</option>
                            <option value="2">Plan 2</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Salon Comission (%)</label>
                        <input type="text" id="salon_commission" name="salon_commission" class="form-control">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label>Trade License Copy</label>
                        <input type="file" id="trade_license" name="trade_license" class="form-control">
                        <input type="hidden" id="trade_license1" name="trade_license1">
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
$('.salon').addClass('active');
var action_type;
$('#add_new').click(function(){
    $('#popup_modal').modal('show');
    $("#form")[0].reset();
    action_type = 1;
    $('#saveButton').text('Save');
    $('#modal-title').text('Add Salon');
});

$(".salon-view").hide();
$('#busisness_type').change(function(){
    var busisness_type = $('#busisness_type').val();
    if(busisness_type == '1'){
        $(".salon-view").hide();
    }
    else{
        $(".salon-view").show();
    }
});

function Save(){
  var formData = new FormData($('#form')[0]);
  if(action_type == 1){
    $.ajax({
        url : '/admin/save-salon',
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
      url : '/admin/update-salon',
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

function Edit(id){
  $.ajax({
    url : '/admin/salon/'+id,
    type: "GET",
    dataType: "JSON",
    success: function(data)
    {
      $('#modal-title').text('Update Salon');
      $('#save').text('Save Change');
      $('select[name=busisness_type]').val(data.busisness_type);
    if(data.busisness_type == '1'){
        $(".salon-view").hide();
    }
    else{
        $(".salon-view").show();
    }
      $('input[name=owner_name]').val(data.owner_name);
      $('input[name=phone]').val(data.phone);
      $('input[name=email]').val(data.email);
      $('input[name=salon_id]').val(data.salon_id);
      $('input[name=salon_name]').val(data.salon_name);
      $('input[name=emirates_id]').val(data.emirates_id);
      $('input[name=passport_number]').val(data.passport_number);
      $('select[name=nationality]').val(data.nationality);
      $('select[name=member_license]').val(data.member_license);
      $('input[name=salon_commission]').val(data.salon_commission);
      $('input[name=trade_license1]').val(data.image);
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
        url : '/admin/salon-delete/'+id,
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
@endsection