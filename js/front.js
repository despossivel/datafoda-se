$(document).on("click", ".boxCandidato", function () {
  const id = $(this).attr('id');
  const foto = $(`#${id}`).find('.headBox').find('.foto').html();
  const nome = $(`#${id}`).find('.headBox').find('.nome').html()

  $('.btnConfirmar').attr('id', id)
  $('#titleModal').html(nome)
  $('.containerModal').html(foto);
  $('.modal-footer').show()

});

$(document).on('click', '.btnConfirmar', function () {
  const id = $(this).attr('id')

  $('.modal-footer').hide()
  $('.modal-content').html("<div class='displayFlex'><div class='loaderMin'></div></div>");

  M.toast({
    html: 'O Voto é secreto e ninguém irá saber sua identidade! :)', classes: 'rounded', outDuration: 400, inDuration: 400, completeCallback: function () {
      $.ajax(`./api/votar.php?candidato=${id}`)
        .done(function (json) {
          let mensage = json.mensage;
          if (mensage) {
            $('.modal').css('background-color', '#8bc34a').css('color', '#fff')
            $('.displayFlex').html("<i class='material-icons'>check</i> <span>Voto efetuado com sucesso!</span>")
            playSong();
            setTimeout(() => location.reload(), 2500)
          }
        })
    }
  });

});