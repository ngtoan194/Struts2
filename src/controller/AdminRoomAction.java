package controller;

import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.swing.internal.plaf.basic.resources.basic;

import entities.LoaiPhong;
import model.RoomModel;

public class AdminRoomAction extends ActionSupport implements ServletRequestAware {

	private static final long serialVersionUID = 1L;

	private HttpServletRequest request;

	private RoomModel roomModel = new RoomModel();

	private List<LoaiPhong> listRoom;

	private LoaiPhong loaiphong = new LoaiPhong();

	private String maLoai;

	private String tenLoai;
	
	private String moTa;
	
	

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	private File userImage;
	private String userImageContentType;
	private String userImageFileName;

	public File getUserImage() {
		return userImage;
	}

	public void setUserImage(File userImage) {
		this.userImage = userImage;
	}

	public String getUserImageContentType() {
		return userImageContentType;
	}

	public void setUserImageContentType(String userImageContentType) {
		this.userImageContentType = userImageContentType;
	}

	public String getUserImageFileName() {
		return userImageFileName;
	}

	public void setUserImageFileName(String userImageFileName) {
		this.userImageFileName = userImageFileName;
	}

	public String getTenLoai() {
		return tenLoai;
	}

	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}

	public String getMaLoai() {
		return maLoai;
	}

	public void setMaLoai(String maLoai) {
		this.maLoai = maLoai;
	}

	public LoaiPhong getLoaiphong() {
		return loaiphong;
	}

	public void setLoaiphong(LoaiPhong loaiphong) {
		this.loaiphong = loaiphong;
	}

	public List<LoaiPhong> getListRoom() {
		return listRoom;
	}

	public void setListRoom(List<LoaiPhong> listRoom) {
		this.listRoom = listRoom;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = request;

	}

	@Override
	public String execute() throws Exception {
		this.listRoom = roomModel.getRoom();
		return SUCCESS;
	}

	public String addNew() throws Exception {
		return SUCCESS;
	}

	

	public String processaddNew() throws Exception {
		if(loaiphong.getMaLoai() == null || loaiphong.getMaLoai().trim().equals("")){
			addActionError("Bạn chưa nhập mã loại phòng!");
			return ERROR;
		}
		if(loaiphong.getTenLoai() == null || loaiphong.getTenLoai().trim().equals("")){
			addActionError("Bạn chưa nhập tên loại phòng! ");
			return ERROR;
		}
		if(loaiphong.getMoTa() == null || loaiphong.getMoTa().trim().equals("")){
			addActionError("Bạn chưa nhập mô tả phòng!");
			return ERROR;
		}
		boolean result = roomModel.addNew(this.loaiphong);
		if (result) {
			this.listRoom = roomModel.getRoom();
			return SUCCESS;
		}
		addActionError("Mã loại phòng bị trùng vui lòng nhập mã loại phòng khác!");
		return ERROR;
	}

	public String update() throws Exception {
		this.loaiphong = roomModel.getMaloaiphong(this.maLoai);
		return SUCCESS;
	}

	public String processUpdate() throws Exception {
		
//		try {
//			
//			System.out.println("userImage: "+this.userImage);
//			System.out.println("userImageFileName: "+this.userImageFileName);
//			
//			String filePath = request.getServletContext().getRealPath("images");
//			
//			loaiphong.setAnh("/"+filePath);
//			
//			File fileToCreate = new File(filePath, this.userImageFileName);
//			
//			FileUtils.copyFile(this.userImage, fileToCreate);
//
//		} catch (Exception e) {
//			e.printStackTrace();
//			return INPUT;
//		}
		
		if(loaiphong.getTenLoai() == null ||loaiphong.getTenLoai().trim().equals("")){
			addActionError("Bạn chưa nhập tên loại phòng!");
			return ERROR;
		}
		if(loaiphong.getMoTa() == null || loaiphong.getMoTa().trim().equals("")){
			addActionError("Bạn chưa nhập mô tả!");
			return ERROR;
		}
		
		boolean result = roomModel.update(this.loaiphong);
		if (result) {
			this.listRoom = roomModel.getRoom();
			return SUCCESS;
		}
		addActionError("Cập nhập loại phòng thất bại!");
		return ERROR;
	}

	public String delete() throws Exception {
		this.loaiphong = roomModel.getMaloaiphong(this.maLoai);
		boolean result = roomModel.delete(this.loaiphong);
		if (result) {
			this.listRoom = roomModel.getRoom();
		}
		return SUCCESS;
	}

	public String search() throws Exception {
		this.listRoom = roomModel.getRoom();
		return SUCCESS;
	}

	public String processSearch() throws Exception {
		if (this.tenLoai.trim().equals("")) {
			this.listRoom = roomModel.getRoom();
		} else {
			this.listRoom = roomModel.searchRoomByName(this.tenLoai);
		}
		return SUCCESS;
	}

}
