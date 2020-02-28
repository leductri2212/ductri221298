<?php
    include_once("View/Header.php");
?>
    
    <!--Start Main-->

    <div id="page" class="box">
        <div id="page-in" class="box">

            <!-- Content -->
            <div id="content">
            <?php                    
                    if(isset($_GET["mod"]))
                    {
                         $a = ucfirst($_GET['mod']);
                         $b = ucfirst($_GET['act']);
                        include_once("Controller/".$a."/".$b.".php");
                        // $x = "Controller/".$a."/".$b.".php";
                        // echo "<script>console.log('$x');</script>";
                    }
                    else
                    {
                        include_once("Controller/Products/Manage.php");
                    }
            ?>
            </div> <!-- /content -->

            <!-- Right column -->
            <div id="col" style="float: left; width: 250px; margin-left: 30px; border-right: 1px solid #ddd; min-height: 400px;">
                <div id="col-in">
                    <center><h2 style="color: #5a88ca;">Danh mục quản lý</h2></center><br>
                    <ol id="archive" style="list-style-type: "> 
                        <li><a href="admin.php?mod=products&act=manage">Quản lý sản phẩm</a></li>
                        <li><a href="admin.php?mod=user&act=manage">Quản lý thành viên</a></li>
                        <li><a href="admin.php?mod=category&act=manage">Quản lý thể loại</a></li>
                        <li><a href="admin.php?mod=manufacturer&act=manage">Quản lý nhà cung cấp</a></li>
                        <li><a href="admin.php?mod=group&act=manage">Quản lý nhóm</a></li>
                        <li><a href="admin.php?mod=order&act=manage">Quản lý đơn hàng</a></li>
                    </ol>
                    
                    </div> <!-- /col-in -->
            </div> <!-- /col -->


        </div> <!-- /page-in -->
        </div> <!-- /page -->
    <!--End content-->

<div style="clear: both;"></div>
     <!--End Main-->
    
    <!--Start Footer-->
    <?php
        include_once("View/Footer.php");
    ?>

<?php
    ob_end_flush();
?>