const cores  = []
var valorBtn = []

for( let x =0; x<cores.length;x++)
{
    var valorBtn = [
        document.querySelector('#btn-1').value,
        document.querySelector('#btn-2').value,
        document.querySelector('#btn-3').value,
        document.querySelector('#btn-4').value,
    ] 
}

function GerarSenha()
{
    teste = Math.random(1,2,3,4,5);
    alert(teste);
}

function random_item(items)
{
  
return items[Math.floor(Math.random()*items.length)];
     
}

var items = ['vemelho', 'verde','azul', 'amarelo', 'rosa'];
alert(random_item(items));