angular.module('firstApplication').controller('practiceController', practiceController);

    function practiceController($scope, $log) {
            
            $scope.hintBool = false;        
            $scope.hint = function(exerObj) {
                if (exerObj.hintBool) {
                    document.getElementById(exerObj.id).innerHTML = '<p class="hint1">' + exerObj.hint1 + '</p>';
                    exerObj.hideBool = false;
                    $log.info(exerObj.hideBool);
                }
            };

            
            // var answerIsRight = function(){
            //     if () {
            //         return true;
            //     }
            //     return false;
            // }

            // $scope.countBool = false;
            // $scope.numberOfSubmits = function(exerObj) {
            //     if (answerIsRight) {

            //     }
            //     if (answerIsWrong) {
            //         exerObj.count++;
            //         exerObj.attemptsLeft = 3 - exerObj.count;
            //         if ($scope.count >= 1) {
            //             exerObj.countBool = true;
            //             exerObj.attemptStatus = "You have tried " + exerObj.count 
            //             + " times. You have " + exerObj.attemptsLeft + " attempts left."; 
            //         }
            //         if ($scope.count > 3) {
            //             $scope.countBool = true;
            //             $scope.attemptStatus = "You are out of attempts. Move to the next exercise.";
            //             // add something that disables the submit button
            //         }
            //     }
                
            // };

           

            $scope.checkAnswer = function (exerObj) {
                if (document.getElementById(exerObj.answerId).value === exerObj.answer) {
                    exerObj.result = "That's correct!";
                    exerObj.style = {
                        "background-color" : "lightgreen",
                        "border" : "2px solid green"
                    }
                   
                }
                else if (document.getElementById(exerObj.answerId).value) {
                    exerObj.result = "That's not right. Try Again!";
                    exerObj.style = {
                        "background-color" : "pink",
                        "border" : "2px solid red"
                    }   
               }
               return  exerObj.style;
            };

            // Make your questions free response questions here!
            $scope.exercises = [
                {answerId: 'problemOne',
                id: "problem1",
                question: 'What is 20 + 20?',
                hint1: "It's 40",
                hintBool: true,
                hideBool: true,
                countBool: true,
                attemptStatus: '',
                count: 0,
                answer: '40',
                result: "",
                style: {}},

                {problem: 2,
                answerId: "problemTwo",
                id: "problem2",
                question: 'The square of the orbital period of a planet is directly proportional to the cube of the semi-major axis of its orbit describes which of Keplers Laws? (enter an integer)',
                hint1: "It's Keplers 3rd Law",
                hintBool: true,
                hideBool: true,
                countBool: true,
                count: 0,
                attemptStatus: '',
                answer: '3',
                result: "",
                style: {}},

                {problem: 3,
                answerId: "problemThree",
                id: "problem3",
                question: 'How sassy is Cam?',
                hint1: 'Emily is gone sooooo',
                hintBool: true,
                hideBool: true,
                countBool: true,
                count: 0,
                attemptStatus: '',
                answer: 'His sass level is over 9000',
                result: "",
                style: {}},

                {problem: 4,
                answerId: "problemFour",
                id: "problem4",
                question: 'True or False: Bridget is doing work.',
                hint1: "She's not",
                hintBool: true,
                hideBool: true,
                countBool: true,
                count: 0,
                attemptStatus: '',
                answer: 'False',
                result: "",
                style: {}},

                {problem: 5,
                answerId: "problemFive",
                id: "problem5",
                question: 'Who am I? Who am I?',
                hint1: '24601',
                hintBool: true,
                hideBool: true,
                countBool: true,
                count: 0,
                attemptStatus: '',
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



     

    