
$(function(){
	   $("button#gbqfb").first().click(function(){
		   $("form#gbqf").first().submit();
   	   });
	   $(document).ready(function(){
		   $.post("getRecommendApk.shtml",
				      {
				         packageNameOrUrl: $.trim($("div.hidden-info p").first().text())
				      }, function(returnedData, status){
				    	  $("div.cards").first().html(returnedData);
				    	  $("a.card-click-target").click(function(){
				     		  $("div.body-content-loading-overlay").first().css("display","block");
				     		   var packageName = $(this).attr("title");
				     		   window.location.href="http://localhost:8080/GoogleTest1/showApk.shtml?packageName="+packageName;
				     	   });
				      }	   
			   );
		   if($("div.details-actions").first().has("a").length>0){
			   return;
		   }else{
			   $.post("downloadApk.shtml",
			    		{
				           packageNameOrUrl: $.trim($("div.hidden-info p").first().text())
			    		}, function(returnedData, status){
			    			$("div.details-actions").first().html(returnedData);
			    			$("div.details-actions a.see-more.play-button.small.id-track-click.apps.id-responsive-see-more").first().click(function(){
			    			    $.post("getDownloadPath.shtml",
			    			    		{
			    			    	        packageNameOrUrl: $.trim($("div.hidden-info p").first().text())
			    			    		}, function(returnedData,status){ 
			    			    			$("div.download_url").first().html(returnedData);
			    			    	  });
			    		    });
			    		});
		   }
	   });
	   
	   $("div.details-actions a.see-more.play-button.small.id-track-click.apps.id-responsive-see-more").first().click(function(){
		    $.post("getDownloadPath.shtml",
		    		{
		    	        packageNameOrUrl: $.trim($("div.hidden-info p").first().text())
		    		}, function(returnedData,status){ 
		    			$("div.download_url").first().html(returnedData);
		    	  });
	    });
  });
     