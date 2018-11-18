package ListenMusic.dao;

import ListenMusic.model.Songer;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import java.util.List;

public class SongerDao {
    Session session = null;
    Configuration configuration = new Configuration().configure();
    SessionFactory sessionFactory = configuration.buildSessionFactory();
    List<Songer> songerList = null;
    public List<Songer> query(){
        try {
            session = sessionFactory.openSession();
            String hql = "from Songer order by songerId";
            Query query = session.createQuery(hql);
            songerList = query.list();
        }catch ( HibernateException e){
            e.printStackTrace();
            return null;
        }finally {
            if (session != null)
                session.close();
        }
        return songerList;
    }

    public List<Songer> querySomeOneSonger(String name){
        try {
            session = sessionFactory.openSession();
            String hql = "from Songer where songerName =:songname";
            Query query = session.createQuery(hql);
            query.setParameter("songname",name);
            songerList = query.list();
        }catch ( HibernateException e ){
            e.printStackTrace();
            return null;
        }finally {
            if(session !=null)
                session.close();
        }
        return songerList;
    }
    public Boolean AddSonger(String name){
        Boolean aBoolean = null;
        Songer songer = new Songer();
        songer.setSongerName(name);
        try {
            session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            session.save(songer);
            transaction.commit();
            aBoolean = true;
        }catch ( Exception e ){
            e.printStackTrace();
            aBoolean = false;
        }finally {
            if (session != null)
                session.close();
        }
        return aBoolean;
    }
    public Boolean deleteSongerByName(String name){
        Boolean aBoolean = null;
        MusicInfoDao musicInfoDao = new MusicInfoDao();
        if (musicInfoDao.deleteBySonger(name))
            System.out.println(666);

        //删除用户收藏
        UserCollectDao userCollectDao = new UserCollectDao();
        if (userCollectDao.deleteBySongerName(name))
            System.out.println(77778);
        try {
            session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            String hql= "delete from Songer where songerName =:songname";
            Query query = session.createQuery(hql);
            query.setParameter("songname",name);
            int i = query.executeUpdate();
            if (i != 0)
                aBoolean = true;

        }catch ( Exception e ){
            e.printStackTrace();
            aBoolean = false;
        }finally {
            if (session != null)
                session.close();
        }
        return aBoolean;
    }
}