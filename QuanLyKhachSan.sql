USE master
GO

DROP DATABASE QuanLyKhachSan
GO

CREATE DATABASE QuanLyKhachSan
GO

USE QuanLyKhachSan
GO


DROP TABLE DatCoc
DROP TABLE DatPhong
DROP TABLE ThanhToan
DROP TABLE SuDungDV
DROP TABLE DichVu
DROP TABLE KhachHang
DROP TABLE NhanVien
DROP TABLE TaiKhoan
DROP TABLE Phong
DROP TABLE LoaiPhong
Go


CREATE TABLE LoaiPhong(
		MaLoai			varchar(7) NOT NULL,
		TenLoai			nvarchar(20) NOT NULL,
		MoTa			nvarchar(max),
		anh				varchar(max),

		CONSTRAINT PK_MaLoai PRIMARY KEY (MaLoai)
);
GO

CREATE TABLE Phong (
		MaLoai			varchar(7)				NOT NULL,
		MaPhong			varchar(7)				NOT NULL,
		TenPhong		nvarchar(20)			NOT NULL,
		Anh				varchar(max),
		Gioithieu		nvarchar(MAX),
		slphong			INT,
		slnguoi			INT,
		gia				float,
		mota1			nvarchar(max),
		mota2			nvarchar(max),
		mota3			nvarchar(max),
		mota4			nvarchar(max),
		mota5			nvarchar(max),
		mota6			nvarchar(max),
		mota7			nvarchar(max),
		tienich1		nvarchar(max),
		tienich2		nvarchar(max),
		tienich3		nvarchar(max),
		tienich4		nvarchar(max),
		tienich5		nvarchar(max),
		tienich6		nvarchar(max),
		tienich7		nvarchar(max),
		tienich8		nvarchar(max),
		tienich9		nvarchar(max),
		tienich10		nvarchar(max),
		
		CONSTRAINT PK_MaPhong PRIMARY KEY  (MaPhong),
		CONSTRAINT FK_MaLoai FOREIGN KEY (MaLoai) REFERENCES LoaiPhong(MaLoai)
);
GO

CREATE TABLE TaiKhoan(
		MaTK			varchar (7) NOT NULL,
		Username		varchar(20) NOT NULL,
		Pass			varchar(20) NOT NULL,
		TypeTK			bit,
		TrangThai		bit,
		
		CONSTRAINT PK_MaTK PRIMARY KEY (MaTK)
);
GO

CREATE TABLE NhanVien (
		MaNV			varchar(7)  NOT NULL,
		MaTK			varchar (7) NOT NULL,
		HoTenNV			nvarchar(30)  NOT NULL,
		GioiTinh		bit  NOT NULL,
		DiaChi			nvarchar(50)  NOT NULL,
		SDT				varchar(11)  NOT NULL,
		Email			varchar(20)  NOT NULL,
		TrangThai		bit,
		
		CONSTRAINT PK_MaNV PRIMARY KEY  (MaNV),
		CONSTRAINT FK_TaiKhoan_NhanVien FOREIGN KEY (MaTK) REFERENCES TaiKhoan(MaTK)
);
GO

CREATE TABLE KhachHang (
		MaKH			varchar(7)  NOT NULL,
		MaTK			varchar (7) NOT NULL,
		HoTen			nvarchar(30)  NOT NULL,
		GioiTinh		bit  NOT NULL,
		DiaChi			nvarchar(50)  NOT NULL,
		SDT				varchar(11)  NOT NULL,
		Email			varchar(20)  NOT NULL,
		CMND			varchar(15)  NOT NULL,
		
		CONSTRAINT PK_MaKH PRIMARY KEY (MaKH),
		CONSTRAINT FK_TaiKhoan_KhachHang FOREIGN KEY (MaTK) REFERENCES TaiKhoan(MaTK)
);
GO

CREATE TABLE DichVu (
		MaDV			varchar(7)  NOT NULL,
		TenDV			nvarchar(20)  NOT NULL,
		DVT				nvarchar(5)  NOT NULL,
		GiaDV			money  NOT NULL,    
		MoTa			nvarchar(20)  NOT NULL,
		
		CONSTRAINT PK_MaDV PRIMARY KEY  (MaDV)
);
GO

CREATE TABLE SuDungDV (
		MaSDDV			varchar(7)  NOT NULL,
		MaKH			varchar(7)  NULL,
		MaDV			varchar(7)  NULL,
		SoLuong			int  NOT NULL,
		SoNguoi			int  NOT NULL,
		TongTien		float  NOT NULL,
		GhiChu nvarchar(20)  NOT NULL,
		
		CONSTRAINT PK_MaSDDV PRIMARY KEY  (MaSDDV),
		CONSTRAINT FK_KhachHang_SuDungDV FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
		CONSTRAINT FK_DichVu_SuDungDV FOREIGN KEY (MaDV) REFERENCES DichVu(MaDV)
);
GO

CREATE TABLE ThanhToan (
		MaHD			varchar(7)  NOT NULL,
		MaKH			varchar(7)  NULL,
		MaSDDV			varchar(7)  NULL,
		MaPhong			varchar(7)  NULL,
		NgayTT			datetime  NOT NULL,
		TongTien		float  NOT NULL,
		GhiChu			nvarchar(20)  NOT NULL,
		
		CONSTRAINT PK_MaHD PRIMARY KEY  (MaHD),
		CONSTRAINT FK_KhachHang_ThanhToan FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
		CONSTRAINT FK_SuDungDV_ThanhToan FOREIGN KEY (MaSDDV) REFERENCES SuDungDV(MaSDDV),
		CONSTRAINT FK_Phong_MaPhong FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong)
);
GO

CREATE TABLE DatPhong (
		MaDP			varchar(7)  NOT NULL,
		MaKH			varchar(7)  NOT NULL,
		MaLoai			varchar(7)  NOT NULL,
		NgayDP			datetime  NOT NULL,
		NgayDen			datetime NOT NULL,
		NgayDi			datetime  NOT NULL,    
		slNguoi			int  NOT NULL,
		
		CONSTRAINT PK_MaDP PRIMARY KEY  (MaDP),
		CONSTRAINT FK_KhachHang_DatPhong FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
		CONSTRAINT FK_LoaiPhong_DatPhong FOREIGN KEY (MaLoai) REFERENCES LoaiPhong(MaLoai)
);
GO

CREATE TABLE DatCoc(
		MaDC			varchar(7) NOT NULL,
		MAKH			varchar(7) NOT NULL,
		NgayDat			datetime,
		SoTien			money,
		Ghichu			nvarchar(30),
		TrangThai		bit,
		
		CONSTRAINT PK_MaDC PRIMARY KEY  (MaDC),
		CONSTRAINT FK_KhachHang_DatCoc FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
)

SELECT * FROM TaiKhoan
INSERT INTO TaiKhoan VALUES('ngtoan','ngtoan','123',1,1)
INSERT INTO TaiKhoan VALUES('macminh','macminh','123',1,1)
INSERT INTO TaiKhoan VALUES('vutuan','vutuan','123',1,1)

SELECT * FROM TaiKhoan WHERE Username = 'ngtoan' and Pass = '123';


DELETE from LoaiPhong where MaLoai = '';

SELECT * FROM LoaiPhong
INSERT INTO LoaiPhong VALUES ('A',N'AA',null,null)
INSERT INTO LoaiPhong VALUES ('B',N'BB',null,null)
INSERT INTO LoaiPhong VALUES ('C',N'CC',null,null)
INSERT INTO LoaiPhong VALUES ('D',N'DD',null,null)
INSERT INTO LoaiPhong VALUES ('E',N'EE',null,null)
INSERT INTO LoaiPhong VALUES ('F',N'FF',null,null)

INSERT INTO LoaiPhong VALUES ('',N'',null,null)


INSERT INTO LoaiPhong VALUES ('A',N'AA',N'AAA','images/lp1.jpg')
INSERT INTO LoaiPhong VALUES ('B',N'BB',N'BBB','images/lp2.jpg')
INSERT INTO LoaiPhong VALUES ('C',N'CC',N'CCC','images/lp3.jpg')
INSERT INTO LoaiPhong VALUES ('D',N'DD',N'DDD','images/lp4.jpg')
INSERT INTO LoaiPhong VALUES ('E',N'EE',N'EEE','images/lp5.jpg')
INSERT INTO LoaiPhong VALUES ('F',N'FF',N'FFF','images/lp6.jpg')


SELECT * FROM LoaiPhong WHERE MaLoai = null

SELECT * FROM LoaiPhong where  MaLoai LIKE '%%' AND TenLoai LIKE '%TI%' AND MoTa LIKE '%%'


SELECT * FROM LoaiPhong 

SELECT * FROM Phong  

DELETE FROM Phong

SELECT DISTINCT  MaLoai FROM Phong  


SELECT * FROM phong WHERE MaLoai = 'null'

INSERT INTO phong VALUES ('SUP','SUP 1',N'Phòng Tối cao','images/room1.jpg',N'Là phòng Tối cao',3,1,2500000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Điện thoại gọi quôc tế/IDD Telephone',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'Két sắt an toàn cho những tài sản có giá trị/Private safety box',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tủ chậu rửa với mặt ốp đá granite',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Ấm đun siêu tốc',N'Máy sấy tóc')



INSERT INTO phong VALUES ('SUP','SUP 1',N'Phòng Tối cao','images/room1.jpg',N'Là phòng Tối cao',3,1,2500000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Điện thoại gọi quôc tế/IDD Telephone',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'Két sắt an toàn cho những tài sản có giá trị/Private safety box',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tủ chậu rửa với mặt ốp đá granite',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Ấm đun siêu tốc',N'Máy sấy tóc')
INSERT INTO phong VALUES ('SUP','SUP 2',N'Phòng Tối cao','images/room1.jpg',N'Là phòng Tối cao',3,2,2300000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Điện thoại gọi quôc tế/IDD Telephone',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'Két sắt an toàn cho những tài sản có giá trị/Private safety box',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tủ chậu rửa với mặt ốp đá granite',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Ấm đun siêu tốc',N'Máy sấy tóc')
INSERT INTO phong VALUES ('SUP','SUP 3',N'Phòng Tối cao','images/room1.jpg',N'Là phòng Tối cao',3,3,2000000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Điện thoại gọi quôc tế/IDD Telephone',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'Két sắt an toàn cho những tài sản có giá trị/Private safety box',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tủ chậu rửa với mặt ốp đá granite',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Ấm đun siêu tốc',N'Máy sấy tóc')

INSERT INTO phong VALUES ('VIP','VIP 1',N'Phòng Cao cấp','images/room2.jpg',N'Là phòng Cao cấp',3,1,2000000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Điện thoại gọi quôc tế/IDD Telephone',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'Két sắt an toàn cho những tài sản có giá trị/Private safety box',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tủ chậu rửa với mặt ốp đá granite',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Ấm đun siêu tốc',N'Máy sấy tóc')
INSERT INTO phong VALUES ('VIP','VIP 2',N'Phòng Cao cấp','images/room2.jpg',N'Là phòng Cao cấp',3,2,1700000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Điện thoại gọi quôc tế/IDD Telephone',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'Két sắt an toàn cho những tài sản có giá trị/Private safety box',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tủ chậu rửa với mặt ốp đá granite',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Ấm đun siêu tốc',N'Máy sấy tóc')
INSERT INTO phong VALUES ('VIP','VIP 3',N'Phòng Cao cấp','images/room2.jpg',N'Là phòng Cao cấp',3,3,1500000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Điện thoại gọi quôc tế/IDD Telephone',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'Két sắt an toàn cho những tài sản có giá trị/Private safety box',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tủ chậu rửa với mặt ốp đá granite',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Ấm đun siêu tốc',N'Máy sấy tóc')
INSERT INTO phong VALUES ('VIP','VIP 4',N'Phòng Cao cấp','images/room2.jpg',N'Là phòng Cao cấp',3,4,1700000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Điện thoại gọi quôc tế/IDD Telephone',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'Két sắt an toàn cho những tài sản có giá trị/Private safety box',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tủ chậu rửa với mặt ốp đá granite',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Ấm đun siêu tốc',N'Máy sấy tóc')

INSERT INTO phong VALUES ('LUX','LUX 1',N'Phòng Sang trọng','images/room3.jpg',N'Là phòng Sang trọng',4,1,1700000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Điện thoại gọi quôc tế/IDD Telephone',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'Két sắt an toàn cho những tài sản có giá trị/Private safety box',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tủ chậu rửa với mặt ốp đá granite',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Ấm đun siêu tốc',N'Máy sấy tóc')
INSERT INTO phong VALUES ('LUX','LUX 2',N'Phòng Sang trọng','images/room3.jpg',N'Là phòng Sang trọng',4,2,1500000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Điện thoại gọi quôc tế/IDD Telephone',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'Két sắt an toàn cho những tài sản có giá trị/Private safety box',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tủ chậu rửa với mặt ốp đá granite',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Ấm đun siêu tốc',N'Máy sấy tóc')
INSERT INTO phong VALUES ('LUX','LUX 3',N'Phòng Sang trọng','images/room3.jpg',N'Là phòng Sang trọng',4,3,1300000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Điện thoại gọi quôc tế/IDD Telephone',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'Két sắt an toàn cho những tài sản có giá trị/Private safety box',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tủ chậu rửa với mặt ốp đá granite',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Ấm đun siêu tốc',N'Máy sấy tóc')

INSERT INTO phong VALUES ('FAM','FAM 1',N'Phòng Gia đình','images/room4.jpg',N'Là phòng Gia đình',7,3,1500000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'',N'',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Máy sấy tóc',N'',N'')
INSERT INTO phong VALUES ('FAM','FAM 2',N'Phòng Gia đình','images/room4.jpg',N'Là phòng Gia đình',7,4,1300000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'',N'',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Máy sấy tóc',N'',N'')
INSERT INTO phong VALUES ('FAM','FAM 3',N'Phòng Gia đình','images/room4.jpg',N'Là phòng Gia đình',7,5,1200000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Wifi miễn phí/Complimentary Wi-Fi',N'Bathroom amenities',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'',N'',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Két sắt',N'Máy sấy tóc',N'',N'')

INSERT INTO phong VALUES ('STA','STA 1',N'Phòng Tiêu chuẩn','images/room5.jpg',N'Là phòng Tiêu chuẩn',12,1,1200000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Wifi miễn phí/Complimentary Wi-Fi',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'',N'',N'',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Máy sấy tóc',N'',N'',N'')
INSERT INTO phong VALUES ('STA','STA 2',N'Phòng Tiêu chuẩn','images/room5.jpg',N'Là phòng Tiêu chuẩn',12,2,1000000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Wifi miễn phí/Complimentary Wi-Fi',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'',N'',N'',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Máy sấy tóc',N'',N'',N'')
INSERT INTO phong VALUES ('STA','STA 3',N'Phòng Tiêu chuẩn','images/room5.jpg',N'Là phòng Tiêu chuẩn',12,3,900000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Wifi miễn phí/Complimentary Wi-Fi',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'',N'',N'',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Máy sấy tóc',N'',N'',N'')

INSERT INTO phong VALUES ('NOR','NOR 1',N'Phòng Thường','images/room6.jpg',N'Là phòng Thường',20,1,700000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Wifi miễn phí/Complimentary Wi-Fi',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'',N'',N'',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Máy sấy tóc',N'',N'',N'')
INSERT INTO phong VALUES ('NOR','NOR 2',N'Phòng Thường','images/room6.jpg',N'Là phòng Thường',20,2,700000,N'Điều hòa hai chiều/Fully air-conditioned',N'Truyền hình cáp với TV 32 inch/Cab TV with TV 32 inch',N'Wifi miễn phí/Complimentary Wi-Fi',N'Tủ Mini Bar với những đồ uống để sẵn bên trong/Mini Bar',N'',N'',N'',N'Free wi-fi',N'Hệ thống truyền hình cáp',N'Hệ thống internet không dây',N'Tắm đứng',N'Tivi LED Samsung 32-inch',N'Tủ mini bar',N'Máy sấy tóc',N'',N'',N'')
