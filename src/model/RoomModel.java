package model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.LoaiPhong;
import entities.Phong;
import util.HibernateUtil;

public class RoomModel {

	public List<LoaiPhong> getRoom() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;

		try {
			String hql = "FROM LoaiPhong";
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql);
			List<LoaiPhong> listRoom = query.list();
			transaction.commit();
			System.out.println("In GetRoom");
			return listRoom;
		} catch (Exception e) {
			if (!(transaction == null)) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return null;
	}

	public boolean addNew(LoaiPhong loaiphong) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			if (loaiphong.getMaLoai() == null || loaiphong.getMaLoai().trim().equals("")) {
				return false;
			}
			if (loaiphong.getTenLoai() == null || loaiphong.getTenLoai().trim().equals("")) {
				return false;
			}
			if (loaiphong.getMoTa() == null || loaiphong.getMoTa().trim().equals("")) {
				return false;
			} else {
				transaction = session.beginTransaction();
				session.save(loaiphong);
				transaction.commit();
				System.out.println("In AddNew");
				return true;
			}
		} catch (Exception e) {
			if (!(transaction == null)) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return false;
	}

	public LoaiPhong getMaloaiphong(String maLoai) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			LoaiPhong loaiphong = (LoaiPhong) session.get(LoaiPhong.class, maLoai);
			transaction.commit();
			System.out.println("In GetMaLoaiPhong");
			return loaiphong;
		} catch (Exception e) {
			if (!(transaction == null)) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return null;
	}

	public boolean update(LoaiPhong loaiphong) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			if (loaiphong.getTenLoai() == null || loaiphong.getTenLoai().trim().equals("")) {
				return false;
			} else {
				transaction = session.beginTransaction();
				session.update(loaiphong);
				transaction.commit();
				System.err.println("In update");
				return true;
			}
		} catch (Exception e) {
			if (!(transaction == null)) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return false;
	}

	public boolean delete(LoaiPhong loaiphong) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.delete(loaiphong);
			transaction.commit();
			System.out.println("In delelte");
			return true;
		} catch (Exception e) {
			if (!(transaction == null)) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return false;
	}

	public boolean deleteAllRoom() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			String hql = "DELETE FROM LoaiPhong";
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql);
			System.out.println("Delete all");
			return true;
		} catch (Exception e) {
			if (!(transaction == null)) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}

		return false;
	}

	public List<LoaiPhong> searchRoomByName(String tenLoai) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;

		try {
			String hql = "FROM LoaiPhong WHERE TenLoai like '%" + tenLoai + "%'";
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql);
			System.out.println(hql);
			List<LoaiPhong> listRoom = query.list();
			transaction.commit();
			System.out.println("In search room by name");
			return listRoom;
		} catch (Exception e) {
			if (!(transaction == null)) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return null;
	}

	public List<LoaiPhong> searchRoomByID(String maLoai) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;

		try {
			String hql = "FROM LoaiPhong WHERE MaLoai like '%" + maLoai + "%'";
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql);
			System.out.println(hql);
			List<LoaiPhong> listRoom = query.list();
			transaction.commit();
			System.out.println("In search room by id");
			return listRoom;
		} catch (Exception e) {
			if (!(transaction == null)) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return null;
	}

	public List<Phong> getPhong(String maLoai) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;

		try {
			String hql = "FROM Phong WHERE MaLoai = '" + maLoai + "'";
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql);
			List<Phong> listPhong = query.list();
			transaction.commit();
			System.out.println("In getPhong");
			return listPhong;
		} catch (Exception e) {
			if (!(transaction == null)) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return null;
	}

	public List<Phong> getchitietPhong(String maPhong) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;

		try {
			String hql = "FROM Phong WHERE MaPhong = '" + maPhong + "'";
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql);
			List<Phong> listPhong = query.list();
			transaction.commit();
			System.out.println("In get room details");
			return listPhong;
		} catch (Exception e) {
			if (!(transaction == null)) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return null;
	}

}
