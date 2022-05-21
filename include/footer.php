</div>
   <div class="footer">
   	  <div class="wrapper">	
	     <div class="section group">
			<div class="col_1_of_4 span_1_of_4">
				<h4><a href="callto:0702982792"><i class="fa-solid fa-phone-volume"></i> <br> 0702982792</a></h4>					
			</div>
			<div class="col_1_of_4 span_1_of_4">
				<h4><a href="mailto:hoangquanketo214@gmail.com"><i class="fa-solid fa-envelope"></i> <br> Email</a></h4>
			</div>
			<div class="col_1_of_4 span_1_of_4">
				<h4><a href="https://www.facebook.com/long.thuy.526/"><i class="fa-brands fa-facebook-messenger"></i> <br> Nhắn tin</a></h4>
			</div>
			<div class="col_1_of_4 span_1_of_4">
				<h4><a href="?request=contact"><i class="fa-solid fa-circle-question"></i> <br> Hỗ trợ</a></h4>
			</div>
		</div>
     </div>
    </div>
	<style>
		.footer a{
			text-decoration: none;
			color: white
		}
		.footer a:hover{
			color: yellow
		}
		.col_1_of_4 {
			text-align: center;
		}
		.col_1_of_4 a{
			display: block;
		}
	</style>
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
	  			containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
	 		};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
    <link href="css/flexslider.css" rel='stylesheet' type='text/css' />
	  <script defer src="js/jquery.flexslider.js"></script>
	  <script type="text/javascript">
		$(function(){
		  SyntaxHighlighter.all();
		});
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	  </script>
</body>
</html>
