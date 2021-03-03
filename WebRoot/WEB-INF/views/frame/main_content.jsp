<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<script type="text/javascript">
$(function(){ $(document).ready(function(){
	$.post(AP+"/maincat.shtml",
		{ MainCategory: $("div#apps_topselling_paid").attr("id") }, 
		function(returnedData,status){
			$("div#apps_topselling_paid").html(returnedData);
		    $.post(AP+"/maincat.shtml",
		 		{ MainCategory: $("div#apps_topselling_free").attr("id") }, 
		 		function(returnedData,status){
		 			$("div#apps_topselling_free").html(returnedData);
		 			$.post(AP+"/maincat.shtml",
		 				{ MainCategory: $("div#apps_topgrossing").attr("id") }, 
		 				function(returnedData,status){
							$("div#apps_topgrossing").html(returnedData);
							$.post(AP+"/maincat.shtml",
								{MainCategory: $("div#apps_topselling_new_paid").attr("id")}, 
								function(returnedData,status){
									$("div#apps_topselling_new_paid").html(returnedData);
									$.post(AP+"/maincat.shtml",
		 			 			 		{ MainCategory: $("div#apps_topselling_new_free").attr("id")}, 
		 			 			 		function(returnedData,status){
		 			 			 			$("div#apps_topselling_new_free").html(returnedData);
	 			 			 				$.post(AP+"/maincat.shtml",
			 			 			 			{ MainCategory: $("div#apps_movers_shakers").attr("id") }, 
			 			 			 			function(returnedData,status){
			 			 			 				$("div#apps_movers_shakers").html(returnedData);
			 			 			 			 });
										});
		 			 			});
						});
		 		});
		});
	});
});
</script>
<h1 class="cluster-heading" style="width: 75.6%;" >
	<a class="title-link id-track-click" href=" ">
	热门付费应用</a> 
	<a class="see-more play-button small id-track-click apps id-responsive-see-more"
		href=" ">查看更多</a>
</h1>
<div class="card-list two-cards" id="apps_topselling_paid" style="height: 255px"></div>
<h1 class="cluster-heading" style="width: 75.6%;" >
	<a class="title-link id-track-click" href=" ">
	热门免费应用</a> 
	<a class="see-more play-button small id-track-click apps id-responsive-see-more"
		href=" ">查看更多</a>
</h1>
<div class="card-list two-cards" id="apps_topselling_free" style="height: 255px"></div>
<h1 class="cluster-heading" style="width: 75.6%;" >
	<a class="title-link id-track-click" href=" ">
	热门畅销应用</a> 
	<a class="see-more play-button small id-track-click apps id-responsive-see-more"
		href=" ">查看更多</a>
</h1>
<div class="card-list two-cards" id="apps_topgrossing" style="height: 255px"></div>
<h1 class="cluster-heading" style="width: 75.6%;" >
	<a class="title-link id-track-click" href=" ">
	最新热门付费应用</a> 
	<a class="see-more play-button small id-track-click apps id-responsive-see-more"
		href=" ">查看更多</a>
</h1>
<div class="card-list two-cards" id="apps_topselling_new_paid" style="height: 255px"></div>
<h1 class="cluster-heading" style="width: 75.6%;" >
	<a class="title-link id-track-click" href=" ">
	最新热门免费应用</a> 
	<a class="see-more play-button small id-track-click apps id-responsive-see-more"
		href=" ">查看更多</a>
</h1>
<div class="card-list two-cards" id="apps_topselling_new_free" style="height: 255px"></div>
<h1 class="cluster-heading" style="width: 75.6%;" >
	<a class="title-link id-track-click" href=" ">
	有影响力的应用</a> 
	<a class="see-more play-button small id-track-click apps id-responsive-see-more"
		href=" ">查看更多</a>
</h1>
<div class="card-list two-cards" id="apps_movers_shakers" style="height: 255px"></div>			                  					