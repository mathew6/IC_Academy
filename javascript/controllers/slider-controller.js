angular.module('firstApplication').controller('sliderController', sliderController);

    function sliderController($scope, $log) {
        //semi-major and semi-minor axis slider
        $scope.sMaj = 250;
        $scope.sMin = 125;
        $scope.redLine = 575;
        $scope.blueLine = 150;

        //eccentricity slider
        var eccenConstant = 150; //default starting length
        $scope.eccen = .45; //default eccentricity
        $scope.b = Math.sqrt(Math.pow(eccenConstant,2) - Math.pow(eccenConstant,2)*Math.pow($scope.eccen,2));
        $scope.a = Math.sqrt(Math.pow(eccenConstant,2)/(1 - Math.pow($scope.eccen,2)));
        //will update eccentricty every time the slider or input is used
        $scope.updateEccentricity = function() {
            $scope.b = Math.sqrt(Math.pow(eccenConstant,2) - Math.pow(eccenConstant,2)*Math.pow($scope.eccen,2));
            $scope.a = Math.sqrt(Math.pow(eccenConstant,2)/(1 - Math.pow($scope.eccen,2)));
        };
    };
