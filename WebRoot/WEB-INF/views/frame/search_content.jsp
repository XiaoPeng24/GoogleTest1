<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<script type="text/javascript">
$(function(){$(document).ready(function(){
	$("div.body-content-loading-overlay").first().css("display", "block");
	$.get(AP+"/search.shtml",
		{q : $("#gbqfq").val(), ref : 0},
		function(returnedData, status) {
			$("div.cluster.id-track-impression.tight.square-cover.apps")
				.first().html(returnedData);
			$("div.body-content-loading-overlay").first().css("display","none");
		});
	}); 
});
</script>