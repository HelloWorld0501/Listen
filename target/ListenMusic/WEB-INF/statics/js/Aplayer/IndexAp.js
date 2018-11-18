ap = new APlayer({
    container: document.getElementById('player'),
    listFolded: true,
    listMaxHeight: 90,
    lrcType: 3,
    mutex: false,
    audio: [
        {
            name: '遥远的她',
            artist: '张学友',
            url: 'https://music.163.com/song/media/outer/url?id=191232',
            cover: 'https://p1.music.126.net/rxyLRMZdqzHdxyP5cl8qQA==/43980465112095.jpg?param=130y130',
            lrc: 'http://music.163.com/api/song/media?id=191232',
            theme: '#ebd0c2'
        },
        {
            name: 'Good Time',
            artist: 'Owl City',
            url: 'https://music.163.com/song/media/outer/url?id=17706562',
            cover: 'https://p2.music.126.net/c5NVKUIAUcyN4BQUDbGnEg==/109951163221157827.jpg?param=130y130',
            lrc: 'http://music.163.com/api/song/media?id=17706562',
            theme: '#46718b'
        }
    ]
});
