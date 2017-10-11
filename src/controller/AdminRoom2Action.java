package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.*;

import entities.LoaiPhong;
import entities.Phong;
import model.Room2Model;

public class AdminRoom2Action extends ActionSupport implements ServletRequestAware {

	private static final long serialVersionUID = 1L;

	private HttpServletRequest request;
	
	private Room2Model room2Model = new Room2Model();
	
	private List<Phong> listPhong;
	
	private Phong phong = new Phong();
	
	private List<Phong> listml;
	
	private LoaiPhong loaiphong = new LoaiPhong();
	
	private String maLoai;
	
	
	
	

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


	public List<Phong> getListml() {
		return listml;
	}


	public void setListml(List<Phong> listml) {
		this.listml = listml;
	}


	public List<Phong> getListPhong() {
		return listPhong;
	}


	public void setListPhong(List<Phong> listPhong) {
		this.listPhong = listPhong;
	}


	public Phong getPhong() {
		return phong;
	}


	public void setPhong(Phong phong) {
		this.phong = phong;
	}


	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	
	@Override
	public String execute() throws Exception {
		this.listPhong = room2Model.getPhong();
		return SUCCESS;
	}
	
	public String addNew() throws Exception {
		this.listml = room2Model.getMaLoai();
		return SUCCESS;
	}
	
	public String processaddNew() throws Exception {
		if(phong.getLoaiPhong().getMaLoai() == "--- Chọn ---" || phong.getLoaiPhong().getMaLoai().trim().equals("--- Chọn ---")){
			System.out.println("alo");
			addActionError("Bạn chưa chọn mã loại phòng!");
			return ERROR;
		}
		if(phong.getMaPhong() == null || phong.getMaPhong().trim().equals("")){
			addActionError("Bạn chưa nhập mã phòng!");
			return ERROR;
		}
		
		boolean result = room2Model.addNew(this.phong);
		if(result){
			this.listPhong = room2Model.getPhong();
			return SUCCESS;
		}
		return ERROR;
	}
	
	
}
