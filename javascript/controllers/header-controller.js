angular.module('firstApplication').controller('headerController', headerController);

        function headerController ($log) {
            var self = this;
            self.tabName = 'Home'; // set default tabName to "Home"
            //alter tab name in order to switch to requested tab
           self.changeTab = function(tabName) {
               $log.info("tab name changed to: " + tabName);
               return self.tabName = tabName;
           }
        };