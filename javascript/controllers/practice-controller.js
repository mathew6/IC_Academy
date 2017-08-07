angular.module('firstApplication').controller('practiceController', practiceController);

    function practiceController($scope, $log) {
            $scope.hintBoolean = false;
            $scope.buttonShowHideStatus = "Show Hint";
            
            $scope.hint = function(problemNum) {
                $scope.hintBoolean = !$scope.hintBoolean;
                if (hintBoolean) {
                     document.getElementById($scope.exercises[problemNum - 1].problem).innerHTML +="<p>" + $scope.exercises[problemNum - 1].hint1 + "</p>"
                }
                if (!$scope.hintBoolean) {
                    $scope.buttonShowHideStatus = "Show Hint";
                }
                else {
                    $scope.buttonShowHideStatus = "Hide Hint";
                }

            };

           

            $scope.checkAnswer = function (problemNum) {
                if (document.getElementById($scope.exercises[problemNum - 1].problem).value === $scope.exercises[problemNum - 1].answer) {
                    $scope.exercises[problemNum - 1].result = "That's correct!";
                   
                }
                else {
                    $scope.exercises[problemNum - 1].result = "That's not right. Try Again!";
                    
               }
            };

            $scope.styleResult = function (problemNum) {
                if (document.getElementById($scope.exercises[problemNum - 1].problem).value === $scope.exercises[problemNum - 1].answer) {
                    $scope.exercises[problemNum - 1].style = {
                        "background-color" : "lightgreen",
                        "border" : "2px solid green"
                    }
                    $log.info($scope.exercises[problemNum - 1].style);
                }
                else if (document.getElementById($scope.exercises[problemNum - 1].problem).value) {
                    $scope.exercises[problemNum - 1].style = {
                        "background-color" : "pink",
                        "border" : "2px solid red"
                    }
               }
               return  $scope.exercises[problemNum - 1].style;
            };

            $scope.exercises = [
                {problem: 1,
                question: 'What is 20 + 20?',
                hint1: "It's 40",
                answer: '40',
                result: "",
                style: {}},
              

                {problem: 2,
                question: 'How sassy is Cam?',
                hint1: 'Emily is gone sooooo',
                answer: 'His sass level is over 9000',
                result: "",
                style: {}},

                {problem: 3,
                question: 'The square of the orbital period of a planet is directly proportional to the cube of the semi-major axis of its orbit describes which of Keplers Laws? (enter an integer)',
                hint1: "It's Keplers 3rd Law",
                answer: '3',
                result: "",
                style: {}},

                {problem: 4,
                question: 'True or False: Bridget is doing work.',
                hint1: "She's not",
                answer: 'False',
                result: "",
                style: {}},

                {problem: 5,
                question: 'Who am I? Who am I?',
                hint1: '24601',
                answer: 'Jean Valjean',
                result: "",
                style: {}},
        ];
    };

     

    