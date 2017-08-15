angular.module('firstApplication').controller('practiceController', practiceController);
function practiceController($scope, $log) {
        $scope.numCorrect = 0;
        $scope.showScore = false;
        $scope.allAnswered = false;

        $scope.hint = function(exerObj) {
            if (exerObj.hintBool) {
                document.getElementById(exerObj.id).innerHTML = '<p class="hint1">' + exerObj.hint1 + '</p>';
                exerObj.hintBool = !exerObj.hintBool;
            }
        };

        $scope.styleExercise = function (exerObj) {
            if (answerIsRight(exerObj)) {
                exerObj.style = {
                    "background-color" : "lightgreen",
                    "border" : "2px solid green"
                }
            }
            else if (document.getElementById(exerObj.answerId).value) {
                exerObj.style = {
                    "background-color" : "pink",
                    "border" : "2px solid red"
                }
            }
            return  exerObj.style;
        }

        $scope.selectPreviousProblem = function(exerObj) {
            exerObj.selected = false; // de-select current question
            if (exerObj.problem - 1 > 0) {
                // index of the exerObj in the quiz array
                var index = exerObj.problem - 1; 
                // select previous question
                $scope.exercises[index - 1].selected = true;
            }
            checkAllAnswered();
        }

        $scope.selectNextProblem = function(exerObj) {
            exerObj.selected = false; // de-select current question
            if (exerObj.problem + 1 <= $scope.exercises.length) {
                // index of the exerObj in the quiz array
                var index = exerObj.problem - 1;
                // select next question
                $scope.exercises[index + 1].selected = true;
            }
            checkAllAnswered();
        }

        var answerIsRight = function(exerObj) {
            return document.getElementById(exerObj.answerId).value === exerObj.answer;
        }

        $scope.test = function() {
            return true;
        }
        
        $scope.checkAnswer = function(exerObj) {
                // check if the answer is correct
                if (answerIsRight(exerObj)) {
                    exerObj.attemptStatus = "";
                    exerObj.disable = true;
                }
                // check if there is a value in the input box
                else if (document.getElementById(exerObj.answerId).value) {
                    exerObj.count++;
                    var attemptsLeft = 3 - exerObj.count;
                    if (exerObj.count > 2) {
                        exerObj.attemptStatus = "You are out of attempts. Move to the next exercise.";
                        exerObj.disable = true;
                    }
                    else if (exerObj.count >= 1) {
                        exerObj.attemptStatus = "That is incorrect. You have tried " + exerObj.count +
                                                " times. You have " + attemptsLeft + " attempts left."; 
                    }
                }
                checkAllAnswered();
        }

        // check if all questions have been answered
        var checkAllAnswered = function() {
            var allAnswered = true;
            for (i in $scope.exercises) {
                if (!document.getElementById($scope.exercises[i].answerId).value) {
                    allAnswered = false;
                }
            }
            $scope.allAnswered = allAnswered;
        }

        $scope.submitQuiz = function() {
            var correctCount = 0;
            for (i in $scope.exercises) {
                if (answerIsRight($scope.exercises[i])) {
                    correctCount++;
                }
            }
            $scope.numCorrect = correctCount;
            $scope.showScore = true;
        }

        // Make your questions free response questions here!
        $scope.exercises = [
            {
                problem: 1,
                answerId: 'problemOne',
                id: "problem1",
                question: 'What is 20 + 20?',
                hint1: "It's 40",
                hintBool: true,
                count: 0,
                attemptStatus: "",
                answer: '40',
                result: "",
                style: {},
                disable: false,
                selected: true
            },

            {
                problem: 2,
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
                disable: false,
                selected: false
            },

            {
                problem: 3,
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
                disable: false,
                selected: false
            },

            {
                problem: 4,
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
                disable: false,
                selected: false
            },

            {
                problem: 5,
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
                disable: false,
                selected: false
            },
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



     

    