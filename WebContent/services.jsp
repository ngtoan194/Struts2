<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Yellow Hotel</title>
		<meta charset="utf-8">
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
		<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
		<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
		<script type="text/javascript" src="js/jquery-1.6.js" ></script>
		<script type="text/javascript" src="js/cufon-yui.js"></script>
		<script type="text/javascript" src="js/cufon-replace.js"></script>  
		<script type="text/javascript" src="js/Adamina_400.font.js"></script>
		<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
		<script type="text/javascript" src="js/script.js" ></script>
		<script type="text/javascript" src="js/atooltip.jquery.js"></script>
		<!--[if lt IE 9]>		
			<script type="text/javascript" src="js/html5.js"></script>
			<link rel="stylesheet" href="css/ie.css" type="text/css" media="all">
		<![endif]-->
		<!--[if lt IE 7]>
			<div style=' clear: both; text-align:center; position: relative;'>
				<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a>
			</div>
		<![endif]-->
	</head>
	<body id="page2">
		<div class="bg1">
			<div class="bg2">
				<div class="main">
<!-- header -->
					<jsp:include page="header.jsp"></jsp:include>
					
					<!-- Menu -->
						<jsp:include page="menu.jsp"></jsp:include>
					<!-- End Menu -->
					
<!-- header end -->
<!-- content -->
						<article id="content">
							<div class="box1">
								<div class="wrapper">
									<form action="#" id="form1">
										<h2>Đặt phòng nhanh</h2>
										<fieldset>
											<div class="row">
												<input type="text" class="input">
												Họ tên
											</div>	
											<div class="row">
												<input type="text" class="input">
												E-Mail
											</div>	
											<div class="row">
												<input type="text" class="input">
												Số điện thoại
											</div>	
											<div class="row">
												<input type="text" class="input">
												Số CMND
											</div>	
											<div class="row">
												<div class="select1"><select><option>Đơn</option><option>Đôi</option><option>...</option></select></div>
												Loại Phòng
											</div>	
											<div class="row">
												<div class="select2"><select><option>&nbsp;</option><option>...</option></select></div>
												<div class="select2"><select><option>&nbsp;</option><option>...</option></select></div>
												<div class="select2"><select><option>&nbsp;</option><option>...</option></select></div>
												Ngày đến
											</div>
											<div class="row">
												<div class="select2"><select><option>&nbsp;</option><option>...</option></select></div>
												<div class="select2"><select><option>&nbsp;</option><option>...</option></select></div>
												<div class="select2"><select><option>&nbsp;</option><option>...</option></select></div>
												Ngày đi
											</div>												
											<div class="row_textarea">
												Ghi chú
												<textarea cols="1" rows="1"></textarea>	
											</div>	
											<div class="wrapper">
												<a href="#" class="button1" onClick="document.getElementById('form1').submit()">Gửi</a>
												<a href="#" class="button1" onClick="document.getElementById('form1').reset()">Xóa</a>
											</div>
										</fieldset>
									</form>
									<div class="col2 pad">
										<h2><img src="images/title_marker1.jpg" alt="">Dịch vụ nổi bật</h2>
										<div class="wrapper pad_bot2">
											<figure class="left marg_right1"><img src="images/page2_img1.jpg" alt=""></figure>
											<p class="pad_bot1"><strong class="color3">Quầy bar</strong><br>
													Quầy bar thường là nơi khách hàng lui tới để thư giãn, trò chuyện và thưởng thức các loại rượu, cocktails.</p>
											<a href="#" class="color1">Xem thêm</a>
										</div>
										<div class="wrapper">
											<figure class="left marg_right1"><img src="images/page2_img2.jpg" alt=""></figure>
											<p class="pad_bot1"><strong class="color3">Dịch vụ Spa </strong><br>
											Với những khách sạn tặng thêm dịch vụ Spa đi kèm với tiền phòng, sẽ khiến cho khách hàng ưu ái chọn dịch vụ của khách sạn nhiều hơn..</p>
											<a href="#" class="color1">Xem thêm</a>
										</div>
									</div>
								</div>
							</div>
							<div class="pad">
								<div class="wrapper line3">
									<div class="col2">
										<h2>Dịch vụ chính</h2>
										<p class="pad_bot1"><strong class="color2">SỨC KHỎE VÀ AN TOÀN CỦA KHÁCH</strong> </p>
										<p class="pad_bot1">
												Quý khách có thể hoàn toàn tin tưởng vào hệ thống báo cháy và các trang thiết bị chữa cháy của khách sạn cũng như hệ thống an ninh trong phòng quý khách. Khóa từ và các biện pháp an toàn được trang bị cho mỗi phòng theo tiêu chuẩn 5 sao.</p>
										<p class="pad_bot1">
												Khách sạn được trang bị một hệ thống điều hòa nhiệt độ cùng với bộ cửa ra vào và cửa sổ chống ngăn tiếng ồn được sản xuất bởi công ty Euro Window, sẽ giúp bạn không bị quấy rầy hay thức giấc bởi âm thanh từ đường phố.</p>
										<div class="wrapper pad_bot2">
											<div class="col1">
												<ul class="list1">
													<li><a href="#">Bể bơi 4 mùa</a></li>
													<li><a href="#">Fitness center</a></li>
													<li><a href="#">Dịch vụ văn phòng</a></li>
													<li><a href="#">Dịch vụ giặt ủi quần áo</a></li>
												</ul>
											</div>
											<div class="col1 pad_left1">
												<ul class="list1">
													<li><a href="#">Dịch vụ phòng 24/24</a></li>
													<li><a href="#">Dịch vụ cho thuê tự lái</a></li>
													<li><a href="#">Dịch vụ xe đưa đón sân bay</a></li>
													<li><a href="#">Dịch vụ đặt vé máy bay, tour du lịch</a></li>
												</ul>
											</div>
										</div>
										<a href="#" class="button1">Xem thêm</a>
									</div>
									<div class="col1 pad_left1">
										<h2>Ưu đãi đặc biệt</h2>
										<div class="wrapper">
											<figure class="left marg_right1"><img src="images/page2_img3.jpg" alt=""></figure>
											<p class="pad_bot1"><strong class="color2">Đặt trước phòng VIP 10 này</strong></p>
											<p class="pad_bot1">Được miễn phí vào tập Fitness center và bể bơi 4 mùa.</p>
										</div>
										<div class="wrapper">
											<figure class="left marg_right1"><img src="images/page2_img4.jpg" alt=""></figure>
											<p class="pad_bot1"><strong class="color2">Đặt trước phòng loại thường 10 này</strong></p>
											<p class="pad_bot2">Được khách sạn miễn phí đưa đón sân bay/ bến xe.</p>
										</div>
										<a href="#" class="button1">Xem thêm</a>
									</div>
								</div>
							</div>
						</article>
<!--content end-->
					</div>
				</div>
			</div>
		</div>
		<div class="main">
<!-- footer -->
			<footer>
				<div class="col2">
					Yellow Hotel &copy; 2011 <a rel="nofollow" href="https://www.facebook.com/ngtoan194" target="_blank">Website Template</a> by Yellow Team
					
					<!-- Menu Footer -->
						<jsp:include page="menufooter.jsp"></jsp:include>
					<!-- End Menu Footer -->
					
				</div>
				<div class="col1 pad_left1">
					<ul id="icons">
						<li><a href="#" class="normaltip" title="Linkedin"><img src="images/icon1.jpg" alt=""></a></li>
						<li><a href="https://www.facebook.com/ngtoan194" class="normaltip" title="Facebook"><img src="images/icon2.jpg" alt=""></a></li>
						<li><a href="#" class="normaltip" title="Picasa"><img src="images/icon3.jpg" alt=""></a></li>
						<li><a href="#" class="normaltip" title="Twitter"><img src="images/icon4.jpg" alt=""></a></li>
					</ul>
				</div>				
				<!-- {%FOOTER_LINK} -->
			</footer>
<!-- footer end -->
		</div>
		<script type="text/javascript"> Cufon.now(); </script>
	</body>
</html>