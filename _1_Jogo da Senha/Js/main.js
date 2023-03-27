const main_display = document.querySelector('main');
const div_seleciona_cor = document.getElementById('div_dados');
const enviar = document.querySelector('.btnEnviar');

let TamanhoSenha = 4;
let tentativas = 10;
let cores = ['black','blue','green','red','yellow','pink'];

let senha = [];
let tentativasEnviadas = 1;

inicarJogo();

function inicarJogo()
{
    //console.log('chegou na função');
   // console.log(tentativas)
    senha = [] // vetor que vai ser gerado  senha aleatóriap ara ser descoberta
    tentativasEnviadas = 1 // contador de tentativas feitas pelo jogador começando em 1 obrigatório
    main_display.innerHTML = ''; // procurando no HTML a TAG Main e inicilaizando vazia
    //div_seleciona_cor.innerHTML = ''; // procurando no HTML a TAG SelecionaCor e inicilaizando vazia
    for (let i = 1; i <= tentativas; i++) { /* for usando o numero de tentativas definodo na Let tentativas para inicializar as divs. de left para cores que o usuario escolheu e right para verificação de cores comparado com o vetor de senha[].*/
    //console.log('chegou no primeiro for')
      let div_tentativa = document.createElement('div'); // variavel criada para criar um elemento 'div'.
      div_tentativa.setAttribute('id','tentativa'+i); // função para setar atributos na 'div' de tentativa baseado na volta do for. Ex for na volta 10, gera 'tentativa-10'.
      div_tentativa.setAttribute('class','tentativa')// função para setar atributo class na div 'tentativa' atributo class é usado somente para dar estilização as div criadas.
       let div_left = document.createElement('div'); // variavel criada para criar um elemento 'div'.
       div_left.setAttribute('class','left'); // função para setar atributo class na div 'left' atributo class é usado somente para dar estilização as div criadas.
       let div_right = document.createElement('div'); // variavel criada para criar um elemento 'div'.
       div_right.setAttribute('class','right'); // função para setar atributo class na div, 'right' atributo class é usado somente para dar estilização as div criadas.

       for (let i = 1; i <= TamanhoSenha; i++) { /*for baseado no tamanho da senha que escolhemos, cada volta é criado uma div_l e div_r nova dentro da div_left e div_right criadas anteriormente.*/
       //console.log('chegou no segundo for')
       //console.log(TamanhoSenha);
        div_l = document.createElement('div'); // variavel criada para criar um elemento 'div'.
        div_r = document.createElement('div'); // variavel criada para criar um elemento 'div'.
        div_left.append(div_l); // função para inserir a div_l como filha na div_left.
        div_right.append(div_r); // função para inserir a div_l como filha na div_right.  
    }
     div_tentativa.append(div_left); // função para colocar div_left como filha da div_tentativa
     div_tentativa.append(div_right); // função para colocar div_left como filha da div_tentativa
     main_display.prepend(div_tentativa);
    }

    for (let i = 1; i <= TamanhoSenha; i++) {
       
       let dados = document.createElement('div');
       dados.setAttribute('class','dados');
       let  selecionar = document.createElement('select');
        selecionar.setAttribute('class','SelecionaCor')
       for (let cor of cores) {
        let opcaoCor = document.createElement('option');
        opcaoCor.setAttribute('style','background-color:'+cor);
        opcaoCor.setAttribute('value',cor);
        selecionar.append(opcaoCor);
       }
       selecionar.setAttribute('style','background-color:'+cores[0]);

       selecionar.addEventListener('change', (e) =>{
        e.target.setAttribute('style','background-color:'+e.target.value)
       });

       dados.append(selecionar);
       div_seleciona_cor.append(dados)
    }
    CreateRandomCode();
}
function CreateRandomCode(){
    for (let i = 1; i <= TamanhoSenha; i++) {
        let cor_randomica = cores[Math.floor(Math.random()*cores.length)]
        senha.push(cor_randomica);
    }
    console.log(senha);
}
enviar.addEventListener('click', (e) => {
    let inputCores = document.querySelectorAll('.SelecionaCor>option');
    let arrayInputCores = [];
    for (let v of inputCores) {
        arrayInputCores.push(v.value)
    }
    console.log(inputCores);
    Mostrar_ultima_Sequencia('left',arrayInputCores);
});

function Mostrar_ultima_Sequencia(type, cores) {
    let tryView = document.querySelectorAll('#try-'+tentativasEnviadas+'>.'+type+'>div');
    console.log(tryView);
    tryView.forEach((v, i) => {
        v.setAttribute('style', 'background-color:'+cores[i]);
    });
}
