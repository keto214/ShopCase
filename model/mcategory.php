<?php
	$url = $_SERVER['REQUEST_URI'];
	if (strlen(strstr($url,"admin")) > 0) {
		include_once"../lib/database.php";
	}else{
		include_once"./lib/database.php";
	}
?>


<?php
	class category{
		private $cate_name;
		private $status;

		public function __construct($cate_name,$status=1)
		{	
			$this->cate_name = $cate_name;
			$this->status = $status;
		}
		public function insert_cate(){
			$db = new Database();
			//ket noi csdl
			$cate_name = mysqli_real_escape_string($db->link,$this->cate_name);

			$query = "select * from category where cate_name = '$this->cate_name'";
			$ketqua = $db->select($query);
			if($ketqua == true){
				$alert = "<h5 style='color: red;padding: 5px;'>Loại sản phẩm đã tồn tại!</h5>";
				return $alert;
			}else{
				$query1 = "INSERT INTO category(cate_name) values('$this->cate_name')";
				$ketqua1 = $db->insert($query1);
				if($ketqua1==true){
					$alert = "<h5 style='color: green;padding: 5px;'>Thêm loại sản phẩm mới thành công!</h5>";
					return $alert;
				}
			}
		}
		public static function get_category(){
			$db = new Database();
			$query = "select * from category order by id";
			$ketqua = $db->select($query);
			return $ketqua;
		}
		public static function getcatebyId($id){
			$db = new Database();
			$query = "select * from category where id = $id";
			$ketqua = $db->select($query);
			return $ketqua;
		}
		public static function update_cate($cate_id,$cate_name){
			$db = new Database();
			$cate_id = mysqli_real_escape_string($db->link,$cate_id);
			$cate_name = mysqli_real_escape_string($db->link,$cate_name);

			$query = "select * from category where cate_name = '$cate_name' and id != $cate_id";
			$ketqua = $db->select($query);
			if($ketqua == true){
				$alert = "<h5 style='color: red;padding: 5px;'>Loại sản phẩm đã tồn tại!</h5>";
				return $alert;
			}else{
				$query1 = "UPDATE category SET cate_name = '$cate_name' WHERE id = $cate_id";
				$ketqua1 = $db->update($query1);
				if($ketqua1==true){
					$alert = "<h5 style='color: green;padding: 5px;'>Sửa loại sản phẩm mới thành công!</h5>";
					return $alert;
				}
			}
		}
		public static function del_category($id){
			$db = new Database();
			$query1 = "select * from category where id=$id";
			$ketqua1 = $db->select($query1);
			if($ketqua1){
				$query = "delete from category where id = $id";
				$ketqua = $db->delete($query);
				if($ketqua){
					echo "<script> alert('Đã xóa thành công loại phẩm') </script>";
				}else{
					echo "<script> alert('Xóa loại sản phẩm thất bại') </script>";
					echo "<script> window.location='catlist.php' </script>";
				}
			}else{
				echo "<script> alert('Xóa loại sản phẩm thất bại') </script>";
				echo "<script> window.location='catlist.php' </script>";
			}
		}
	}
	
?>