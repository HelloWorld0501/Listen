package ListenMusic.model;

import javax.persistence.*;

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
@Table(name = "user_collection", schema = "music_database", catalog = "")
public class UserCollection {
    private long id;
    private String userEmail;
    private Long musicId;
    private String musicUrl;
    private String musicArtist;
    private String musicName;
    private String musicCover;
    private String musicLrc;

    @Id
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "user_email")
    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    @Basic
    @Column(name = "music_id")
    public Long getMusicId() {
        return musicId;
    }

    public void setMusicId(Long musicId) {
        this.musicId = musicId;
    }

    @Basic
    @Column(name = "music_url")
    public String getMusicUrl() {
        return musicUrl;
    }

    public void setMusicUrl(String musicUrl) {
        this.musicUrl = musicUrl;
    }

    @Basic
    @Column(name = "music_artist")
    public String getMusicArtist() {
        return musicArtist;
    }

    public void setMusicArtist(String musicArtist) {
        this.musicArtist = musicArtist;
    }

    @Basic
    @Column(name = "music_name")
    public String getMusicName() {
        return musicName;
    }

    public void setMusicName(String musicName) {
        this.musicName = musicName;
    }

    @Basic
    @Column(name = "music_cover")
    public String getMusicCover() {
        return musicCover;
    }

    public void setMusicCover(String musicCover) {
        this.musicCover = musicCover;
    }

    @Basic
    @Column(name = "music_lrc")
    public String getMusicLrc() {
        return musicLrc;
    }

    public void setMusicLrc(String musicLrc) {
        this.musicLrc = musicLrc;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserCollection that = (UserCollection) o;

        if (id != that.id) return false;
        if (userEmail != null ? !userEmail.equals(that.userEmail) : that.userEmail != null) return false;
        if (musicId != null ? !musicId.equals(that.musicId) : that.musicId != null) return false;
        if (musicUrl != null ? !musicUrl.equals(that.musicUrl) : that.musicUrl != null) return false;
        if (musicArtist != null ? !musicArtist.equals(that.musicArtist) : that.musicArtist != null) return false;
        if (musicName != null ? !musicName.equals(that.musicName) : that.musicName != null) return false;
        if (musicCover != null ? !musicCover.equals(that.musicCover) : that.musicCover != null) return false;
        if (musicLrc != null ? !musicLrc.equals(that.musicLrc) : that.musicLrc != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (userEmail != null ? userEmail.hashCode() : 0);
        result = 31 * result + (musicId != null ? musicId.hashCode() : 0);
        result = 31 * result + (musicUrl != null ? musicUrl.hashCode() : 0);
        result = 31 * result + (musicArtist != null ? musicArtist.hashCode() : 0);
        result = 31 * result + (musicName != null ? musicName.hashCode() : 0);
        result = 31 * result + (musicCover != null ? musicCover.hashCode() : 0);
        result = 31 * result + (musicLrc != null ? musicLrc.hashCode() : 0);
        return result;
    }
}