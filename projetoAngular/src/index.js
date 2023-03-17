/*const change_value = (event) => 
{
    document.querySelectorbyId('#pName');
    prompt('digite seu nome:');
    change_value.addEventListener('click',);
}*/

const dataname = document.querySelector('#pName');
dataname.addEventListener('click',changeName)
function changeName()
{
    let name = prompt('digit the name of student');
    dataname.textContent = 'Aluno : '+ name;
    return name;
    console.log(name);
}

