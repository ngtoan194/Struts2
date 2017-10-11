<%@ page pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>Dashboard Yellow Hotel</title>
<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
<s:head/>
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
						
							<h1 class="tieude">Thêm loại phòng mới:</h1>
							<s:form action="process-adminQLLPaddnew.html" method="post">
								<s:textfield name="loaiphong.maLoai" label="Mã loại phòng" />
								<s:textfield name="loaiphong.tenLoai" label="Tên loại phòng" />
								<s:textarea cols="21" rows="4" name="loaiphong.moTa" label="Mô tả" />
								<s:submit value="Thêm mới" />
								<s:actionerror/>
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