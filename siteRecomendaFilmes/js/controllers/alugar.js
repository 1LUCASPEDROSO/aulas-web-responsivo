var carrinho = new Array()
function criarproduto(cod,nom,prc)
{
    this.codigo = cod
    this.nome = nom
}

function adcproduto(cod,nom)
{
    carrinho[carrinho.lenght] = new criarproduto(cod,nom,prc)
}

function Mostrarproduto()
{
    var total
    with(document)
    {
        Write('<html><head><title> Efetivar compras</title>')
        write('<link rel="stylesheet" href="css/estilos.css">')
        write('</head<body>')
        write('<h1>filmes escolhidos</h1>')
        write('<table border=0 cellpadding=1')
        write('<tr>')
        write('<th>nome</th>')
        write('</tr>')
        total =0
        for (var i=0; i< carrinho.lenght; i++)
        {
            write('<td>',carrinho[i].nome,'</td>')
            write('</tr>')
        }
        write('<tr>')
        write('<td> Total </td')
        write('<td>',total,'</td>')
        write('</tr></tabe>')
        write('<button><a href="index.html">voltar a pagina inicial</a></button')
        write('</body></html>')
        close()
    }
}