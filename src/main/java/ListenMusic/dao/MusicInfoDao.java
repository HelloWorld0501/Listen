package ListenMusic.dao;

import ListenMusic.model.MusicInfo;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import java.util.List;

public class MusicInfoDao {
    Session session = null;
    Configuration configuration = new Configuration().configure();
    SessionFactory sessionFactory = configuration.buildSessionFactory();
    List<MusicInfo> musicInfoList = null;
    public List<MusicInfo> query(){
        try {
            session = sessionFactory.openSession();
            String hql = "from MusicInfo order by musicId";
            Query query = session.createQuery(hql);
            musicInfoList = query.list();
        }catch ( HibernateException e ){
            e.printStackTrace();
            return null;
        }finally {
            if (session != null)
                session.close();
        }
        return musicInfoList;
    }
    public List<MusicInfo> queryByArtists(String name){
        try {
            session = sessionFactory.openSession();
            String hql = "from MusicInfo where musicArtist =:artist";
            Query query = session.createQuery(hql);
            query.setParameter("artist", name);
            musicInfoList = query.list();
        }catch ( HibernateException e ){
            e.printStackTrace();
            return null;
        }finally {
            if (session != null)
                session.close();
        }
        return musicInfoList;
    }

    public List<MusicInfo> queryByMusic(String MuiscName){
        try {
            session = sessionFactory.openSession();
            String hql = "from MusicInfo where musicName =:musicname";
            Query query = session.createQuery(hql);
            query.setParameter("musicname", MuiscName);
            musicInfoList = query.list();
        }catch ( HibernateException e ){
            e.printStackTrace();
            return null;
        }finally {
            if (session != null)
                session.close();
        }
        return musicInfoList;
    }

    public Boolean addMusic(MusicInfo musicInfo){
        Boolean aBoolean = null;
        try {
            session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            session.save(musicInfo);
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
    public Boolean deleteMusic(String deleteName){
        Boolean aBoolean = null;
        try {
            session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            String hql = "delete from MusicInfo where musicName =:muId";
            Query query = session.createQuery(hql);
            query.setParameter("muId",deleteName);
            int i = query.executeUpdate();
            if (i != 0)
                aBoolean = true;
            transaction.commit();
            //删除关联的收藏
            UserCollectDao userCollectDao = new UserCollectDao();
            Boolean aBoolean1 = userCollectDao.deleteByName(deleteName);
        }catch ( HibernateException e ){
            aBoolean = false;
            e.printStackTrace();
        }finally {
            if (session != null)
                session.close();
        }
        return aBoolean;
    }
    public Boolean deleteBySonger(String name){
        Boolean aBoolean = null;
        try {
            session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            String hql = "delete from MusicInfo where musicArtist =:songername";
            Query query = session.createQuery(hql);
            query.setParameter("songername",name);
            int i = query.executeUpdate();
            if (i != 0)
                aBoolean = true;
            transaction.commit();
            //删除关联的收藏
        }catch ( HibernateException e ){
            aBoolean = false;
            e.printStackTrace();
        }finally {
            if (session != null)
                session.close();
        }
        return aBoolean;
    }
}