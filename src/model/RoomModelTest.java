package model;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import controller.AdminRoomAction;
import entities.LoaiPhong;
import entities.Phong;

public class RoomModelTest {

	private RoomModel room = new RoomModel();
	private AdminRoomAction ara = new AdminRoomAction();
	private Room2Model room2 = new Room2Model();

	// Description: Test lấy được hết dữ liệu trong DB
	// Expect: Mã loại của Room[0] = A, tên loại của Room[3] = DD
	@Test
	public void testGetRoom() {

		// Step 1: lấy tất cả dữ liệu trong DB
		List<LoaiPhong> listLP = room.getRoom();

		// Step 2: So sánh thử các dữ liệu
		// So sánh giá trị đầu tiên với mã loại
		assertEquals("A", listLP.get(0).getMaLoai());
		// So sánh giá trị thứ 3 với tên loại
		assertEquals("DD", listLP.get(3).getTenLoai());
		// Lấy sai giá trị thứ 3 với tên loại
		// assertEquals("CC", listLP.get(3).getTenLoai());
	}

	// Description: Test thêm 1 dữ liệu vào DB
	// Expect: Thêm thành công 1 Room vào DB
	@Test
	public void testAddNew() {

		// Step 1: Tạo dữ liệu cho Loại Phòng
		String MaLoai = "TEST", TenLoai = "TEST", MoTa = "TEST";
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);

		// Step 2: Kiểm tra phương thức addNew để thêm dữ liệu
		assertTrue(room.addNew(lp));

		// Step 3: Tìm kiếm Room vừa thêm vào dữ liệu
		List<LoaiPhong> listLP = room.searchRoomByID(MaLoai);
		assertEquals(MaLoai, listLP.get(0).getMaLoai());

		// Step 3: Xóa dữ liệu vừa thêm vào
		room.delete(lp);
	}

	// Description: Test thêm 1 dữ liệu vào DB với các Mã loại bị trùng
	// Expect: Không thêm được dữ liệu vào DB
	@Test
	public void testAddNew_DuplicateMaLoai() {

		// Step 1: Tạo dữ liệu cho Loại Phòng
		String MaLoai = "TEST", TenLoai = "TEST", MoTa = "TEST";
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);

		// Step 2: Gọi phương thức addNew để thêm dữ liệu
		room.addNew(lp);

		// Step 2: Tìm kiếm Room vừa thêm vào dữ liệu
		List<LoaiPhong> listLP = room.searchRoomByID(MaLoai);
		assertEquals(MaLoai, listLP.get(0).getMaLoai());

		// Step 3: Kiểm tra xem có thêm lại dữ liệu trùng MaLoai được không
		assertFalse(room.addNew(lp));

		// Step 4: Xóa dữ liệu vừa thêm vào
		room.delete(lp);
	}

	// Description: Test thêm 1 dữ liệu vào DB với các trường null
	// Expect: Không thêm được dữ liệu vào DB
	@Test
	public void testAddNewWith_NullValue() {

		// Step 1: Tạo các giá trị null
		String MaLoai = null, TenLoai = null, MoTa = null;
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);

		// Step 2: Gọi method Addnew để kiểm tra thêm dữ liệu
		assertFalse(room.addNew(lp));
	}

	// Description: Test thêm 1 dữ liệu vào DB với trường maLoai null
	// Expect: Không thêm được dữ liệu vào DB
	@Test
	public void testAddNewWith_NullValueMaLoai() {

		// Step 1: Tạo các giá trị với trường MaLoai = null
		String MaLoai = null, TenLoai = "TEST", MoTa = "TEST";
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);

		// Step 2: Gọi method Addnew để kiểm tra thêm dữ liệu
		assertFalse(room.addNew(lp));
	}

	// Description: Test thêm 1 dữ liệu vào DB với trường tenLoai null
	// Expect: Không thêm được dữ liệu vào DB
	@Test
	public void testAddNewWith_NullValueTenLoai() {

		// Step 1: Tạo các giá trị với trường TenLoai = null
		String MaLoai = "TEST", TenLoai = null, MoTa = "TEST";
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);

		// Step 2: Gọi method Addnew để kiểm tra thêm dữ liệu
		assertFalse(room.addNew(lp));
	}

	// Description: Thêm Room với max value vào DB
	// Expect: Thêm mới thành công
	@Test
	public void testAddNewWith_MaxValue() {
		// Step1: Tạo Room với các trường max value MaLoai = 7 TenLoai = 20
		String MaLoai = "", TenLoai = "", MoTa = "TEST";
		for (int i = 0; i < 7; i++) {
			MaLoai += "*";
		}
		for (int i = 0; i < 20; i++) {
			TenLoai += "*";
		}
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);

		// Step 2: Kiểm tra phương thức addNew để thêm dữ liệu
		assertTrue(room.addNew(lp));

		// Step 3: Tìm kiếm Room vừa được thêm vào dữ liệu
		List<LoaiPhong> listLP = room.searchRoomByID(MaLoai);

		// Step 4: So sánh kết quả Step 1 với Step 3
		assertEquals(MaLoai, listLP.get(0).getMaLoai());

		// Step 5: Xóa Room vừa thêm vào dữ liệu ở Step 2
		room.delete(lp);
	}

	// Description: Thêm Room với max value + 1 vào DB
	// Expect: Không thêm mới thành công
	@Test
	public void testAddNewWith_MaxValue_Plus1() {
		// Step1: Tạo Room với các trường max value MaLoai = 7 TenLoai = 20
		String MaLoai = "", TenLoai = "", MoTa = "TEST";
		for (int i = 0; i < 8; i++) {
			MaLoai += "TEST ";
		}
		for (int i = 0; i < 21; i++) {
			TenLoai += "TEST ";
		}
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);

		// Step 2: Gọi method Addnew để kiểm tra thêm dữ liệu
		assertFalse(room.addNew(lp));
	}

	// Description: Test thêm Room với min value vào trong DB
	// Expect: Thêm thành công
	@Test
	public void testAddNewWith_MinValue() {
		String MaLoai = "F", TenLoai = "F", MoTa = "F";
		// Step 1: Gọi method addNew để thêm 1 dữ liệu vào DB
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);
		room.addNew(lp);

		// Step 2: Tìm kiếm Room vừa thêm vào dữ liệu
		List<LoaiPhong> listLP = room.searchRoomByID(MaLoai);
		assertEquals(MaLoai, listLP.get(0).getMaLoai());

		// Step 3: Xóa dữ liệu vừa thêm vào
		room.delete(lp);
	}

	// Description: Test thêm Room với Empty value vào trong DB
	// Expect: Không thêm thành công
	@Test
	public void testAddNewWith_EmptyValue() {
		String MaLoai = "", TenLoai = "", MoTa = "";

		// Step 1: Gọi method addNew để thêm dữ liệu vào DB
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);
		assertFalse(room.addNew(lp));
	}

	// Description: Test thêm Room với space value vào trong DB
	// Expect: Không thêm thành công
	@Test
	public void testAddNewWith_SpaceValue() {
		String MaLoai = " ", TenLoai = " ", MoTa = " ";

		// Step 1: Gọi method addNew để thêm dữ liệu vào DB
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);
		assertFalse(room.addNew(lp));
	}

	// Description: Test Update 1 dữ liệu trong DB
	// Expect: Tên loại phòng được thay đổi
	@Test
	public void testUpdate() {
		String MaLoai = "TEST", TenLoai = "TEST", MoTa = "TEST";
		// Step 1: Gọi method addNew để thêm 1 dữ liệu vào DB
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);
		room.addNew(lp);

		// Step 2: Tìm kiếm Room vừa thêm vào dữ liệu
		List<LoaiPhong> listLP = room.searchRoomByID(MaLoai);
		assertEquals(MaLoai, listLP.get(0).getMaLoai());

		// Step 3: Lấy dữ liệu vừa thêm vào trong DB có mã loại = TEST
		room.getMaloaiphong(MaLoai);

		// Step 4: Sửa tên loại phòng muốn thay đổi
		lp.setTenLoai(lp.getTenLoai() + "update");
		room.update(lp);
		List<LoaiPhong> listLP1 = room.searchRoomByID(MaLoai);

		// Step 5: Kiểm tra tên loại đã được sửa chưa
		assertNotEquals(listLP1.get(0).getTenLoai(), listLP.get(0).getTenLoai());

		// Step 6: Xóa dữ liệu vừa thêm vào
		room.delete(lp);
	}

	// Description: Test Update 1 dữ liệu với trường null trong DB
	// Expect: Tên loại phòng không thay đổi được
	@Test
	public void testUpdate_NullValue_TenLoai() {
		String MaLoai = "TEST", TenLoai = "TEST", MoTa = "TEST";
		// Step 1: Gọi method addNew để thêm 1 dữ liệu vào DB
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);
		room.addNew(lp);

		// Step 2: Tìm kiếm Room vừa thêm vào dữ liệu
		List<LoaiPhong> listLP = room.searchRoomByID(MaLoai);
		assertEquals(MaLoai, listLP.get(0).getMaLoai());

		// Step 3: Lấy dữ liệu vừa thêm vào trong DB có mã loại = TEST
		room.getMaloaiphong(MaLoai);

		// Step 4: Sửa tên loại phòng muốn thay đổi
		lp.setTenLoai(null);

		// Step 5: Kiểm tra tên loại có sửa được không
		assertFalse(room.update(lp));

		// Step 6: Xóa dữ liệu vừa thêm vào
		room.delete(lp);
	}

	// Description: Test Update 1 dữ liệu trong DB với Tên Loại để trống (Empty)
	// Expect: Tên loại phòng không thay đổi được
	@Test
	public void testUpdate_EmptyValue_TenLoai() {
		String MaLoai = "TEST", TenLoai = "TEST", MoTa = "TEST";
		// Step 1: Gọi method addNew để thêm 1 dữ liệu vào DB
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);
		room.addNew(lp);

		// Step 2: Tìm kiếm Room vừa thêm vào dữ liệu
		List<LoaiPhong> listLP = room.searchRoomByID(MaLoai);
		assertEquals(MaLoai, listLP.get(0).getMaLoai());

		// Step 3: Lấy dữ liệu vừa thêm vào trong DB có mã loại = TEST
		room.getMaloaiphong(MaLoai);

		// Step 4: Sửa tên loại phòng muốn thay đổi
		lp.setTenLoai("");

		// Step 5: Kiểm tra tên loại có sửa được không
		assertFalse(room.update(lp));

		// Step 6: Xóa dữ liệu vừa thêm vào
		room.delete(lp);
	}

	// Description: Test Update 1 dữ liệu trong DB với Tên Loại khoảng trống
	// (Space)
	// Expect: Tên loại phòng không thay đổi được
	@Test
	public void testUpdate_SpaceValue_TenLoai() {
		String MaLoai = "TEST", TenLoai = "TEST", MoTa = "TEST";
		// Step 1: Gọi method addNew để thêm 1 dữ liệu vào DB
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);
		room.addNew(lp);

		// Step 2: Tìm kiếm Room vừa thêm vào dữ liệu
		List<LoaiPhong> listLP = room.searchRoomByID(MaLoai);
		assertEquals(MaLoai, listLP.get(0).getMaLoai());

		// Step 3: Lấy dữ liệu vừa thêm vào trong DB có mã loại = TEST
		room.getMaloaiphong(MaLoai);

		// Step 4: Sửa tên loại phòng muốn thay đổi
		lp.setTenLoai(" ");

		// Step 5: Kiểm tra tên loại có sửa được không
		assertFalse(room.update(lp));

		// Step 6: Xóa dữ liệu vừa thêm vào
		room.delete(lp);
	}

	// Description: Test delete 1 dữ liệu trong DB
	// Expect: Delete thành công
	@Test
	public void testDelete() {
		String MaLoai = "TEST", TenLoai = "TEST", MoTa = "TEST";
		// Step 1: Gọi method addNew để thêm 1 dữ liệu vào DB
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);
		room.addNew(lp);

		// Step 2: Tìm kiếm Room vừa thêm vào dữ liệu
		List<LoaiPhong> listLP = room.searchRoomByID(MaLoai);
		assertNotNull(listLP);

		// Step 3: Xóa dữ liệu vừa thêm vào (Kiểm tra xem có xóa được không)
		assertEquals(true, room.delete(lp));
		// room.delete(lp);
		//
		// // Step 4: Tìm kiếm Room vừa xóa xem còn trong dữ liệu không
		// List<LoaiPhong> listLP1 = room.searchRoomByID(MaLoai);
		//
		// // Step 5: Kiểm tra xem dữ liệu đã bị xóa chưa
		// assertEquals(0, listLP1.size());
	}

	// Description: Test delete dữ liệu Loại Phòng khi có khóa ngoại với Phòng
	// Expect: Không xóa được
	@Test
	public void testDelete_2Table() {
		String MaLoai = "TEST", TenLoai = "TEST", MoTa = "TEST";
		String MaPhong = "YELLOW", TenPhong = "YELLOW";

		// Step 1: Gọi method addNew để thêm Loại Phòng
		LoaiPhong lp = new LoaiPhong(MaLoai, TenLoai, MoTa);
		room.addNew(lp);

		// Step 2: Gọi method addNew để thêm Phòng
		Phong p = new Phong(MaPhong, lp, TenPhong, null, null, 0, 0, 0, null, null, null, null, null, null, null, null,
				null, null, null, null, null, null, null, null, null);
		room2.addNew(p);

		// Step 3: Kiểm tra tìm kiếm những dữ liệu vừa thêm vào
		List<LoaiPhong> listLP = room.searchRoomByID(MaLoai);
		assertNotNull(listLP);
		List<Phong> listP = room2.searchRoomByID("P");
		assertNotNull(listP);

		// Step 3: Kiểm tra Xóa dữ liệu Loại Phòng
		assertEquals(false, room.delete(lp));

		// Step 4: Xóa dữ liệu Phòng
		room2.delete(p);

		// Step 5: Xóa dữ liệu Loại Phòng
		room.delete(lp);
	}

}
