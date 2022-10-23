let DADOS, TOTAL;

const init = () => {

  $.ajax("./api/candidatos.php")
    .done(function (json) {
      const dados = json.dados;
      const length = dados.length;

      $('#wrap').empty();

      for (let i = length - 1; i >= 0; i--) {
        const id = dados[i].id;
        const nome = dados[i].nome;
        const numeroDeVotos = dados[i].numeroDeVotos;
        const partido = dados[i].partido;
        const foto = dados[i].foto;
        const numero = dados[i].numero;

        $('#wrap').append(`<a data-target="modal1" class="modal-trigger boxCandidato z-depth-1" href="#" id='${id}'> 
                            <div class='headBox'>
                              <div class='foto'>
                                <img class="z-depth-1" src="../imgs/candidatos/${foto}" />
                              </div>
                              <div class='nome'>
                                ${nome}
                              </div>
 
                            </div>
                            </a>`);

      }
    })
}
// ${numero} - ${partido}

const initResultado = () => {

  $.ajax("./api/resultado.php")
    .done(function (json) {
      const totalVotos = json.totalVotos;
      const dados = json.dados;
      const length = dados.length;

      DADOS = dados;
      TOTAL = totalVotos;
      
 
      $('.title').html(`${totalVotos} deixaram sua intenção de voto.`);
      $('#wrap').empty();

      for (let i = length - 1; i >= 0; i--) {
        const id = dados[i].id;
        const nome = dados[i].nome;
        const numeroDeVotos = dados[i].numeroDeVotos;
        const partido = dados[i].partido;
        const foto = dados[i].foto;
        const numero = dados[i].numero;

        let porcentagem = numeroDeVotos / totalVotos * 100;
        porcentagem = porcentagem.toFixed(2);
        // ${porcentagem}%

        $('#wrap').append(`<div class='boxCandidato z-depth-1' id='${id}'> 
                              <div class='headBox'>
                                <div class='foto'>
                                  <img src="../imgs/candidatos/${foto}" />
                                </div>
                                <div class='nome'>
                                  ${nome}
                                </div>
 
                              </div>
                          </div>`);

      }

    });
}