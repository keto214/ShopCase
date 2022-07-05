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
        <h2>Số lượng Orders</h2>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <?php 
  $con = new mysqli('localhost','root','','shopcase');
  $query = $con->query("
    SELECT 
      *
    FROM cart
  ");

  foreach($query as $data)
  {
    $productname[] = $data['product_name'];
    $amount[] = $data['amount'];
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
      label: 'Số lượng',
      data: <?php echo json_encode($amount) ?>,
      fill: false,
      borderColor: 'rgb(75, 192, 192)',
      tension: 0.1
    }]
  };

  const config = {
  type: 'line',
  data: data,
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


