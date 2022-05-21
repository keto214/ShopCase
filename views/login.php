<?php
	if($_SERVER['REQUEST_METHOD']==="POST" && isset($_POST['register'])){
		$name = $_POST['rg_name'];
		$email = $_POST['rg_email'];
		$pass = $_POST['rg_pass1'];
		$phone = $_POST['rg_phone'];
		$address = $_POST['rg_address'];
		$register = new user($name,$email,$pass,$phone,$address);
		$ketqua = $register->insert_user();
		echo "<meta http-equiv='refresh' content='0'>";
		if(isset($ketqua)){
			echo $ketqua;
		}
	}
?>
<?php
	if($_SERVER['REQUEST_METHOD']==="POST" && isset($_POST['dangnhap'])){
		$taikhoan = $_POST['username'];
		$matkhau = $_POST['password'];
		$dangnhap = user::login_user($taikhoan,$matkhau);
		if($dangnhap){
			echo $dangnhap;
		}
	}
?>
<div class="content">
	<div class="login_panel">
		<h3>Đã có tài khoản</h3>
		<p>Đăng nhập bên dưới</p>
		<form action="" method="post" id="member" class='fm_login'>
			<input name="username" type="text" placeholder="Username" class="field" required>
			<input name="password" type="password" placeholder="Password" class="field" required >
			<p class="note">Nếu quên mật khẩu thì bấm <a href="#">quên mật khẩu</a></p>
			<div class="buttons">
				<div style="color: red;font-weight: bold;">
					<input id="login" type="submit" name="dangnhap" class="button" value="Đăng nhập"/>
				</div>
			</div>
		</form>
		
	</div>
	<div class="register_account">
		<h3>Đăng ký tài khoản mới</h3>
		<form method="post" class="fm_register">
			<table>
				<tbody>
					<tr>
						<td>
							<div>
								<input type="text" name="rg_name" placeholder="Họ tên..." required>
							</div>							
							<div>
								<input type="text" name="rg_phone" placeholder="Số điện thoại" required required pattern="\d{10}" title="Số điện thoại phải đủ 10 số">
							</div>							
							<div>
								<input type="password" id="password" name="rg_pass1" placeholder="Mật khẩu" required required pattern=".{6,}" title="Mật khẩu phải từ 6 ký tự trở lên">
							</div>
						</td>
						<td>
							<div>
								<input type="text" name="rg_email" placeholder="Email" required pattern=".+@.+(\.[a-z]{2,3}){1,2}" title="Email của bạn không đúng định dạng">
							</div>
							<div>
								<input type="text" name="rg_address" placeholder="Địa chỉ" required>
							</div>							
							<div>
								<input type="password" id="re-password" name="rg_pass2" placeholder="Xác nhận mật khẩu" required oninput="checkPass()">
								<span id="checkPass" style="color: red"></span> <br> <br>
								<script>
									function checkPass(){
										var pass1 = document.getElementById('password').value
										var pass2 = document.getElementById('re-password').value
										if(pass1!= pass2){
											document.getElementById("checkPass").innerHTML = "Confirm password incorrect!"
											document.getElementById("register").style.display = 'none';
										}else{
											document.getElementById("checkPass").innerHTML = "";
											document.getElementById("register").style.display = 'block';
										}
									}
								</script>
							</div>
						</td>
					</tr> 
				</tbody>
			</table> 
			<div class="search">
				<div>
					<input name="register" type="submit" id="register" value="Tạo tài khoản" class="button"/>
					<br> <br>
					<style>
						#register,#login{
							padding: 10px 20px;
							border: none;
							border-radius: 4px;
							background-color:lightskyblue;
							cursor: pointer;
						}
						#register:hover,#login:hover{
							opacity: 0.6;
						}
					</style>
				</div>
			</div>
			
			<div class="clear"></div>
		</form>
	</div>  	
	<div class="clear"></div>
</div>

<style>
	.fm_register input[type=password],input[type=text]{
		font-size: 16px!important;
		color: black!important;
		padding: 8px;
		outline: none;
		margin: 5px 0;
		width: 340px;
	}
	.fm_login input[type=password]{
		font-size: 16px!important;
		padding: 8px;
		outline: none;
		margin: 5px 0;
	}
	.fm_register input[type=text]:focus, input[type=password]:focus {
		color: black
	}
	.fm_login input[type=text]:focus, input[type=password]:focus {
		color: black
	}
</style>