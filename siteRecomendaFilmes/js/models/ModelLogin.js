 import { controllerLogin } from "../controllers/controllerLogin";
    let _firstName = controllerLogin.firstName;
    let _lastName = controllerLogin.lastName;
    let _email = controllerLogin.email;
    let _pasword = controllerLogin.password;
function gerateCadastrer (firstName,lastname,email,password)
{
    event.preventDefault();
    console.log(firstName)
    console.log(lastname)
    console.log(email)
    console.log(password)
    alert('dados salvos com sucesso')
}
module.exports = ModelLogin;