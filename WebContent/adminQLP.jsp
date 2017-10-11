<%@ page pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<head>
<jsp:include page="adminhead.jsp"></jsp:include>
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
								<img src="css/images/add.png"> <a
									href="adminQLPaddnew.html">Thêm</a>
							</div>
							<div class="right">
								<img src="css/images/search.png"> <a
									href="adminQLLPsearch.html">Tìm kiếm</a>
							</div>
						</div>
						<!-- End Box Head -->
						<div>
						
							<display:table id="adminroom2Table" name="listPhong" varTotals="phong" pagesize="5" cellpadding="5px;"
								cellspacing="5px;" style="margin-top:20px;" requestURI="">
									<display:column property="loaiPhong.maLoai" title="Mã loại phòng"/>
									<display:column property="maPhong" title="Mã phòng"/>
									<display:column property="tenPhong" title="Tên phòng"/>
									<display:column property="slphong" title="Số lượng phòng"/>
									<display:column property="slnguoi" title="Số lượng người"/>
									<display:column property="gia" title="Giá"/>
							</display:table>
						
							
						</div>
						<!-- Table -->
						<div class="table1">
							<table width="100%" border="0" cellspacing="0" cellpadding="0"
								bordercolor="black">
								<tr>
									<th>Mã loại phòng</th>
									<th>Mã phòng</th>
									<th>Tên phòng</th>
									<th>Số lượng phòng</th>
									<th>Số người</th>
									<th>Giá</th>
									<th>Tùy chọn</th>
								</tr>

								<c:forEach var="phong" items="${listPhong }">
									<tr>
										<td>${phong.loaiPhong.maLoai }</td>
										<td>${phong.maPhong }</td>
										<td>${phong.tenPhong }</td>
										<td>${phong.slphong }</td>
										<td>${phong.slnguoi }</td>
										<td>${phong.gia }</td>	
										<td>Sửa | Xóa</td>							
									</tr>
								</c:forEach>

							</table>
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