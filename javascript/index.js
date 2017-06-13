var app = angular.module('firstApplication', ['ngMaterial', 'ngRoute']);

app.config(['$routeProvider', function($routeProvider){
    $routeProvider
    .when('/', {
        templateUrl: 'templates/pages/home/index.html',
    })
    .when('/topics', {
        templateUrl: 'templates/pages/topics/index.html',
    })
    .when('/videos', {
        templateUrl: 'templates/pages/videos/index.html'
    })
    .when('/about', {
        templateUrl: 'templates/pages/about/index.html'
    })
    .otherwise({
        redirectTo: '/'
    });
}]);