angular.module('firstApplication').controller('practiceController', practiceController);

    function practiceController($scope, $log) {
            
            $scope.hintBool = false;        
            $scope.hint = function(newObj) {
                if (newObj.hintBool) {
                    document.getElementById(newObj.id).innerHTML = '<p class="hint1">' + newObj.hint1 + '</p>';
                    newObj.hideBool = false;
                    $log.info(newObj.hideBool);
                }
            };

            $scope.count = 0;
            $scope.countBool = false;
            $scope.attemptStatus = "";
           
            $scope.numberOfSubmits = function(newObj) {
                if (answerIsRight) {

                }
                if (answerIsWrong) {
                    $scope.count++;
                    newObj.attemptsLeft = 3 - $scope.count;
                    if ($scope.count >= 1) {
                        $scope.countBool = true;
                        $scope.attemptStatus = "You have tried " + newObj.count 
                        + " times. You have " + $scope.attemptsLeft + " attempts left."; 
                    }
                    if ($scope.count > 3) {
                        $scope.countBool = true;
                        $scope.attemptStatus = "You are out of attempts. Move to the next exercise.";
                    }
                }
                
            };

           

            $scope.checkAnswer = function (problemNum) {
                if (document.getElementById($scope.exercises[problemNum - 1].problem).value === $scope.exercises[problemNum - 1].answer) {
                    $scope.exercises[problemNum - 1].result = "That's correct!";
                    $scope.exercises[problemNum - 1].style = {
                        "background-color" : "lightgreen",
                        "border" : "2px solid green"
                    }
                   
                }
                else if ((document.getElementById($scope.exercises[problemNum - 1].problem).value)) {
                    $scope.exercises[problemNum - 1].result = "That's not right. Try Again!";
                    $scope.exercises[problemNum - 1].style = {
                        "background-color" : "pink",
                        "border" : "2px solid red"
                    }   
               }
               return  $scope.exercises[problemNum - 1].style;
            };

            // Make your questions free response questions here!
            $scope.exercises = [
                {problem: 1,
                id: "problem1",
                question: 'What is 20 + 20?',
                hint1: "It's 40",
                hintBool: true,
                hideBool: true,
                answer: '40',
                result: "",
                style: {}},

                {problem: 2,
                id: "problem2",
                question: 'The square of the orbital period of a planet is directly proportional to the cube of the semi-major axis of its orbit describes which of Keplers Laws? (enter an integer)',
                hint1: "It's Keplers 3rd Law",
                hintBool: true,
                hideBool: true,
                answer: '3',
                result: "",
                style: {}},

                {problem: 3,
                id: "problem3",
                question: 'How sassy is Cam?',
                hint1: 'Emily is gone sooooo',
                hintBool: true,
                hideBool: true,
                answer: 'His sass level is over 9000',
                result: "",
                style: {}},

                {problem: 4,
                id: "problem4",
                question: 'True or False: Bridget is doing work.',
                hint1: "She's not",
                hintBool: true,
                hideBool: true,
                answer: 'False',
                result: "",
                style: {}},

                {problem: 5,
                id: "problem5",
                question: 'Who am I? Who am I?',
                hint1: '24601',
                hintBool: true,
                hideBool: true,
                answer: 'Jean Valjean',
                result: "",
                style: {}},
        ];



        $scope.multipleChoiceQuestions = [
              [{value: 1,label: "Test"},{value: 2,label: "Test 2"},{value: 3,label: "Test 3"},{value: 4,label: "Test 4"}],

              [{value: 1,label: "Test"},{value: 2,label: "Test 2"},{value: 3,label: "Test 3"},{value: 4,label: "Test 4"}],

              [{value: 1,label: "Test"},{value: 2,label: "Test 2"},{value: 3,label: "Test 3"},{value: 4,label: "Test 4"}],

              [{value: 1,label: "Test"},{value: 2,label: "Test 2"},{value: 3,label: "Test 3"},{value: 4,label: "Test 4"}],  
            ];
    };



     

    