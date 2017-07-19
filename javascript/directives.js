app.directive('bindDeeThreeStuff', function($window){
  var d3 = $window.d3;

  return function(scope, elem, attrs) {
    var d3Elem = d3.select(elem[0]);

    scope.$watch(attrs.bindDeeThreeStuff, function() {
      //d3 content starts here

      
      
      var ellipseData = [ {} ]

      var dataset = [ 5, 10, 15, 20, 25, 30, 35 ];
       
      d3.select("#test").selectAll("p")
        .data(dataset)
        .enter()
        .append("p")
        .text(function(d) { return 'There are ' + 100*d + ' turles sleeping.'})
        .style("color", function(d) {
          if (d < 25) {
            return "red";
          }
          else {
            return "lime";
          }
        })
        .style("font-size", function(d) {
          return 1.5*d + "pt";
        });



        // d3.select('#slider3')
        //   .call(d3.slider().axis(true)
        //   .value( [ 10, 25 ] )
        //   .on("slide", function(evt, value) {
        //     d3.select('#slider3textmin')
        //       .text(value[ 0 ]);
        //     d3.select('#slider3textmax')
        //       .text(value[ 1 ]);
        // }));

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
          d3.select("#nRadius-value").text(Math.sqrt(nRadius)/10);
          d3.select("#nRadius").property("value", nRadius);

          // update the rircle radius
          holder.selectAll("ellipse") 
            .attr("rx", nRadius);
        }

      //d3 content ends here
    });
  };
});