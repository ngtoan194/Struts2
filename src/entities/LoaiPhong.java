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
 * LoaiPhong generated by hbm2java
 */
@Entity
@Table(name = "LoaiPhong", catalog = "QuanLyKhachSan")
public class LoaiPhong implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String maLoai;
	private String tenLoai;
	private String moTa;
	private String anh;
	private Set<DatPhong> datPhongs = new HashSet<DatPhong>(0);
	private Set<Phong> phongs = new HashSet<Phong>(0);

	public LoaiPhong() {
	}

	public LoaiPhong(String maLoai, String tenLoai, String moTa) {
		this.maLoai = maLoai;
		this.tenLoai = tenLoai;
		this.moTa = moTa;
	}

	public LoaiPhong(String maLoai, String tenLoai, String moTa, String anh, Set<DatPhong> datPhongs,
			Set<Phong> phongs) {
		this.maLoai = maLoai;
		this.tenLoai = tenLoai;
		this.moTa = moTa;
		this.anh = anh;
		this.datPhongs = datPhongs;
		this.phongs = phongs;
	}

	@Id

	@Column(name = "MaLoai", unique = true, nullable = false, length = 7)
	public String getMaLoai() {
		return this.maLoai;
	}

	public void setMaLoai(String maLoai) {
		this.maLoai = maLoai;
	}

	@Column(name = "TenLoai", nullable = false, length = 20)
	public String getTenLoai() {
		return this.tenLoai;
	}

	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}

	@Column(name = "MoTa")
	public String getMoTa() {
		return this.moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	@Column(name = "anh")
	public String getAnh() {
		return this.anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "loaiPhong")
	public Set<DatPhong> getDatPhongs() {
		return this.datPhongs;
	}

	public void setDatPhongs(Set<DatPhong> datPhongs) {
		this.datPhongs = datPhongs;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "loaiPhong")
	public Set<Phong> getPhongs() {
		return this.phongs;
	}

	public void setPhongs(Set<Phong> phongs) {
		this.phongs = phongs;
	}

}
