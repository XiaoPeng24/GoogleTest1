<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<script type="text/javascript">
$(function(){
	   $(document).ready(function(){
		   $("div.body-content-loading-overlay").first().css("display", "block");
		   $.get(AP+"/detail.shtml",
				 {id : $("#packageName").attr("data"), ref : 0},
				 function(returnedData, status){
					$("div.cluster.id-track-impression.tight.square-cover.apps")
						.first().html(returnedData);
					$("div.body-content-loading-overlay").first().css("display","none");
					$.post(AP+"/recommend.shtml",
						      {
						        id : $("#packageName").attr("data")
						      }, function(returnedData, status){
						    	  $("div.cards").first().html(returnedData);
						    	  
						      }	   
					   );
					if($("div.details-actions").first().has("see-more.play-button.small.id-track-click.apps.id-responsive-see-more").length>0){
						  alert("has a"); 
			    		  return;
					  }else{
						$.post(AP+"/download.shtml",
						    {
							  id : $("#packageName").attr("data")
						    }, function(returnedData, status){
						       $("div.details-actions").first().html(returnedData);
						       $("div.details-actions a.see-more.play-button.small.id-track-click.apps.id-responsive-see-more").first().click(function(){
						    	   $("div.download_url").first().css("display", "block");
						        });
						   	});
					     }
					$("div.details-actions a.see-more.play-button.small.id-track-click.apps.id-responsive-see-more").first().click(function(){
						$("div.download_url").first().css("display", "block");
				    });
				});
	      });  
  });
</script>

