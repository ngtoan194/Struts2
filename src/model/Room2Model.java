package model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.Phong;
import util.HibernateUtil;

public class Room2Model {

	public List<Phong> getPhong(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction	= null;
		
		try {
			String hql = "FROM Phong";
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql);
			List<Phong> listPhong = query.list();
			System.out.println("List phòng");
			transaction.commit();
			return listPhong;
		} catch (Exception e) {
			if(!(transaction == null)){
				transaction.rollback();
			}
		}finally {
			session.close();
		}
		return null;
	}
	
	public List<Phong> getMaLoai(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction	= null;
		
		try {
			String hql = "Select distinct MaLoai from Phong MaLoai";
//			String hql = "FROM Phong";
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql);
//			query.setResultTransformer(org.hibernate.Criteria.DISTINCT_ROOT_ENTITY);
			System.out.println(hql);
			List<Phong> listml = query.list();
			System.out.println(listml);
			transaction.commit();
			return listml;
		} catch (Exception e) {
			e.printStackTrace();
			if(!(transaction == null)){
				transaction.rollback();
			}
		}finally {
			session.close();
		}
		return null;
	}
	
	public boolean addNew(Phong phong){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction	= null;
		
		try {
			transaction = session.beginTransaction();
			session.save(phong);
			transaction.commit();
			return true;
		} catch (Exception e) {
			if(!(transaction == null)){
				transaction.rollback();
			}
		}finally {
			session.close();
		}
		return false;
	}
	
	public boolean delete(Phong phong){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.delete(phong);
			transaction.commit();
			System.out.println(phong);
			System.out.println("In delelte Phong");
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
	
	
	public List<Phong> searchRoomByID(String maPhong) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;

		try {
			String hql = "FROM Phong WHERE MaPhong like '%"+maPhong+"%'";
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql);
			System.out.println(hql);
			List<Phong> listP = query.list();
			transaction.commit();
			System.out.println("In search Phong by id");
			return listP;
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
