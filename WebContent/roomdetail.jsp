<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Yellow Hotel</title>
		<meta charset="utf-8">
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
		<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
		<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
		
		<!--  Javascript tự viết -->
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/slider.js"></script>
		
		
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
	<body id="page4">
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
									<c:forEach items="${listphong }" var="p">
										<h2><img src="images/title_marker1.jpg" alt=""> ${p.tenPhong }</h2>
						
						
											<div id="slider" style="width: 468px; height: 400px; float: left; border: 1px solid #333; position: relative;">
												<img src="${p.anh }" class="slide" stt="0" style="width: 468px; height: 400px;" /> 
												<img src="images/room2.jpg" class="slide" stt="1" style="display: none; width: 468px;height: 400px;"/>
												<img src="images/room3.jpg" class="slide" stt="2" style="display: none; width: 468px;height: 400px;"/>
												<img src="images/room4.jpg" class="slide" stt="3" style="display: none; width: 468px;height: 400px;"/>
												<img src="images/room5.jpg" class="slide" stt="4" style="display: none; width: 468px;height: 400px;"/>
												
												<a href="#" id="prev"style="text-transform: uppercase; top: 170px; left: 10px; position: absolute;"><img src="images/prev1.png" height="69" width="69"></a> 
												<a href="#" id="next" style="text-transform: uppercase; top: 170px; right: 10px; position: absolute;"><img src="images/next1.png" height="69" width="69"></a>
											</div>
						
										<div id="beslide">
											<div class="mota">
												<h2>Mô tả phòng</h2>
												<h4>• ${p.mota1 }</h4>
												<h4>• ${p.mota2 }</h4>
												<h4>• ${p.mota3 }</h4>
												<h4>• ${p.mota4 }</h4>
												<h4>• ${p.mota5 }</h4>
												<h4>• ${p.mota6 }</h4>
												<h4>• ${p.mota7 }</h4>
											</div>
											<div class="tienich">
												<h2>Tiện ích phòng</h2>
												<div class="lefttienich"
													style="float: right; width: 225px; height: 200px;">
													<h4><img src="images/v.png" height="20" width="20" />${p.tienich1 }</h4>
													<h4><img src="images/v.png" height="20" width="20" />${p.tienich2 }</h4>
													<h4><img src="images/v.png" height="20" width="20" />${p.tienich3 }</h4>
													<h4><img src="images/v.png" height="20" width="20" />${p.tienich4 }</h4>
													<h4><img src="images/v.png" height="20" width="20" />${p.tienich5 }</h4>
												</div>
												<div class="righttienichvl">
													<h4><img src="images/v.png" height="20" width="20" />${p.tienich6 }</h4>
													<h4><img src="images/v.png" height="20" width="20" />${p.tienich7 }</h4>
													<h4><img src="images/v.png" height="20" width="20" />${p.tienich8 }</h4>
													<h4><img src="images/v.png" height="20" width="20" />${p.tienich9 }</h4>
													<h4><img src="images/v.png" height="20" width="20" />${p.tienich10 }</h4>
												</div>
											</div>
										</div>
									</c:forEach>
									
								</div>
							</div>
							
							
							<div class="pad">
								<div class="wrapper line3">
									<div class="col2">
										<h2>Các dịch vụ của khách sạn</h2>
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