<%@ page pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

						<!-- Table -->
						<div class="table1">
							<s:form action="process-adminQLLPsearch" method="post">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" bordercolor="black">
									<tr>
										<td><input type="text" name="tenLoai" placeholder="Tên loại phòng" ></td>
										<td><input type="submit" value="Search"></td>
									</tr>
									<tr>
										<th>Mã loại phòng</th>
										<th>Tên loại phòng</th>
										<th>Mô tả</th>
										<th>Ảnh</th>
									</tr>
									<c:choose>
										<c:when test="${not empty listRoom }">
											<c:forEach var="room" items="${listRoom }">
												<tr class="odd">
													<td>${room.maLoai }</td>
													<td>${room.tenLoai }</td>
													<td>${room.moTa }</td>
													<td>${room.anh }</td>
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td colspan="4"><% out.println("Không có dữ liệu"); %></td>
											</tr>
										</c:otherwise>
									</c:choose>
								</table>
							</s:form>

							<!-- Pagging -->
							<div class="pagging">
								<div class="left">Showing 1-12 of 44</div>
								<div class="right">
									<a href="#">1</a> 
									<a href="#">2</a> 
									<a href="#">3</a> 
									<a href="#">4</a>
								</div>
							</div>
							<!-- End Pagging -->
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