function autenticate()
{
 var firstName = document.querySelector('#firstName').value;
 var lastName = document.querySelector('#lastName').value;
 var email = document.querySelector('#email').value;
 var password = document.querySelector('#password').value;

 if(firstName|lastName|email|password == '')
 {
    alert('você esqueceu de digitar dados necessários, por favor realize cadastro novamente')
 }
 else
 {
    dados = {'firstName':firstName,'lastName':lastName,'email':email,'password':password};
    JSON.stringify(dados);
    window.open('http://127.0.0.1:5500/alugar.html')
 }
}
