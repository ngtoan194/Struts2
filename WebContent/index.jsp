﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body id="page1">
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
									<div class="kwicks-wrapper marg_bot1">
										<ul class="kwicks horizontal">
											<li><img src="images/img1.jpg" alt=""></li>
											<li><img src="images/img2.jpg" alt=""></li>
											<li><img src="images/img3.jpg" alt=""></li>
											<li><img src="images/img4.jpg" alt=""></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="pad">
								<div class="wrapper line3">
									<div class="col2">
										<h2>Chào mừng đến với khách sạn của chúng tôi!</h2>
										<p class="pad_bot1"><strong class="color2">Yellow Hotel</strong><br>
												Không chỉ làm hài lòng Quý khách bởi hệ thống phòng nghỉ sang trọng cùng các trang thiết bị hiện đại, Khách sạn còn cung cấp các dịch vụ phong phú và tiện nghi như: Nhà hàng, Phòng họp, dịch vụ cho thuê Văn phòng, sân Tennis, Sauna & Massage, trung tâm Thể hình, Sòng bạc và các dịch vụ giải trí. Tại đây, Quý khách được thưởng thức các món ẩm thực tinh tế mang đậm phong cách truyền thống và được đảm nhiệm bởi các đầu bếp chuyên nghiệp, tài hoa cùng với phong cách phục vụ chuyên nghiệp, nhiệt tình và thân thiện của đội ngũ nhân viên giàu kinh nghiệm. Tất cả đã góp phần làm nổi danh một thương hiệu Khách sạn. </p>
									</div>
									<div class="col1 pad_left1">
										<h2>Về chúng tôi</h2>
										<div class="wrapper">
											<figure class="left marg_right1"><img src="images/page1_img1.jpg" alt=""></figure>
											<p class="pad_bot1"><strong class="color2">10.10.2011</strong></p>
											<p class="pad_bot2">
													Với phương châm "Khách gọi là có, khách khó không nản".</p>
										</div>
										<a href="#" class="button1">Xem thêm...</a>
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
		<script>
			$(document).ready(function(){
				$('.kwicks').kwicks({
					max : 500,
					spacing : 0,
					event : 'mouseover'
				});
							   
			})
		</script>
	</body>
</html>