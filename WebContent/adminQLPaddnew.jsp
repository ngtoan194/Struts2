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

						<!-- End Box Head -->

						<!-- Table -->
						
						<div class="table1">
						
							<h1 class="tieude">Thêm phòng mới:</h1>
							<s:form action="process-adminQLPaddnew.html" method="post">
								<s:actionerror/>
								<s:select label="Mã loại phòng" list="listml" name="phong.loaiPhong.maLoai" 
									listKey="loaiPhong.maLoai" listValue="loaiPhong.maLoai" 
										headerKey="-1" headerValue="--- Chọn ---" />	
								
								<s:textfield name="phong.maPhong" label="Mã phòng" />
								<s:textfield name="phong.tenPhong" label="Tên loại phòng" />
								<s:textfield name="phong.slphong" label="Số lượng phòng" />
								<s:textfield name="phong.slnguoi" label="Số lượng người" />
								<s:textfield name="phong.gia" label="Giá" />
								<s:submit value="Thêm mới" />
								
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