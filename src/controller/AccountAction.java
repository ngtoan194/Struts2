package controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.*;

import entities.TaiKhoan;
import model.AccountModel;

public class AccountAction extends ActionSupport implements SessionAware, ServletRequestAware {

	private static final long serialVersionUID = 1L;

	private Map<String, Object> session;

	private HttpServletRequest request;

	private AccountModel accountModel = new AccountModel();

	private List<TaiKhoan> listTaiKhoan;

	private String maTK;
	private String username;
	private String pass;
	private Boolean typeTk;
	private Boolean trangThai;

	
	public List<TaiKhoan> getListTaiKhoan() {
		return listTaiKhoan;
	}

	public void setListTaiKhoan(List<TaiKhoan> listTaiKhoan) {
		this.listTaiKhoan = listTaiKhoan;
	}

	public String getMaTK() {
		return maTK;
	}

	public void setMaTK(String maTK) {
		this.maTK = maTK;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public Boolean getTypeTk() {
		return typeTk;
	}

	public void setTypeTk(Boolean typeTk) {
		this.typeTk = typeTk;
	}

	public Boolean getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(Boolean trangThai) {
		this.trangThai = trangThai;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;

	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String processLogin() {
		if(this.username == null || this.username.trim().equals("")){
			addActionError("Bạn chưa nhập tên đăng nhập!");
			return ERROR;
		} 
		if(this.pass == null || this.pass.trim().equals("")){
			addActionError("Bạn chưa nhập mật khẩu!");
			return ERROR;
		}
		if (accountModel.checkLogin(this.username, this.pass)) {
			this.session.put("username", username);
			return SUCCESS;
		}
		addActionError("Sai tên đăng nhập hoặc mật khẩu vui lòng nhập lại!");
		return ERROR;
	}

	public String logout() throws Exception {
		if (this.session.containsKey("username")) {
			this.session.remove("username");
		}
		return SUCCESS;
	}

}
