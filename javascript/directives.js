app.directive('bindDeeThreeStuff', function($window){
  var d3 = $window.d3;

  return function(scope, elem, attrs) {
    var d3Elem = d3.select(elem[0]);

    scope.$watch(attrs.bindDeeThreeStuff, function() {
      //d3 content starts here
        
        var width = 800;
        var height = 300;
        var rx = 300;
        var ry = 100;

        var holder = d3.select("#slider")
              .append("svg")
              .attr("width", width)    
              .attr("height", height)
              .style("padding-left", 20); 

        // draw the circle
        holder.append("ellipse")
          .attr("cx", 300)
          .attr("cy", 150) 
          .style("fill", "none")   
          .style("stroke", "black")
          .attr("rx", rx)
          .attr("ry", ry)

        // when the input range changes update the circle 
        d3.select("#nRadius").on("input", function() {
          update(+this.value);
        });

        // Initial starting radius of the circle 
        update(200);

        // update the elements
        function update(nRadius) {

          // adjust the text on the range slider
          d3.select("#nRadius-value").text((Math.sqrt(nRadius)* 10)/rx);
          d3.select("#nRadius").property("value", nRadius);

          // update the circle radius
          holder.selectAll("ellipse") 
            .attr("rx", nRadius);
        }



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
            .interpolate("cardinal-closed"));

        svg.selectAll(".point")
            .data(points)
            .enter().append("circle")
            .attr("r", 4)
            .attr("transform", function(d) { return "translate(" + d + ")"; });

        var circle = svg.append("circle")
            .attr("r", 13)
            .attr("transform", "translate(" + points[0] + ")");

        transition();

        function transition() {
          circle.transition()
                .duration(5000)
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