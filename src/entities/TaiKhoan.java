package entities;
// Generated Aug 23, 2017 1:22:01 PM by Hibernate Tools 5.2.3.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * TaiKhoan generated by hbm2java
 */
@Entity
@Table(name = "TaiKhoan", catalog = "QuanLyKhachSan")
public class TaiKhoan implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String maTk;
	private String username;
	private String pass;
	private Boolean typeTk;
	private Boolean trangThai;
	private Set<NhanVien> nhanViens = new HashSet<NhanVien>(0);
	private Set<KhachHang> khachHangs = new HashSet<KhachHang>(0);

	public TaiKhoan() {
	}

	public TaiKhoan(String maTk, String username, String pass) {
		this.maTk = maTk;
		this.username = username;
		this.pass = pass;
	}

	public TaiKhoan(String maTk, String username, String pass, Boolean typeTk, Boolean trangThai,
			Set<NhanVien> nhanViens, Set<KhachHang> khachHangs) {
		this.maTk = maTk;
		this.username = username;
		this.pass = pass;
		this.typeTk = typeTk;
		this.trangThai = trangThai;
		this.nhanViens = nhanViens;
		this.khachHangs = khachHangs;
	}

	@Id

	@Column(name = "MaTK", unique = true, nullable = false, length = 7)
	public String getMaTk() {
		return this.maTk;
	}

	public void setMaTk(String maTk) {
		this.maTk = maTk;
	}

	@Column(name = "Username", nullable = false, length = 20)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "Pass", nullable = false, length = 20)
	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Column(name = "TypeTK")
	public Boolean getTypeTk() {
		return this.typeTk;
	}

	public void setTypeTk(Boolean typeTk) {
		this.typeTk = typeTk;
	}

	@Column(name = "TrangThai")
	public Boolean getTrangThai() {
		return this.trangThai;
	}

	public void setTrangThai(Boolean trangThai) {
		this.trangThai = trangThai;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "taiKhoan")
	public Set<NhanVien> getNhanViens() {
		return this.nhanViens;
	}

	public void setNhanViens(Set<NhanVien> nhanViens) {
		this.nhanViens = nhanViens;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "taiKhoan")
	public Set<KhachHang> getKhachHangs() {
		return this.khachHangs;
	}

	public void setKhachHangs(Set<KhachHang> khachHangs) {
		this.khachHangs = khachHangs;
	}

}
