var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.frase = "";
    if($scope.frase.length > 10)
    {
        console.log('teste')
    }
});
const p = document.querySelector('.frase').value;
if(p.length > 10)
{
    console.log('teste');
}
