app.directive('bindDeeThreeStuff', function($window){
  var d3 = $window.d3;

  return function(scope, elem, attrs) {
    var d3Elem = d3.select(elem[0]);

    scope.$watch(attrs.bindDeeThreeStuff, function(val) {
      d3Elem.select("#test")
        .append("p")
        .text("This Works!")
        .style('color', 'white');
    });
  };
});