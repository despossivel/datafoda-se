M.toast({ html: 'Click ou toque sobre o candidato para deixa sua intenção de voto.', classes: 'rounded', outDuration: 400, inDuration: 400 });

document.addEventListener('DOMContentLoaded', function () {
  var elems = document.querySelectorAll('.modal');
  var instances = M.Modal.init(elems);
});