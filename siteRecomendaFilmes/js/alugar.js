var carrinho = new Array()
function criarFilme(cod,nom,qnt)
{
    this.codigo = cod
    this.nome = nom
    this.quantidade = qnt
}

function adcFilme(cod,nom,qnt)
{
    carrinho[carrinho.lenght] = new criarFilme(cod,nom,qnt)
}

function listarfilmes()
{
    var total
    with(document)
    {
        write('<html><head><title> Sua lista de filmes</title>')
        write('<link rel="stylesheet" href="css/index.css">')
        write('</head<body>')
        write('<h1>filmes escolhidos</h1>')
        write('<table border=0 cellpadding=1')
        write('<tr>')
        write('<th>Nome do filme</th>')
        write('<th>Id filme</th>')
        write('</tr>')
        total =0
    for(var i=0; i < carrinho.length;i++){
    write('<tr>')
    write('<td>',carrinho[i].nom,'</td>')
    write('<td>',carrinho[i].cod,'</td>')
    write('</tr>')
    total += parseInt(carrinho[i].qnt)
    }
        write('<tr>')
        write('<td> Total </td')
        write('<td>',total,'</td>')
        write('</tr></tabe>')
        write('<button><a href="alugar.html">voltar a pagina inicial</a></button')
        write('</body></html>')
    }
}