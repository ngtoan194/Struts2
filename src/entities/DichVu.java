package entities;
// Generated Aug 23, 2017 1:22:01 PM by Hibernate Tools 5.2.3.Final

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * DichVu generated by hbm2java
 */
@Entity
@Table(name = "DichVu", catalog = "QuanLyKhachSan")
public class DichVu implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String maDv;
	private String tenDv;
	private String dvt;
	private BigDecimal giaDv;
	private String moTa;
	private Set<SuDungDv> suDungDvs = new HashSet<SuDungDv>(0);

	public DichVu() {
	}

	public DichVu(String maDv, String tenDv, String dvt, BigDecimal giaDv, String moTa) {
		this.maDv = maDv;
		this.tenDv = tenDv;
		this.dvt = dvt;
		this.giaDv = giaDv;
		this.moTa = moTa;
	}

	public DichVu(String maDv, String tenDv, String dvt, BigDecimal giaDv, String moTa,
			Set<SuDungDv> suDungDvs) {
		this.maDv = maDv;
		this.tenDv = tenDv;
		this.dvt = dvt;
		this.giaDv = giaDv;
		this.moTa = moTa;
		this.suDungDvs = suDungDvs;
	}

	@Id

	@Column(name = "MaDV", unique = true, nullable = false, length = 7)
	public String getMaDv() {
		return this.maDv;
	}

	public void setMaDv(String maDv) {
		this.maDv = maDv;
	}

	@Column(name = "TenDV", nullable = false)
	public String getTenDv() {
		return this.tenDv;
	}

	public void setTenDv(String tenDv) {
		this.tenDv = tenDv;
	}

	@Column(name = "DVT", nullable = false)
	public String getDvt() {
		return this.dvt;
	}

	public void setDvt(String dvt) {
		this.dvt = dvt;
	}

	@Column(name = "GiaDV", nullable = false, scale = 4)
	public BigDecimal getGiaDv() {
		return this.giaDv;
	}

	public void setGiaDv(BigDecimal giaDv) {
		this.giaDv = giaDv;
	}

	@Column(name = "MoTa", nullable = false)
	public String getMoTa() {
		return this.moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "dichVu")
	public Set<SuDungDv> getSuDungDvs() {
		return this.suDungDvs;
	}

	public void setSuDungDvs(Set<SuDungDv> suDungDvs) {
		this.suDungDvs = suDungDvs;
	}

}
