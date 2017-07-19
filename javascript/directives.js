app.directive('bindDeeThreeStuff', function($window){
  var d3 = $window.d3;

  return function(scope, elem, attrs) {
    var d3Elem = d3.select(elem[0]);

    scope.$watch(attrs.bindDeeThreeStuff, function() {
      //d3 content starts here

      
        var svgContainer = d3.select("#test").append("svg")
                                        .attr("width", 1000)
                                        .attr("height",500);


        var ellipse = svgContainer.append("path")
                                  .attr("d", "M 100,225a 400,200 0 1,0 800,0 a 400,200 0 1,0 -800,0")
                                  .attr("stroke", "white")
                                  .attr("stroke-width", 3)
                                  .attr("fill", "none");

        svgContainer.append('circle').attr('r', 20)
                                .attr('cx', 100)
                                .attr('cy', 100)
                                .attr('fill', 'silver')
                                .attr('stroke', "lime")
                                .attr('stroke-width', 1)



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
          d3.select("#nRadius-value").text(Math.sqrt(nRadius)/rx);
          d3.select("#nRadius").property("value", nRadius);

          // update the circle radius
          holder.selectAll("ellipse") 
            .attr("rx", nRadius);
        }

      //d3 content ends here
    });
  };
});