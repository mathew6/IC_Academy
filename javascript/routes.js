angular.module('firstApplication', ['ngRoute']).config(['$routeProvider', function($routeProvider){
    $routeProvider
    .when('/', {
        templateUrl: 'index.html'
    })
    .when('/topics', {
        templateUrl: 'template/pages/topics/index.html',
        controller: 'autoCompleteController'
    });
}]);