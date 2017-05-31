angular
           .module('firstApplication', ['ngMaterial'])
           .controller('autoCompleteController', autoCompleteController);

        function autoCompleteController ($scope, $timeout, $q, $log) {
           var self = this;
           self.simulateQuery = false;
           self.isDisabled    = false;
           // list of states to be displayed
           self.topics        = loadTopics();
           self.querySearch   = querySearch;
           self.selectedItemChange = selectedItemChange;
           self.searchTextChange   = searchTextChange;
           self.newState = newState;
           function newState(state) {
              alert("This functionality is yet to be implemented!");
           }    
           function querySearch (query) {
              var results = query ? self.topics.filter( createFilterFor(query) ) : self.topics, deferred;
              if (self.simulateQuery) {
                 deferred = $q.defer();
                 $timeout(function () { 
                       deferred.resolve( results ); 
                    }, 
		            Math.random() * 1000, false);
                 return deferred.promise;
              } else {
                 return results;
              }
           }
           function searchTextChange(text) {
              $log.info('Text changed to ' + text);
           }
           function selectedItemChange(item) {
              $log.info('Item changed to ' + JSON.stringify(item));
              if (item) {
                var topic = item['display'];
                var result = topic.link($scope.topics[topic]);
                window.open($scope.topics[topic]);
              }
           }

           function loadTopics() {
              var allTopics = "Rocket, Satellite, Kepler";
              $scope.topics = {"Rocket" : "https://en.wikipedia.org/wiki/Rocket",
                               "Satellite" : "https://en.wikipedia.org/wiki/Satellite", 
                               "Kepler" : "https://en.wikipedia.org/wiki/Kepler%27s_laws_of_planetary_motion"};
              return allTopics.split(/, +/g).map( function (topic) {
                 return {
                    value: topic.toLowerCase(),
                    display: topic
                 };
              });
           }
           //filter function for search query
           function createFilterFor(query) {
              var lowercaseQuery = angular.lowercase(query);
              return function filterFn(state) {
                 return (state.value.indexOf(lowercaseQuery) === 0);
              };
           }
        }  
