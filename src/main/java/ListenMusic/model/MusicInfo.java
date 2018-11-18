package ListenMusic.model;

import javax.persistence.*;

/**
 * \* Created with IntelliJ IDEA.
 * \* User: Blue
 * \* Date: 2018/11/16
 * \* Time: 23:06
 * \* To change this template use File | Settings | File Templates.
 * \* Description:
 * \
 */
@Entity
@Table(name = "music_info", schema = "music_database", catalog = "")
public class MusicInfo {
    private long musicId;
    private String musicName;
    private String musicArtist;
    private long songerId;
    private String musicUrl;
    private String musicCover;
    private String musicLrc;

    @Id
    @Column(name = "music_id")
    public long getMusicId() {
        return musicId;
    }

    public void setMusicId(long musicId) {
        this.musicId = musicId;
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
    @Column(name = "music_artist")
    public String getMusicArtist() {
        return musicArtist;
    }

    public void setMusicArtist(String musicArtist) {
        this.musicArtist = musicArtist;
    }

    @Basic
    @Column(name = "songer_id")
    public long getSongerId() {
        return songerId;
    }

    public void setSongerId(long songerId) {
        this.songerId = songerId;
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

        MusicInfo musicInfo = (MusicInfo) o;

        if (musicId != musicInfo.musicId) return false;
        if (songerId != musicInfo.songerId) return false;
        if (musicName != null ? !musicName.equals(musicInfo.musicName) : musicInfo.musicName != null) return false;
        if (musicArtist != null ? !musicArtist.equals(musicInfo.musicArtist) : musicInfo.musicArtist != null)
            return false;
        if (musicUrl != null ? !musicUrl.equals(musicInfo.musicUrl) : musicInfo.musicUrl != null) return false;
        if (musicCover != null ? !musicCover.equals(musicInfo.musicCover) : musicInfo.musicCover != null) return false;
        if (musicLrc != null ? !musicLrc.equals(musicInfo.musicLrc) : musicInfo.musicLrc != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (musicId ^ (musicId >>> 32));
        result = 31 * result + (musicName != null ? musicName.hashCode() : 0);
        result = 31 * result + (musicArtist != null ? musicArtist.hashCode() : 0);
        result = 31 * result + (int) (songerId ^ (songerId >>> 32));
        result = 31 * result + (musicUrl != null ? musicUrl.hashCode() : 0);
        result = 31 * result + (musicCover != null ? musicCover.hashCode() : 0);
        result = 31 * result + (musicLrc != null ? musicLrc.hashCode() : 0);
        return result;
    }
}