angular.module('firstApplication').controller('lessonController', lessonController);
function lessonController($scope, $log) {
    $scope.highlightTab = function(lessonId) {
        document.getElementById(lessonId).style.backgroundColor = "orangered";
        for (i in $scope.lessons) {
            if ($scope.lessons[i].id != lessonId) {
                document.getElementById($scope.lessons[i].id).style.backgroundColor = "#94A3E3";
            }
        }
    }

    $scope.lessons = [
        {   
            uisref: "orbital.Lesson1", 
            id: "lesson1",
            name: "Lesson 1: Orbital Geometry"
        },

        {
            uisref: "orbital.Lesson2", 
            id: "lesson2",
            name: "Lesson 2: Keplar's Laws"
        },

        {
            uisref: "orbital.Lesson3", 
            id: "lesson3",
            name: "Practice"
        },

        {   
            uisref: "orbital.Lesson4", 
            id: "lesson4",
            name: "Lesson 3: Low Earth Orbits"
        },

        {
            uisref: "orbital.Lesson5", 
            id: "lesson5",
            name: "Lesson 4: Highly Eliptical Orbits"
        },

        {
            uisref: "orbital.Lesson6", 
            id: "lesson6",
            name: "Lesson 5: Geo-Stationary Orbits"
        }
    ]

}