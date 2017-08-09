angular.module('firstApplication').controller('practiceController', practiceController);
function practiceController($scope, $log) {
        $scope.hint = function(exerObj) {
            if (exerObj.hintBool) {
                document.getElementById(exerObj.id).innerHTML = '<p class="hint1">' + exerObj.hint1 + '</p>';
                exerObj.hintBool = !exerObj.hintBool;
            }
        };

        $scope.checkAnswer = function (exerObj) {
            if (answerIsRight(exerObj)) {
                exerObj.result = "That is correct!";
                exerObj.style = {
                    "background-color" : "lightgreen",
                    "border" : "2px solid green"
                }
                
            }
            else if (document.getElementById(exerObj.answerId).value) {
                exerObj.result = "That is not correct";
                exerObj.style = {
                    "background-color" : "pink",
                    "border" : "2px solid red"
                }   
            }
            return  exerObj.style;
        };

        var answerIsRight = function(exerObj) {
            if (document.getElementById(exerObj.answerId).value === exerObj.answer) {
                return true;
            }
            return false;
        }

        $scope.test = function() {
            return true;
        }
        
        $scope.numberOfAnswerSubmits = function(exerObj) {
                // check if the answer is correct
                if (answerIsRight(exerObj)) {
                    exerObj.attemptStatus = "";
                }
                // check if there is a value in the input box
                else if (document.getElementById(exerObj.answerId).value) {
                    exerObj.count++;
                    var attemptsLeft = 3 - exerObj.count;
                    if (exerObj.count > 3) {
                        exerObj.attemptStatus = "You are out of attempts. Move to the next exercise.";
                        exerObj.disable = true;
                    }
                    else if (exerObj.count >= 1) {
                        exerObj.attemptStatus = "You have tried " + exerObj.count +
                                                " times. You have " + attemptsLeft + " attempts left."; 
                    }
                }
        }

        // Make your questions free response questions here!
        $scope.exercises = [
            {answerId: 'problemOne',
            id: "problem1",
            question: 'What is 20 + 20?',
            hint1: "It's 40",
            hintBool: true,
            count: 0,
            attemptStatus: "",
            answer: '40',
            result: "",
            style: {},
            disable: false},

            {problem: 2,
            answerId: "problemTwo",
            id: "problem2",
            question: 'The square of the orbital period of a planet is directly proportional to the cube of the semi-major axis of its orbit describes which of Keplers Laws? (enter an integer)',
            hint1: "It's Keplers 3rd Law",
            hintBool: true,
            count: 0,
            attemptStatus: "",
            answer: '3',
            result: "",
            style: {},
            disable: false},

            {problem: 3,
            answerId: "problemThree",
            id: "problem3",
            question: 'How sassy is Cam?',
            hint1: 'Emily is gone sooooo',
            hintBool: true,
            count: 0,
            attemptStatus: "",
            answer: 'His sass level is over 9000',
            result: "",
            style: {},
            disable: false},

            {problem: 4,
            answerId: "problemFour",
            id: "problem4",
            question: 'True or False: Bridget is doing work.',
            hint1: "She's not",
            hintBool: true,
            count: 0,
            attemptStatus: "",
            answer: 'False',
            result: "",
            style: {},
            disable: false},

            {problem: 5,
            answerId: "problemFive",
            id: "problem5",
            question: 'Who am I? Who am I?',
            hint1: '24601',
            hintBool: true,
            count: 0,
            attemptStatus: "",
            answer: 'Jean Valjean',
            result: "",
            style: {},
            disable: false},
    ];

    $scope.multipleChoiceQuestions = [
            [{value: 1,label: "Test"},{value: 2,label: "Test 2"},
            {value: 3,label: "Test 3"},{value: 4,label: "Test 4"}],


            [{value: 1,label: "Test"},{value: 2,label: "Test 2"},
            {value: 3,label: "Test 3"},{value: 4,label: "Test 4"}],


            [{value: 1,label: "Test"},{value: 2,label: "Test 2"},
            {value: 3,label: "Test 3"},{value: 4,label: "Test 4"}],


            [{value: 1,label: "Test"},{value: 2,label: "Test 2"},
            {value: 3,label: "Test 3"},{value: 4,label: "Test 4"}],  
        ];
};



     

    