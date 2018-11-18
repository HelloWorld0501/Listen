package ListenMusic.dao;

import ListenMusic.model.User;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import java.util.List;


public class UserDao {
    Boolean aBoolean = null;
    Session session = null;
    Configuration configuration = new Configuration().configure();
    SessionFactory sessionFactory = configuration.buildSessionFactory();
    public Boolean createUser(User user){
        try {
            session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            session.save(user);
            transaction.commit();
            aBoolean = true;
        }catch ( Exception e ){
            aBoolean = false;
            e.printStackTrace();
        }finally {
            if (session != null)
                session.close();
        }
        return aBoolean;
    }

    public String userLogin(String email,String passwd){
        String username = null;
        try {
            session = sessionFactory.openSession();
            String hql = "from User where email =: userEm";
            Query query = session.createQuery(hql);
            query.setParameter("userEm",email);
            List<User> userList = query.list();
            User user = userList.get(0);
            if (user.getPassword().equals(passwd))
                username = user.getUsername();
            else
                username = null;
        }catch ( Exception e ){
            e.printStackTrace();
            aBoolean = false;
        }finally {
            if (session != null)
                session.close();
        }

        return username;
    }
}