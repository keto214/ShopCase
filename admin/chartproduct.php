<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include"../model/mslider.php"; ?>
<?php
	if($_SERVER['REQUEST_METHOD']==="POST" && $_POST['add_slider']){
        $name = $_POST['sl_name'];
        $img = $_POST['sl_image'];
        $st = $_POST['sl_status'];

        $them = new slider($name,$img,$st);
        $ketqua = $them->add_slider();
        if($ketqua){
            echo $ketqua;
        }
	}
?>

<div class="grid_10">
    <div class="box round first grid add_pro">
        <h2>Tỉ lệ sản phẩm</h2>
        <?php
  $con = mysqli_connect("localhost","root","","shopcase");
  if($con){
   // echo "connected";
  }
?>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['cate_name', 'status'],
         <?php
         $sql = "SELECT * FROM category";
         $fire = mysqli_query($con,$sql);
          while ($result = mysqli_fetch_assoc($fire)) {
            echo"['".$result['cate_name']."',".$result['status']."],";
          }

         ?>
        ]);

        var options = {
          title: 'Tỉ lệ sản phẩm'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
  
    <div id="piechart" style="width: 900px; height: 500px;"></div>
  
    </div>
</div>