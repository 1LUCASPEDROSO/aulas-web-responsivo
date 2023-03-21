var carrinho = new Array();
function criarFilme(cod,nom,qnt)
{
    this.codigo = cod
    this.nome = nom
    this.quantidade = qnt
}

function adcFilme(cod,nom,qnt)
{
    carrinho[carrinho.length] = new criarFilme(cod,nom,qnt)
}

function listarfilmes()
{
    var total
    with(document)
    {
        write('<html><head><title> Sua lista de filmes</title>')
        write('<link rel="stylesheet" href="css/index.css">')
        write('<meta http-equiv="X-UA-Compatible" content="IE=edge">')
        write('<meta name="viewport" content="width=device-width, initial-scale=1.0">')
        write('<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">')
        write('<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script> ')
        write('</head<body>')
        write('<div class="container">')
        write('<h1>Filmes escolhidos</h1>')
        write('<table class="highlight"')
        write('<tr>')
        write('<th>Nome do filme</th>')
        write('<th>Id filme</th>')
        write('</tr>')
        total =0
    for(var i=0; i < carrinho.length;i++){
    write('<tr>')
    write('<td>',carrinho[i].nome,'</td>')
    write('<td>',carrinho[i].codigo,'</td>')
    write('</tr>')
    total += parseInt(carrinho[i].quantidade)
    }
        write('<tr>')
        write('<td> Total </td')
        write('<td>',total,'</td>')
        write('</tr></table>')
        write('<h1> TODOS OS FILMES SÃO VALIDOS POR 1 SESSÃO, DIVIRTA-SE</H1>')
        write('<button class ="waves-effect waves-light btn-large blue-grey darken-4"><a href="alugar.html">voltar a pagina inicial</a></button')
        write('</div>')
        write('</body></html>')
        console.log(carrinho);
    }
}