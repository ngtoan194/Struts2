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
									<div class="col2 pad">
										<h2><img src="images/title_marker1.jpg" alt="">Các mẫu phòng</h2>
										<div class="wrapper line1">
										
											<c:forEach items="${listloai }" var="room">
												<div class="col3">
													<figure class="pad_bot3"><img style="width: 240px; height: 140px;" src="${room.anh }" alt=""></figure>
													<p class="pad_bot1"><strong class="color3">${room.tenLoai }</strong></p>
													<p>${room.moTa }</p>
													
													<s:url var="getRoomURL" value="getroom.html">
														<s:param name="maLoai">${room.maLoai }</s:param>
													</s:url> 
												
													<s:a cssClass="button2" href="%{getRoomURL}">Xem thêm</s:a>
													
													
													
												</div>
											</c:forEach>
											
										</div>
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