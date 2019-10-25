let audioPlayer = document.getElementsByTagName('audio')[0];

const playSong = (som) => {
  audioPlayer.src = `./sons/${som}.mp3`;
  audioPlayer.load();
  audioPlayer.play();
}

const stopSong = () => audioPlayer.pause();