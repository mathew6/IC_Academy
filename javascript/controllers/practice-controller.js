angular.module('firstApplication').controller('practiceController', practiceController);

    function practiceController($scope, $log) {
            $scope.hint1 = false;
            $scope.showHideStatus = "Show Hint";
            $scope.hint = function() {
                $scope.hint1 = !$scope.hint1;
                if (!$scope.hint1) {
                    $scope.showHideStatus = "Show Hint";
                }
                else {
                    $scope.showHideStatus = "Hide Hint";
                }
            };

            $scope.result = "";
            $scope.checkAnswer = function () {
               if (document.getElementById('answer').value === $scope.exercises.answer) {
                   $scope.result = 'Thats correct!';
               }
               else {
                   $scope.result = 'Thats not right. Try Again!';
               }
            };

            $scope.exercises = [
                {name: 'problem1',
                question: 'What is 20 + 20?',
                hint1: "It's 40",
                answer: '40'},

                {name: 'problem2',
                question: 'How sassy is Cam?',
                hint1: 'Emily is gone sooooo',
                answer: 'His sass level is over 9000'},

                {name: 'problem3',
                question: 'The square of the orbital period of a planet is directly proportional to the cube of the semi-major axis of its orbit describes which of Keplers Laws? (enter an integer)',
                hint1: "It's Keplers 3rd Law",
                answer: '3'},
        ];
    };

     

    