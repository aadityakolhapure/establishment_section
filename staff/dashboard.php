<?php
session_start();
error_reporting(0);
include('../includes/dbconn.php');
// $_SESSION['emplogin']=$_POST['email'];
if (strlen($_SESSION['emplogin']) == 0) {
    header('location:../index.php');
} else {
    $eid = $_SESSION['emplogin'];
    if (isset($_POST['update'])) {

        $name = $_POST['name'];
        $dob = $_POST['dob'];
        $DepartmentName = $_POST['department'];
        $staff_id = $_POST['staff_id'];
        $caste = $_POST['caste'];
        $subcaste = $_POST['subcaste'];
        $address = $_POST['address'];
        $email = $_POST['email'];
        $mobile_nos = $_POST['mobile_nos'];
        $aadhar_nos = $_POST['aadhar_nos'];
        $pan_nos = $_POST['pan_nos'];
        $sql = "update profile set name=:name,dob=:dob,DepartmentName=:department,staff_id=:Staff_id,caste=:caste,subcaste=:subcaste,address=:address,email=:email,mobile_nos=:mobile_nos,aadhar_nos=:aadhar_nos,pan_nos=:pan_nos where email=:email";
        $query = $dbh->prepare($sql);
        $query->bindParam(':name', $name, PDO::PARAM_STR);
        $query->bindParam(':dob', $dob, PDO::PARAM_STR);
        $query->bindParam(':department', $DepartmentName, PDO::PARAM_STR);
        $query->bindParam(':staff_id', $staff_id, PDO::PARAM_STR);
        $query->bindParam(':caste', $caste, PDO::PARAM_STR);
        $query->bindParam(':subcaste', $subcaste, PDO::PARAM_STR);
        $query->bindParam(':address', $address, PDO::PARAM_STR);
        $query->bindParam(':email', $email, PDO::PARAM_STR);
        $query->bindParam(':mobile_nos', $mobile_nos, PDO::PARAM_STR);
        $query->bindParam(':aadhar_nos', $aadhar_nos, PDO::PARAM_STR);
        $query->bindParam(':pan_nos', $pan_nos, PDO::PARAM_STR);
        $query->execute();
        $msg = "Your record has been updated Successfully";
    } ?>

    <!doctype html>
    <html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Establishment Section System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/png" href="../assets/images/icon/favicon.ico">
        <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="../assets/css/themify-icons.css">
        <link rel="stylesheet" href="../assets/css/metisMenu.css">
        <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="../assets/css/slicknav.min.css">
        <!-- amchart css -->
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
        <!-- Start datatable css -->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
        <!-- others css -->
        <link rel="stylesheet" href="../assets/css/typography.css">
        <link rel="stylesheet" href="../assets/css/default-css.css">
        <link rel="stylesheet" href="../assets/css/styles.css">
        <link rel="stylesheet" href="../assets/css/responsive.css">
        <!-- modernizr css -->
        <script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>
        <!-- preloader area start -->
        <div id="preloader">
            <div class="loader"></div>
        </div>
        <!-- preloader area end -->
        <!-- page container area start -->
        <div class="page-container">
            <!-- sidebar menu area start -->
            <div class="sidebar-menu">
                <div class="sidebar-header">
                    <div class="logo">
                        <a href="leave.php"><img src="../assets/images/icon/logo_w.png" alt="logo"></a>
                    </div>
                </div>
                <div class="main-menu">
                    <div class="menu-inner">
                        <nav>
                            <ul class="metismenu" id="menu">

                                <li class="#">
                                    <a href="dashboard.php" aria-expanded="true"><i class="ti-user"></i><span>profile
                                        </span></a>
                                </li>

                                <li class="#">
                                    <a href="leave.php" aria-expanded="true"><i class="ti-user"></i><span>Apply Leave
                                        </span></a>
                                </li>

                                <li class="#">
                                    <a href="leave-history.php" aria-expanded="true"><i class="ti-agenda"></i><span>View My Leave History
                                        </span></a>
                                </li>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- sidebar menu area end -->
            <!-- main content area start -->
            <div class="main-content">
                <!-- header area start -->
                <div class="header-area">
                    <div class="row align-items-center">
                        <!-- nav and search button -->
                        <div class="col-md-6 col-sm-8 clearfix">
                            <div class="nav-btn pull-left">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>

                        </div>
                        <!-- profile info & task notification -->
                        <div class="col-md-6 col-sm-4 clearfix">
                            <ul class="notification-area pull-right">
                                <li id="full-view"><i class="ti-fullscreen"></i></li>
                                <li id="full-view-exit"><i class="ti-zoom-out"></i></li>



                            </ul>
                        </div>
                    </div>
                </div>
                <!-- header area end -->
                <!-- page title area start -->
                <div class="page-title-area">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area clearfix">
                                <h4 class="page-title pull-left">My Profile</h4>
                            </div>
                        </div>
                        <div class="col-sm-6 clearfix">

                            <?php include '../includes/employee-profile-section.php' ?>

                        </div>
                    </div>
                </div>
                <!-- page title area end -->
                <div class="main-content-inner">
                    <div class="row">
                        <div class="col-lg-6 col-ml-12">
                            <div class="row">
                                <!-- Textual inputs start -->
                                <div class="col-12 mt-5">
                                    <?php if ($error) { ?><div class="alert alert-danger alert-dismissible fade show"><strong>Info: </strong><?php echo htmlentities($error); ?>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>

                                        </div><?php } else if ($msg) { ?><div class="alert alert-success alert-dismissible fade show"><strong>Info: </strong><?php echo htmlentities($msg); ?>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div><?php } ?>
                                    <div class="card">
                                        <form name="addemp" method="POST">

                                            <div class="card-body">
                                                <h4 class="header-title">Update My Profile</h4>
                                                <p class="text-muted font-14 mb-4">Please make changes on the form below in order to update your profile</p>

                                                <?php
                                                // $eid = $_SESSION['emplogin'];
                                                $sql = "SELECT * from  profile where email=:email";
                                                $query = $dbh->prepare($sql);
                                                $query->bindParam(':email', $email, PDO::PARAM_STR);
                                                $query->execute();
                                                $results = $query->fetchAll(PDO::FETCH_OBJ);
                                                $cnt = 1;
                                                if ($query->rowCount() > 0) {
                                                    foreach ($results as $result) {
                                                ?>


                                                        <div class="form-group">
                                                            <label for="example-text-input" class="col-form-label">Name</label>
                                                            <input class="form-control" name="name" value="<?php echo htmlentities($result->name); ?>" type="text" required id="example-text-input">
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="example-text-input" class="col-form-label">dob</label>
                                                            <input class="form-control" name="dob" value="<?php echo htmlentities($result->dob); ?>" type="date" autocomplete="off" required id="example-text-input">
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="col-form-label">Selected Department</label>
                                                            <select class="custom-select" name="department" autocomplete="off">
                                                                <option value="<?php echo htmlentities($result->Department); ?>"><?php echo htmlentities($result->Department); ?></option>

                                                                <?php $sql = "SELECT DepartmentName from tbldepartments";
                                                                $query = $dbh->prepare($sql);
                                                                $query->execute();
                                                                $results = $query->fetchAll(PDO::FETCH_OBJ);
                                                                $cnt = 1;
                                                                if ($query->rowCount() > 0) {
                                                                    foreach ($results as $resultt) {
                                                                ?>
                                                                        <option value="<?php echo htmlentities($resultt->DepartmentName); ?>"><?php echo htmlentities($resultt->DepartmentName); ?></option>
                                                                <?php }
                                                                } ?>
                                                            </select>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="example-email-input" class="col-form-label">Staff ID</label>
                                                            <input class="form-control" name="staff_id" type="number" value="<?php echo htmlentities($result->staff_id); ?>" readonly autocomplete="off" required id="example-email-input">
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="example-email-input" class="col-form-label">Caste</label>
                                                            <input class="form-control" name="caste" type="text" value="<?php echo htmlentities($result->caste); ?>" readonly autocomplete="off" required id="example-email-input">
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="col-form-label">Gender</label>
                                                            <select class="custom-select" name="gender" autocomplete="off">
                                                                <option value="<?php echo htmlentities($result->Gender); ?>"><?php echo htmlentities($result->Gender); ?></option>
                                                                <option value="Male">Male</option>
                                                                <option value="Female">Female</option>
                                                                <option value="Other">Other</option>
                                                            </select>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="example-date-input" class="col-form-label">subcaste</label>
                                                            <input class="form-control" type="text" name="subcaste" id="birthdate" value="<?php echo htmlentities($result->subcaste); ?>">
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="example-text-input" class="col-form-label">address</label>
                                                            <input class="form-control" name="address" type="text" value="<?php echo htmlentities($result->address); ?>" maxlength="10" autocomplete="off" required>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="example-text-input" class="col-form-label">Email</label>
                                                            <input class="form-control" name="email" type="email" autocomplete="off" readonly required value="<?php echo htmlentities($result->email); ?>" id="example-text-input">
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="example-text-input" class="col-form-label">Mobile Nos.</label>
                                                            <input class="form-control" name="mobile_nos" type="number" value="<?php echo htmlentities($result->mobile_nos); ?>" autocomplete="off" required id="example-text-input">
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="example-text-input" class="col-form-label">Aadhar Nos</label>
                                                            <input class="form-control" name="aadhar_nos" type="number" value="<?php echo htmlentities($result->aadhar_nos); ?>" autocomplete="off" required>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="example-text-input" class="col-form-label">Pan Nos</label>
                                                            <input class="form-control" name="pan_nos" type="varchar" value="<?php echo htmlentities($result->pan_nos); ?>" autocomplete="off" required>
                                                        </div>



                                                <?php }
                                                } ?>

                                                <button class="btn btn-primary" name="update" id="update" type="submit">MAKE CHANGES</button>

                                            </div>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- main content area end -->
            <!-- footer area start-->
            <?php include '../includes/footer.php' ?>
            <!-- footer area end-->
        </div>
        <!-- page container area end -->
        <!-- offset area start -->
        <div class="offset-area">
            <div class="offset-close"><i class="ti-close"></i></div>


        </div>
        <!-- offset area end -->
        <!-- jquery latest version -->
        <script src="../assets/js/vendor/jquery-2.2.4.min.js"></script>
        <!-- bootstrap 4 js -->
        <script src="../assets/js/popper.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/owl.carousel.min.js"></script>
        <script src="../assets/js/metisMenu.min.js"></script>
        <script src="../assets/js/jquery.slimscroll.min.js"></script>
        <script src="../assets/js/jquery.slicknav.min.js"></script>

        <!-- Start datatable js -->
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
        <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>

        <!-- others plugins -->
        <script src="../assets/js/plugins.js"></script>
        <script src="../assets/js/scripts.js"></script>
    </body>

    </html>

<?php } ?>