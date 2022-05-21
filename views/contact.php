<?php
	if($_SERVER['REQUEST_METHOD']==="POST" && isset($_POST['contact'])){
		$ct = new contact($_POST['name'],$_POST['email'],$_POST['phone'],$_POST['content']);
		$ketqua = $ct->insert_contact();
		if(isset($ketqua)){
			echo $ketqua;
		}
	}
?>
<div class="content">
	<div class="support">
		<div class="support_desc">
			<h3>LIÊN HỆ</h3>
		</div>
			<img src="web/images/contact.png" alt="" />
		<div class="clear"></div>
	</div>
	<div class="section group">
		<div class="col span_2_of_3">
			<div class="contact-form">
				<form action="" method="post">
					<div>
						<span><label>HỌ VÀ TÊN:</label></span>
						<span><input type="text" name="name" value="" placeholder="Họ và tên" required></span>
					</div>
					<div>
						<span><label>E-MAIL</label></span>
						<span><input type="text" name="email" value="" placeholder="Email"  required></span>
					</div>
					<div>
						<span><label>SỐ ĐIỆN THOẠI</label></span>
						<span><input type="text" name="phone" value="" placeholder="Số điện thoại"  required></span>
					</div>
					<div>
						<span><label>NỘI DUNG</label></span>
						<span><textarea required name="content"  placeholder="Nội dung liên hệ" ></textarea></span>
					</div>
					<div>
						<span><input type="submit" name="contact" value="GỬI"></span>
					</div>
				</form>
			</div>
		</div>
		<div class="col span_1_of_3">
		<div class="company_address">
				<h2>Thông tin cửa hàng :</h2>
						<p>Địa chỉ: 280 An Dương Vương</p>
						<p>Phường 4, Quận 5,</p>
						<p>Thành Phố Hồ Chí Minh</p>
				<p>Số điện thoại:(+84) 702982792</p>
				<p>Email: <a href="mailto:hoangquanketo214@gmail.com">hoangquanketo214@gmail.com</a></p>
				<p>Theo dõi chúng tôi: <a href="https://www.facebook.com/long.thuy.526/">Facebook</a></p>
			</div>
		</div>
	</div>    	
</div>

<!-- Chỉnh sửa layout -->