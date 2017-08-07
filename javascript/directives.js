app.directive('bindDeeThreeStuff', function($window){
  var d3 = $window.d3;

  return function(scope, elem, attrs) {
    var d3Elem = d3.select(elem[0]);

    scope.$watch(attrs.bindDeeThreeStuff, function() {
      //d3 content starts here

        var points = [
          [50, 250],
          [450, 450],
          [850, 250],
          [450, 50]
        ];

        var svg = d3.select("#test").append("svg")
            .attr("width", 900)
            .attr("height", 500);

        var path = svg.append("path")
            .data([points])
            .attr("d", d3.svg.line()
            .tension(.5) // Catmull–Rom
            .interpolate("cardinal-closed"))
            .style('stroke', 'white')
            .style('stroke-width', 3)
            .style('fill', 'none');

        svg.selectAll(".point")
            .data(points)
            .enter().append("circle")
            .attr("r", .5)
            .attr("transform", function(d) { return "translate(" + d + ")"; })
            .style('fill', 'white');

        var circle = svg.append("circle")
            .attr("r", 13)
            .attr("transform", "translate(" + points[0] + ")")
            .style('fill','orangered');

        transition();

        function transition() {
          circle.transition()
                .duration(5000)
                .ease('linear')
                .attrTween("transform", translateAlong(path.node()))
                .each("end", transition);
        }

        // Returns an attrTween for translating along the specified path element.
        function translateAlong(path) {
          var l = path.getTotalLength();
          return function(d, i, a) {
            return function(t) {
              var p = path.getPointAtLength(t * l);
              return "translate(" + p.x + "," + p.y + ")";
            };
          };
        }

      //d3 content ends here
    });
  };
});