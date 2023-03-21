function autenticateCadastrer() {
   let firstName = document.querySelector('#firstName').value;
   let lastName = document.querySelector('#lastName').value;
   let email = document.querySelector('#email').value;
   let password = document.querySelector('#password').value;

   if (firstName | lastName | email | password == '') {
      alert('você esqueceu de digitar dados necessários, por favor realize cadastro novamente')
      if (firstName == ''){ alert('Digite seu primeiro nome novamente');}
      if (lastName == '') {alert('Digite seu ultimo  nome novamente');}
      if (email == '' + '@gmail.com' | '12345' + '@gmail.com') {alert('Digite seu email novamente');}
      if (password == '') {alert('Digite a senha novamente');}
   }
   else {
      function SaveDataLogin() {
         data = { firstName: firstName, lastName: lastName, email: email, password: password };
         teste = JSON.stringify(data);
         alert(teste);
         window.open('alugar.html')
         return teste;
      }
      SaveDataLogin();
   }
}
function autenticatelogin() {
   let emailLogin = document.querySelector('#email2').value;
   let senhaLogin = document.querySelector('#password2').value;

   if (emailLogin | senhaLogin == '') {
      alert('digite seus dados novamente')
   }
   else {
      alert('passou na verificação de email e senha')
      for (let i; i < data.lenght; i++) {
         if (emailLogin && senhaLogin == teste.email && teste.password) {
            alert('Login feito com sucesso')
            window.open('alugar.html')
         }
         else {
            alert('dados de login incorretos, tente novamente')
         }
      }
   }
}
