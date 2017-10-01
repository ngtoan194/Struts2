package controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class WelcomeAction extends ActionSupport implements ServletRequestAware {


	private static final long serialVersionUID = 1L;
	
	private HttpServletRequest request;

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = request;
	}
	
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	public String services() throws Exception {
		return SUCCESS;
	}
	
	public String booking() throws Exception {
		return SUCCESS;
	}
	public String rooms() throws Exception {
		return SUCCESS;
	}

}
