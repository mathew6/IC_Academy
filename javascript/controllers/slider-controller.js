angular.module('firstApplication').controller('sliderController', sliderController);

    function sliderController($scope, $log) {
        $scope.test = 250;
        $scope.test1 = 125;
        $scope.redLine = 575;
        $scope.blueLine = 150;
    };