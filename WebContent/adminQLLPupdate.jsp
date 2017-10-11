<%@page import="entities.LoaiPhong"%>
<%@ page pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>Dashboard Yellow Hotel</title>
<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
</head>
<body>
	<!-- Header -->
		<jsp:include page="adminheader.jsp"></jsp:include>
	<!-- End Header -->

	<!-- Container -->
	<div id="container">
		<div class="shell">
			<!-- Main -->
			<div id="main">
				<div class="cl">&nbsp;</div>

				<!-- Content -->
				<div id="content">
					<!-- Box -->
					<div class="box">
						<!-- Box Head -->
						<div class="box-head">
							<div class="left">
								<img src="css/images/back.png"> <a href="adminQLLP.html">Trở về</a>
							</div>
						</div>
						<!-- End Box Head -->

						<!-- Table -->
						<div class="table1">

							<h1 class="tieude">Sửa loại phòng:</h1>
							
							
									
							<s:form action="process-adminQLLPupdate.html" method="post" enctype="multipart/form-data">
								<s:actionerror/>		
								
								<s:textfield label="Mã loại phòng" name="loaiphong.maLoai" readonly="true" />
								<s:textfield label="Tên loại phòng" name="loaiphong.tenLoai" />
								<s:textfield label="Mô  tả" name="loaiphong.moTa" />
								<s:submit value="Sửa" />																
							</s:form>

						</div>
						<!-- Table -->
					</div>
					<!-- End Box -->

				</div>
				<!-- End Content -->

				<div class="cl">&nbsp;</div>
			</div>
			<!-- Main -->
		</div>
	</div>
	<!-- End Container -->

</body>
</html>