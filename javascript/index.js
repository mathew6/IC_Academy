var app = angular.module('firstApplication', ['ngMaterial', 'ngRoute', 'ui.router']);

//UI-router
app.config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/');
    $stateProvider
    .state('home', {
        url: '/',
        templateUrl: 'templates/pages/home/index.html',
    })
    .state('topics', {
        url: '/topics',
        templateUrl: 'templates/pages/topics/index.html',
    })
    .state('videos', {
        url:'/videos',
        templateUrl: 'templates/pages/videos/index.html'
    })
    .state('about', {
        url: '/about',
        templateUrl: 'templates/pages/about/index.html'
    })
    .state('orbital',{
        url: '/topics/orbital',
        templateUrl: 'templates/pages/topics/orbital/index.html'
    })
    .state('satellites',{
        url: '/topics/satellites',
        templateUrl: 'templates/pages/topics/satellites/index.html'
    })
    .state('kepler',{
        url: '/topics/kepler',
        templateUrl: 'templates/pages/topics/kepler/index.html'
    })
    .state('orbital.Lesson1', {
        url: '/topics/orbital/lesson1',
        templateUrl: 'templates/pages/topics/orbital/lesson1.html'
    })
    .state('orbital.Lesson2', {
        url: '/topics/orbital/lesson2',
        templateUrl: 'templates/pages/topics/orbital/lesson2.html'
    })
    .state('orbital.Lesson3', {
        url: '/topics/orbital/lesson3',
        templateUrl: 'templates/pages/topics/orbital/lesson3.html'
    })
    .state('orbital.Lesson4', {
        url: '/topics/orbital/lesson4',
        templateUrl: 'templates/pages/topics/orbital/lesson4.html'
    })    
    .state('orbital.Lesson5', {
        url: '/topics/orbital/lesson5',
        templateUrl: 'templates/pages/topics/orbital/lesson5.html'
    })       
    .state('orbital.Lesson6', {
        url: '/topics/orbital/lesson6',
        templateUrl: 'templates/pages/topics/orbital/lesson6.html'
    })
    .state('trigonometry', {
        url: '/topics/trigonometry',
        templateUrl: 'templates/pages/topics/trigonometry/index.html'
    })        
});
app.run(function($rootScope, $state, $document, $stateParams){ 
    $rootScope.$state = $state; $rootScope.$stateParams = $stateParams;
    $rootScope.$on('$stateChangeSuccess', function() { 
        $document[0].body.scrollTop = $document[0].documentElement.scrollTop = 0;
    });
})