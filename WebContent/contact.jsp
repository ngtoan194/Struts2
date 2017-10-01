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
	<body id="page5">
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
									</form>>
									<div class="col2 pad">
									
									
										<h2><img src="images/title_marker1.jpg" alt="">Liên hệ</h2>
										<form id="ContactForm" action="contact.html" method="post">
											<div>
												<div  class="wrapper">
													<input style="border: 1px solid;" type="text" class="input" placeholder="Tên của bạn" name="subject">						
												</div>
												<div  class="wrapper">
													<input style="border: 1px solid;" type="text" class="input" placeholder="Email của bạn" name="from">
												</div>
												<div  class="wrapper">
													<input style="border: 1px solid;" type="hidden" class="input" placeholder="Email hotel" name="to" value="toanndph04367@fpt.edu.vn">
												</div>
												<div  class="textarea_box">
													<textarea style="border: 1px solid;" name="body" placeholder="Nội dung gửi đến chúng tôi" cols="1" rows="1" ></textarea>								
												</div>
												<div  class="wrapper">
													<input type="submit" value="Gửi" class="button2" style="float: right;">								
												</div>
											</div>
										</form>
										
										
										
									</div>
								</div>
								
							</div>
							<div class="pad">
								<h2>Our Contacts</h2>
								<div class="line2"><div class="wrapper line3">
									<div class="col1">
										<p class="pad_bot1"><strong class="color2">USA</strong></p>
										<p class="pad_bot1">8901 Marmora Road, Glasgow, D04</p>
										<p class="cols">
												Freephone:<br>
												Telephone:<br>
												Fax:<br>
												Email:</p>
										+1 800 559 6580<br>
										+1 800 603 6035<br>
										+1 800 889 9898<br>
										<a href="mailto:" class="color1">mail@demolink.org</a>
									</div>
									<div class="col1 pad_left1">
										<p class="pad_bot1"><strong class="color2">Canada</strong></p>
										<p class="pad_bot1">8901 Marmora Road, Glasgow, D04</p>
										<p class="cols">
												Freephone:<br>
												Telephone:<br>
												Fax:<br>
												Email:</p>
										+1 800 559 6580<br>
										+1 800 603 6035<br>
										+1 800 889 9898<br>
										<a href="mailto:" class="color1">mail@demolink.org</a>
									</div>
									<div class="col1 pad_left1">
										<p class="pad_bot1"><strong class="color2">Mexico</strong></p>
										<p class="pad_bot1">8901 Marmora Road, Glasgow, D04</p>
										<p class="cols">
												Freephone:<br>
												Telephone:<br>
												Fax:<br>
												Email:</p>
										+1 800 559 6580<br>
										+1 800 603 6035<br>
										+1 800 889 9898<br>
										<a href="mailto:" class="color1">mail@demolink.org</a>
									</div>
								</div></div>
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
				<div class="col2">Lounge Hotel &copy; 2011 <a rel="nofollow" href="http://www.templatemonster.com/" target="_blank">Website Template</a> by TemplateMonster.com
					
					<!-- Menu Footer -->
						<jsp:include page="menufooter.jsp"></jsp:include>
					<!-- End Menu Footer -->
					
				</div>
				<div class="col1 pad_left1">
					<ul id="icons">
						<li><a href="#" class="normaltip" title="Linkedin"><img src="images/icon1.jpg" alt=""></a></li>
						<li><a href="#" class="normaltip" title="Facebook"><img src="images/icon2.jpg" alt=""></a></li>
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