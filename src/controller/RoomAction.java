package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.*;

import entities.LoaiPhong;
import entities.Phong;
import model.RoomModel;

public class RoomAction extends ActionSupport implements ServletRequestAware {


	private static final long serialVersionUID = 1L;

	private HttpServletRequest request;

	private RoomModel roomModel = new RoomModel();
	
	private List<LoaiPhong> listloai;
	
	private List<Phong> listphong;
	
	private String maLoai;
	
	private String maPhong;
	
	

	public String getMaPhong() {
		return maPhong;
	}

	public void setMaPhong(String maPhong) {
		this.maPhong = maPhong;
	}

	public String getMaLoai() {
		return maLoai;
	}

	public void setMaLoai(String maLoai) {
		this.maLoai = maLoai;
	}

	public List<Phong> getListphong() {
		return listphong;
	}

	public void setListphong(List<Phong> listphong) {
		this.listphong = listphong;
	}

	public List<LoaiPhong> getListloai() {
		return listloai;
	}

	public void setListloai(List<LoaiPhong> listloai) {
		this.listloai = listloai;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = request;
	}

	@Override
	public String execute() throws Exception {
		this.listloai = roomModel.getRoom();
		return SUCCESS;
	}
	
	public String getroom() throws Exception {
		this.listphong = roomModel.getPhong(maLoai);
		return SUCCESS;
	}
	
	public String roomdetail() throws Exception {
		this.listphong = roomModel.getchitietPhong(maPhong);
		return SUCCESS;
	}
}
