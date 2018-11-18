package ListenMusic.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * \* Created with IntelliJ IDEA.
 * \* User: Blue
 * \* Date: 2018/11/16
 * \* Time: 23:01
 * \* To change this template use File | Settings | File Templates.
 * \* Description:
 * \
 */
@Entity
public class Songer {
    private long songerId;
    private String songerName;

    @Id
    @Column(name = "songer_id")
    public long getSongerId() {
        return songerId;
    }

    public void setSongerId(long songerId) {
        this.songerId = songerId;
    }

    @Basic
    @Column(name = "songer_name")
    public String getSongerName() {
        return songerName;
    }

    public void setSongerName(String songerName) {
        this.songerName = songerName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Songer songer = (Songer) o;

        if (songerId != songer.songerId) return false;
        if (songerName != null ? !songerName.equals(songer.songerName) : songer.songerName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (songerId ^ (songerId >>> 32));
        result = 31 * result + (songerName != null ? songerName.hashCode() : 0);
        return result;
    }
}