let audioPlayer = document.getElementsByTagName('audio')[0];
const playSong = () => {
  audioPlayer.src = './sons/comfirmacao.mp3';
  audioPlayer.load();
  audioPlayer.play();
}