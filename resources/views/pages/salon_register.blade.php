<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="Frest admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Frest admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Register Page - Frest - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,600%7CIBM+Plex+Sans:300,400,500,600,700" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/vendors.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/themes/semi-dark-layout.css">
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/pages/authentication.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern dark-layout 1-column  navbar-sticky footer-static bg-full-screen-image  blank-page blank-page" data-open="click" data-menu="vertical-menu-modern" data-col="1-column" data-layout="dark-layout">
    <!-- BEGIN: Content-->
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-header row">
            </div>
            <div class="content-body">
<!-- register section starts -->
<section class="row flexbox-container">
    <div class="col-xl-8 col-10">
        <div class="card bg-authentication mb-0">
            <div class="row m-0">
                <!-- register section left -->
                <div class="col-md-12 col-12 px-0">
                    <div class="card disable-rounded-right mb-0 p-2 h-100 d-flex justify-content-center">
                        <div class="card-header pb-1">
                            <div class="card-title">
                                <h4 class="text-center mb-2">Salon Register</h4>
                            </div>
                        </div>
                        <!-- <div class="text-center">
                            <p> <small> Please enter your details to sign up and be part of our great community</small>
                            </p>
                        </div> -->
                        <div class="card-content">
                            <div class="card-body">
                                <form id="form" method="POST" enctype="multipart/form-data">
                <div class="form-row">
                    <div class="form-group col-md-6 mb-50">
                        <label>Busisness Type</label>
                        <select id="busisness_type" name="busisness_type" class="form-control">
                            <option value="">SELECT</option>
                            <option value="1">Indivigual</option>
                            <option value="2">Shop</option>
                        </select>
                	</div>
                    <div class="form-group col-md-6 mb-50">
                        <label>Owner Name</label>
                        <input autocomplete="off" type="text" id="owner_name" name="owner_name" class="form-control">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6 mb-50">
                        <label>Email ID</label>
                        <input autocomplete="off" type="email" id="email" name="email" class="form-control">
                	</div>
                    <div class="form-group col-md-6 mb-50">
                        <label>Phone Number</label>
                        <input autocomplete="off" type="text" id="phone" name="phone" class="form-control">
                    </div>
                </div>
                <div class="form-row salon-view">
                    <div class="form-group col-md-6 mb-50">
                        <label>Salon Name</label>
                        <input type="text" id="salon_name" name="salon_name" class="form-control">
                	</div>
                    <div class="form-group col-md-6 mb-50">
                        <label>Salon ID</label>
                        <input type="text" id="salon_id" name="salon_id" class="form-control">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6 mb-50">
                        <label>Emirates ID</label>
                        <input type="text" id="emirates_id" name="emirates_id" class="form-control">
                	</div>
                    <div class="form-group col-md-6 mb-50">
                        <label>Passport Number</label>
                        <input type="text" id="passport_number" name="passport_number" class="form-control">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6 mb-50">
                        <label>City</label>
                        <select id="city" name="city" class="form-control">
                            <option value="">SELECT</option>
                           	@foreach($city as $row)
                            <option value="{{$row->id}}">{{$row->area}}</option>
                            @endforeach
                        </select>
                	</div>
                    <div class="form-group col-md-6 mb-50">
                        <label>Area</label>
                        <select id="area" name="area" class="form-control">
                            <option value="">SELECT</option>
                           	@foreach($area as $row)
                            <option value="{{$row->id}}">{{$row->area}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-12 mb-50">
                        <label>Address</label>
                        <textarea id="address" name="address" class="form-control">                  	
                        </textarea>
                	</div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6 mb-50">
                        <label>Member License</label>
                        <select id="member_license" name="member_license" class="form-control">
                            <option value="">SELECT</option>
                            <option value="1">Trial</option>
                            <option value="1">Plan 1</option>
                            <option value="2">Plan 2</option>
                        </select>
                	</div>
                    <div class="form-group col-md-6 mb-50">
                        <label>Salon Comission (%)</label>
                        <input type="text" id="salon_commission" name="salon_commission" class="form-control">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-12 mb-50">
                        <label>Trade License Copy</label>
                        <input type="file" id="trade_license" name="trade_license" class="form-control">
                	</div>
                </div>
                                </form> 
                                    <button onclick="Save()" type="button" class="btn btn-primary glow position-relative w-100">SIGN UP<i id="icon-arrow" class="bx bx-right-arrow-alt"></i></button>
                                
                                <hr>
                                <div class="text-center"><small class="mr-25">Already have an account?</small><a href="/login"><small>Sign in</small> </a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- image section right -->
                <!-- <div class="col-md-6 d-md-block d-none text-center align-self-center p-3">
                    <img class="img-fluid" src="/app-assets/images/pages/register.png" alt="branding logo">
                </div> -->
            </div>
        </div>
    </div>
</section>
<!-- register section endss -->
            </div>
        </div>
    </div>
    <!-- END: Content-->


    <!-- BEGIN: Vendor JS-->
    <script src="/app-assets/vendors/js/vendors.min.js"></script>
    <script src="/app-assets/fonts/LivIconsEvo/js/LivIconsEvo.tools.js"></script>
    <script src="/app-assets/fonts/LivIconsEvo/js/LivIconsEvo.defaults.js"></script>
    <script src="/app-assets/fonts/LivIconsEvo/js/LivIconsEvo.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="/app-assets/js/scripts/configs/vertical-menu-dark.js"></script>
    <script src="/app-assets/js/core/app-menu.js"></script>
    <script src="/app-assets/js/core/app.js"></script>
    <script src="/app-assets/js/scripts/components.js"></script>
    <script src="/app-assets/js/scripts/footer.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <!-- END: Page JS-->

</body>
<!-- END: Body-->
<script type="text/javascript">
// $('.salon').addClass('active');

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
    $.ajax({
        url : '/save-salon-register',
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        dataType: "JSON",
        success: function(data)
        {                
            $("#form")[0].reset();
            // $('#popup_modal').modal('hide');
            // $('.zero-configuration').load(location.href+' .zero-configuration');
            toastr.success(data, 'Successfully Save');
        },error: function (data) {
            var errorData = data.responseJSON.errors;
            $.each(errorData, function(i, obj) {
            toastr.error(obj[0]);
      });
    }
    });
}
</script>
</html>