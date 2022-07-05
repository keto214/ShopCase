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
        <h2>Thống kê giá tiền sản phẩm</h2>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <?php 
  $con = new mysqli('localhost','root','','shopcase');
  $query = $con->query("
    SELECT 
      *
    FROM product
  ");

  foreach($query as $data)
  {
    $productname[] = $data['product_name'];
    $price[] = $data['price'];
  }

?>


<div style="width: 1000px; height: 900px;">
  <canvas id="myChart"></canvas>
</div>
 
<script>
  // === include 'setup' then 'config' above ===
  const labels = <?php echo json_encode($productname) ?>;
  const data = {
    labels: labels,
    datasets: [{
      label: 'VNĐ',
      data: <?php echo json_encode($price) ?>,
      backgroundColor: [
        'rgba(255, 99, 132, 0.2)',
        'rgba(255, 159, 64, 0.2)',
        'rgba(255, 205, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(201, 203, 207, 0.2)'
      ],
      borderColor: [
        'rgb(255, 99, 132)',
        'rgb(255, 159, 64)',
        'rgb(255, 205, 86)',
        'rgb(75, 192, 192)',
        'rgb(54, 162, 235)',
        'rgb(153, 102, 255)',
        'rgb(201, 203, 207)'
      ],
      borderWidth: 1
    }]
  };

  const config = {
    type: 'bar',
    data: data,
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    },
  };

  var myChart = new Chart(
    document.getElementById('myChart'),
    config
  );
</script>

    </div>
</div>
<!-- Load TinyMCE -->
<script>
    function previewFile() {
        link = document.getElementById("image").value;
        document.getElementById("blah").src = link;
    }
</script>
<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
<!-- Load TinyMCE -->
<?php include 'inc/footer.php';?>
<style>
    .add_pro input[type=text], textarea, select{
        width: 60%;
        padding: 12px;
        font-family: Arial, Helvetica, sans-serif;
    }
    .add_pro input[type=submit]:hover{
        opacity: 0.6;
    }
</style>


