angular.module('firstApplication').controller('autoCompleteController', autoCompleteController);

        // auto complete controlelr for search bar functionality
        function autoCompleteController ($scope, $timeout, $q, $log) {
           var self = this;
           self.simulateQuery = false;
           self.isDisabled    = false;
           // list of topics to be displayed
           self.topics        = loadTopics();
           self.querySearch   = querySearch;
           self.selectedItemChange = selectedItemChange;
           self.searchTextChange   = searchTextChange;
           self.topicLinkObj = {"Rocket" : "https://en.wikipedia.org/wiki/Rocket",
                            "Satellite" : "https://en.wikipedia.org/wiki/Satellite", 
                            "Kepler" : "https://en.wikipedia.org/wiki/Kepler%27s_laws_of_planetary_motion"};
        //    addTopicsToTab();

           // search for topic searched by user
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
           // when a topic is chosen, open its informational page
           function selectedItemChange(item) {
              $log.info('Item changed to ' + JSON.stringify(item));
              if (item) {
                var topic = item['display'];
                window.open(self.topicLinkObj[topic]);
              }
           }
           // load space topics
           function loadTopics() {
              var allTopics = "Rocket, Satellite, Kepler";
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
              return function filterFn(topic) {
                 return (topic.value.indexOf(lowercaseQuery) === 0);
              };
           }
           function addTopicsToTab()        {
               $log.info("addTopicsToTab was called");
               for (var key in self.topicLinkObj) {                 
                   var topic_link = key.link(self.topicLinkObj[key]);
                   document.getElementById("listOfTopics").innerHTML +="<li>" + topic_link + "</li>";
                }
            }
        };