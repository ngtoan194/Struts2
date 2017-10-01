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

						<!-- End Box Head -->

						<!-- Table -->
						<div class="table1">

							<h1 class="tieude">Sửa loại phòng:</h1>
							
							
									
							<s:form action="process-adminQLLPupdate.html" method="post" enctype="multipart/form-data">
								<s:actionerror/>		
								
								
																			
								<table>
									<tr>
										<td>Mã loại phòng:</td>
										<td> <a style="text-decoration: none;">${loaiphong.maLoai }</a> </td>
										<td><input type="hidden" name="loaiphong.maLoai" value="${loaiphong.maLoai }" ></td>
									</tr>
									<tr>
										<td>Tên loại phòng:</td>
										<td><input type="text" name="loaiphong.tenLoai" value="${loaiphong.tenLoai }"></td>
									</tr>
									<tr>
										<td>Mô tả:</td>
										<td><textarea name="loaiphong.moTa" rows="4" cols="20">${loaiphong.moTa }</textarea> </td>
									</tr>
									<tr>
										<td><s:submit name="sumbit" value="Sửa" /></td>
									</tr>
								</table>
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