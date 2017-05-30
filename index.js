var app = angular.module("topicList", []); 
app.controller("myCtrl", function($scope) {
    $scope.topics = [
            {name:"Rockets", link:"https://en.wikipedia.org/wiki/Rocket" },
            {name:"Satellite", link:"https://en.wikipedia.org/wiki/Satellite" }, 
            {name:"Kepler", link: "https://en.wikipedia.org/wiki/Kepler%27s_laws_of_planetary_motion"}
    ];
    $scope.temp_topics = $scope.topics;
    $scope.searchTopic = function() {
        var ctr = 0;
        for (var i = 0; i < $scope.topics.length; i++){
            if ($scope.topics[i].name == $scope.searchMe){
                $scope.temp_topics = [$scope.topics[i]];
                console.log($scope.temp_topics);
                ctr++;
            }    
        } 
        if (!ctr) {
            $scope.temp_topics = $scope.topics;
        }
    }
});