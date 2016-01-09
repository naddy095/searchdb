$(document).ready(function () {
	
	$("#playground_search_box").bind('railsAutocomplete.select', function(event, data){
  	
  	
  	showMarker(data.item)
	});

});

// $(document).ready(function () {
  
//   $("#admin_box").on("click", function(event, data){
    
    
//     showMarker(data.item)
//   });

// });
