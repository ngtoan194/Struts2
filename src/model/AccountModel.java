package model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.TaiKhoan;
import util.HibernateUtil;

public class AccountModel {
	
	private static Transaction  transaction;

	
	public boolean checkLogin(String Username, String Pass){
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {
			transaction = session.beginTransaction();
			String hql = ("FROM TaiKhoan WHERE username=:Username AND pass=:Pass");
//			transaction.commit();
			Query query = session.createQuery(hql);
			query.setParameter("Username", Username);
			query.setParameter("Pass", Pass);
			
			List<TaiKhoan> list = query.list();
			if(list.size()>0){
				System.out.println("Username: " + Username + "Pass: " + Pass);
				session.close();
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
