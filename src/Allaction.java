/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Prateek
 */
public class Allaction {
    public static void addusers(String fullname, String Username,String emailId,String password)
    {
        Userdata user = new Userdata();
        user.setFullname(fullname);
        user.setUsername(Username);
        user.setEmailid(emailId);
        user.setPassword(password);
        Session s = MyHibernateUtil.getSession();
        Transaction t = s.beginTransaction();
        s.save(user);
        t.commit();
    }
    
    public static boolean find(String Uname,String Upass)
    {
        Session s = MyHibernateUtil.getSession();
        Query q = s.createQuery("from Userdata"); 
        List<Userdata> data = q.list();
        for(Userdata u : data)
        {
            if (Uname.equals(u.getUsername()) && Upass.equals(u.getPassword()))
            {
                return true;
            
            }
        }
        return false;
    }
    
    public static void showuser()
    {
        Session s = MyHibernateUtil.getSession();
        Query q = s.createQuery("from Userdata"); 
        List<Userdata> data = q.list();
        for(Userdata m :data)
        {
            System.out.println(m.getFullname()+" : "+m.getEmailid());
        }
    }
    
    public static void addarticle(String topic ,String articlebody)
    {
        Articledata ac = new Articledata();
        ac.setAtopic(topic);
        ac.setAbody(articlebody);
        Session s = MyHibernateUtilArticle.getSession();
        Transaction t = s.beginTransaction();
        s.save(ac);
        t.commit();
    }
    public Articledata showarticle()
    {
        Session session=null;
        Transaction tx = null;
	Articledata data = null;
	try {
        session = MyHibernateUtilArticle.getSession();
        tx = session.getTransaction();
        tx.begin();
        Query q = session.createQuery("from Articledata"); 
        data = (Articledata)q.list();
        tx.commit();
        }
        catch (Exception e) {
		 if (tx != null) {
			 tx.rollback();
		 }
		 e.printStackTrace();
	 } finally {
		 session.close();
	 }
        return data;
    }
    public static void addquery(String topic ,String body)
    {
        Querydata ac = new Querydata();
        ac.setQtopic(topic);
        ac.setQbody(body);
        Session s = MyHibernateUtilQuery.getSession();
        Transaction t = s.beginTransaction();
        s.save(ac);
        t.commit();
    }
    public Querydata showquery()
    {
        Session session=null;
        Transaction tx = null;
	Querydata data = null;
	try {
        session = MyHibernateUtilQuery.getSession();
        tx = session.getTransaction();
        tx.begin();
        Query q = session.createQuery("from Querydata"); 
        data = (Querydata)q.uniqueResult();
        tx.commit();
        }
        catch (Exception e) {
		 if (tx != null) {
			 tx.rollback();
		 }
		 e.printStackTrace();
	 } finally {
		 session.close();
	 }
        return data;
    }
    
    public static void addblog(String type ,String intro , String body)
    {
        Blogdata ac = new Blogdata();
        ac.setBtype(type);
        ac.setBintro(intro);
        ac.setBcontent(body);
        Session s = MyHibernateUtilBlog.getSession();
        Transaction t = s.beginTransaction();
        s.save(ac);
        t.commit();
    }
    public Blogdata showblog()
    {
        Session session=null;
        Transaction tx = null;
	Blogdata data = null;
	try {
        session = MyHibernateUtilBlog.getSession();
        tx = session.getTransaction();
        tx.begin();
        Query q = session.createQuery("from Blogdata"); 
        data = (Blogdata)q.uniqueResult();
        tx.commit();
        }
        catch (Exception e) {
		 if (tx != null) {
			 tx.rollback();
		 }
		 e.printStackTrace();
	 } finally {
		 session.close();
	 }
        return data;
    }
    
    public static void addanswer(String id , String answer)
    {
        Response ac = new Response();
        ac.setQid(id);
        ac.setAnswers(answer);
        Session s = MyHibernateUtilAnswer.getSession();
        Transaction t = s.beginTransaction();
        s.save(ac);
        t.commit(); 
    }
    
}



