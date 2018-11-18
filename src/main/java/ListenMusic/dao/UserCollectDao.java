package ListenMusic.dao;

import ListenMusic.model.UserCollection;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import java.util.List;

public class UserCollectDao {
    Boolean aBoolean = null;
    Session session = null;
    Configuration configuration = new Configuration().configure();
    SessionFactory sessionFactory = configuration.buildSessionFactory();
    public Boolean addCol(String email,String musicid,String musicurl,String musicname,String musicartist,String musiccover,String musiclrc){
        UserCollection userCollection = new UserCollection();
        userCollection.setMusicArtist(musicartist);
        userCollection.setMusicCover(musiccover);
        userCollection.setMusicId(Long.valueOf(musicid));
        userCollection.setMusicLrc(musiclrc);
        userCollection.setMusicUrl(musicurl);
        userCollection.setUserEmail(email);
        userCollection.setMusicName(musicname);
        try {
            session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            session.save(userCollection);
            transaction.commit();
            aBoolean = true;
        }catch ( Exception e ){
            aBoolean = false;
            e.printStackTrace();
        }finally {
            if (session != null){
                session.close();
            }

        }
        return aBoolean;
    }
    public List<UserCollection> getCols(String email){
        List<UserCollection> userCollections = null;
        try {
            session = sessionFactory.openSession();
            String hql = "from UserCollection where userEmail =:em";
            Query query = session.createQuery(hql);
            query.setParameter("em",email );
            userCollections = query.list();
        }catch ( HibernateException e ){
            e.printStackTrace();
        }finally {
            if (session != null)
                session.close();
        }
        return userCollections;
    }

    public Boolean deleteById(long id){
        Boolean aBoolean = false;
        try {
            session =sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            String hql = "delete from UserCollection where id =:deleteId";
            Query query = session.createQuery(hql);
            query.setParameter("deleteId",id);
            int i = query.executeUpdate();
            if (i != 0){
                aBoolean = true;
            }
            transaction.commit();
        }catch ( HibernateException e ){
            e.printStackTrace();
            aBoolean = false;
        }finally {

        }
        return aBoolean;
    }
    public Boolean deleteByName(String name){
        Boolean aBoolean = false;
        try {
            session =sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            String hql = "delete from UserCollection where musicName =:deleteName";
            Query query = session.createQuery(hql);
            query.setParameter("deleteName",name);
            int i = query.executeUpdate();
            if (i != 0){
                aBoolean = true;
            }
            transaction.commit();
        }catch ( HibernateException e ){
            e.printStackTrace();
            aBoolean = false;
        }finally {
            session.close();
        }
        return aBoolean;
    }

    public Boolean deleteBySongerName(String name){
        Boolean aBoolean = false;
        try {
            session =sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            String hql = "delete from UserCollection where musicArtist =:deleteName";
            Query query = session.createQuery(hql);
            query.setParameter("deleteName",name);
            int i = query.executeUpdate();
            if (i != 0){
                aBoolean = true;
            }
            transaction.commit();
        }catch ( HibernateException e ){
            e.printStackTrace();
            aBoolean = false;
        }finally {
            session.close();
        }
        return aBoolean;
    }
}