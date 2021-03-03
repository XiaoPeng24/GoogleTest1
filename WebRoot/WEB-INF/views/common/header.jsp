<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${ctx}/css/styles.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	var AP = "${ctx}";
</script>
<%-- <script type="text/javascript" src="${ctx}/js/detail.js"></script> --%>
<script type="text/javascript" src="${ctx}/js/jquery-1.7.2.js"></script>
<%-- <script type="text/javascript" src="${ctx}/js/search.js"></script> --%>
<link rel="stylesheet" type="text/css" href="${ctx}/css/google.css">
<script type="text/javascript">
$(function() {
	$("form#gbqf.gb_gc").submit(
		function() {
			var content = $("input#gbqfq.gbqfif").val();
			if ($.trim(content) == "") {
				alert("文本框的值不能为空！");
				return false;
			} else {
				$("div.body-content-loading-overlay").first().css(
						"display", "block");
				return true;
			}
		});

	/*	$("a.card-click-target").click(
		function() {
			$("div.body-content-loading-overlay").first().css("display", "block");
			var packageName = $(this).attr("title");
			window.location.href = "http://localhost:8080/google/showApk.shtml?packageName="+ packageName;
		});
    */

	$("div.action-bar-item").first().click(function() {
		$("div#action-dropdown-children-类别").toggle();
	});
	
	/* $("a.child-submenu-link").click(
		function() {
			$("div.body-content-loading-overlay").first().css("display", "block");
			$.get(AP+"/category.shtml",
				{cat : $(this).attr("data"), ref : 0},
				function(returnedData, status) {
					$("div.cluster.id-track-impression.tight.square-cover.apps")
						.first().html(returnedData);
					$("div#action-dropdown-children-类别").css("display", "none");
					$("div.body-content-loading-overlay").first().css("display","none");
					$("a.card-click-target").click(
						function() {
							$("div.body-content-loading-overlay")
								.first().css("display","block");
							var packageName = $(this).attr("title");
							window.location.href = "http://localhost:8080/GoogleTest1/showApk.shtml?packageName="+ packageName;
						});
				});
		}); */

	$("li.nav-list-item.id-track-click.movies.visible-item").first().hover(
		function() {
			$(this).find("span.hover-target").first().css("background-color", "#ce5043");
		},
		function() {
			$(this).find("span.hover-target").first()
				.css("background-color", "rgba(245, 245, 245, 0.952941)");
		});
	
	$("li.nav-list-item.id-track-click.music.visible-item").first().hover(
		function() {
			$(this).find("span.hover-target").first().css(
					"background-color", "#fb8521");
		},
		function() {
			$(this).find("span.hover-target").first()
					.css("background-color","rgba(245, 245, 245, 0.952941)");
		});
	$("li.nav-list-item.id-track-click.books.visible-item").first().hover(
		function() {
			$(this).find("span.hover-target").first().css(
					"background-color", "#1aa1e1");
		},
		function() {
			$(this).find("span.hover-target").first()
					.css("background-color","rgba(245, 245, 245, 0.952941)");
		});
	$("li.nav-list-item.id-track-click.magazines.visible-item").first()
		.hover(
			function() {
				$(this).find("span.hover-target").first().css(
						"background-color", "#3f5ca9");
			},
			function() {
				$(this).find("span.hover-target").first().css(
						"background-color", "rgba(245, 245, 245, 0.952941)");
			});
	$("li.nav-list-item.id-track-click.devices.visible-item").first()
		.hover(
			function() {
				$(this).find("span.hover-target").first().css(
						"background-color", "#658092");
			},
			function() {
				$(this).find("span.hover-target").first().css(
						"background-color", "rgba(245, 245, 245, 0.952941)");
			});
});
</script>
<style type="text/css">
@
-webkit-keyframes gb__a { 0%{
	opacity: 0
}

50%{
opacity






:






1
}
}
@
keyframes gb__a { 0%{
	opacity: 0
}

50%{
opacity






:






1
}
}
.gb_c {
	display: none !important
}

.gb_ea {
	display: inline-block;
	padding: 0 0 0 15px;
	vertical-align: middle
}

.gb_ea:first-child,#gbsfw:first-child+.gb_ea {
	padding-left: 0
}

.gb_fa {
	position: relative
}

.gb_ga {
	display: inline-block;
	outline: none;
	vertical-align: middle;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	height: 30px;
	width: 30px
}

#gb#gb a.gb_ga {
	color: #404040;
	cursor: default;
	text-decoration: none
}

#gb#gb a.gb_ga:hover,#gb#gb a.gb_ga:focus {
	color: #000
}

.gb_u {
	border-color: transparent;
	border-bottom-color: #fff;
	border-style: dashed dashed solid;
	border-width: 0 8.5px 8.5px;
	display: none;
	position: absolute;
	left: 6.5px;
	top: 37px;
	z-index: 1;
	height: 0;
	width: 0;
	-webkit-animation: gb__a .2s;
	animation: gb__a .2s
}

.gb_v {
	border-color: transparent;
	border-style: dashed dashed solid;
	border-width: 0 8.5px 8.5px;
	display: none;
	position: absolute;
	left: 6.5px;
	z-index: 1;
	height: 0;
	width: 0;
	-webkit-animation: gb__a .2s;
	animation: gb__a .2s;
	border-bottom-color: #ccc;
	border-bottom-color: rgba(0, 0, 0, .2);
	top: 36px
}

x:-o-prefocus,div.gb_v {
	border-bottom-color: #ccc
}

.gb_ba {
	background: #fff;
	border: 1px solid #ccc;
	border-color: rgba(0, 0, 0, .2);
	-webkit-box-shadow: 0 2px 10px rgba(0, 0, 0, .2);
	box-shadow: 0 2px 10px rgba(0, 0, 0, .2);
	display: none;
	outline: none;
	overflow: hidden;
	position: absolute;
	right: 0;
	top: 44px;
	-webkit-animation: gb__a .2s;
	animation: gb__a .2s;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-webkit-user-select: text
}

.gb_ea.gb_ha .gb_u,.gb_ea.gb_ha .gb_v,.gb_ea.gb_ha .gb_ba {
	display: block
}

.gb_ia {
	position: absolute;
	right: 0;
	top: 44px;
	z-index: -1
}

.gb_i .gb_u,.gb_i .gb_v,.gb_i .gb_ba {
	margin-top: -10px
}

.gb_M .gb_v {
	border: 0;
	border-left: 1px solid rgba(0, 0, 0, .2);
	border-top: 1px solid rgba(0, 0, 0, .2);
	height: 14px;
	width: 14px;
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg)
}

.gb_M .gb_u {
	border: 0;
	border-left: 1px solid rgba(0, 0, 0, .2);
	border-top: 1px solid rgba(0, 0, 0, .2);
	height: 14px;
	width: 14px;
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg);
	border-color: #fff;
	background: #fff
}

.gb_5b ::-webkit-scrollbar {
	height: 15px;
	width: 15px
}

.gb_5b ::-webkit-scrollbar-button {
	height: 0;
	width: 0
}

.gb_5b ::-webkit-scrollbar-thumb {
	background-clip: padding-box;
	background-color: rgba(0, 0, 0, .3);
	border: 5px solid transparent;
	-webkit-border-radius: 10px;
	border-radius: 10px;
	min-height: 20px;
	min-width: 20px;
	height: 5px;
	width: 5px
}

.gb_5b ::-webkit-scrollbar-thumb:hover,.gb_5b ::-webkit-scrollbar-thumb:active
	{
	background-color: rgba(0, 0, 0, .4)
}

#gb#gb a.gb_ka,#gb#gb a.gb_la {
	color: #404040;
	text-decoration: none
}

#gb#gb a.gb_la:hover,#gb#gb a.gb_la:focus {
	color: #000;
	text-decoration: underline
}

.gb_ma.gb_r {
	display: none;
	padding-left: 15px;
	vertical-align: middle
}

.gb_ma.gb_r:first-child {
	padding-left: 0
}

.gb_na.gb_r {
	display: inline-block
}

.gb_ma span {
	color: #737373;
	-webkit-user-select: text
}

.gb_oa .gb_na.gb_r {
	-webkit-flex: 0 1 auto;
	flex: 0 1 auto;
	-webkit-flex: 0 1 main-size;
	flex: 0 1 main-size;
	display: -webkit-flex;
	display: flex
}

.gb_pa .gb_na.gb_r {
	display: none
}

.gb_ma .gb_la {
	display: inline-block;
	line-height: 24px;
	outline: none;
	vertical-align: middle
}

.gb_na .gb_la {
	min-width: 60px;
	overflow: hidden;
	-webkit-flex: 0 1 auto;
	flex: 0 1 auto;
	-webkit-flex: 0 1 main-size;
	flex: 0 1 main-size;
	text-overflow: ellipsis
}

.gb_qa .gb_na .gb_la {
	min-width: 0
}

.gb_t .gb_na .gb_la {
	width: 0 !important
}

.gb_m .gb_la {
	font-weight: bold;
	text-shadow: 0 1px 1px rgba(255, 255, 255, .9)
}

.gb_n .gb_la {
	font-weight: bold;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .6)
}

#gb#gb.gb_n a.gb_la,#gb#gb.gb_n span.gb_la {
	color: #fff
}

.gb_Ea .gb_ga {
	background-position: -345px 0;
	opacity: .55
}

.gb_m .gb_Ea .gb_ga {
	background-position: -69px -211px;
	opacity: .7
}

.gb_n .gb_Ea .gb_ga {
	background-position: -350px -443px;
	opacity: 1
}

.gb_f .gb_Ea .gb_ga::before {
	left: -345px;
	top: 0
}

.gb_f.gb_m .gb_Ea .gb_ga::before {
	left: -69px;
	top: -211px
}

.gb_f.gb_n .gb_Ea .gb_ga::before {
	left: -350px;
	top: -443px
}

.gb_M .gb_Fa {
	position: relative
}

.gb_ja.gb_ja {
	-webkit-background-size: 64px 64px;
	background-size: 64px 64px
}

#gb2 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/3a1e625196.png')
}

.gb_f #gb2 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/3a1e625196.png')
}

#gb22 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/3daf4c1f88.png')
}

.gb_f #gb22 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/3daf4c1f88.png')
}

#gb45 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/f420d06f66.png')
}

.gb_f #gb45 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/f420d06f66.png')
}

#gb72 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/78b3d46de1.png')
}

.gb_f #gb72 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/78b3d46de1.png')
}

#gb117 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/142da27578.png')
}

.gb_f #gb117 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/142da27578.png')
}

#gb136 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/911e3628e6.png')
}

.gb_f #gb136 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/911e3628e6.png')
}

#gb166 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/5d03e9e245.png')
}

.gb_f #gb166 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/5d03e9e245.png')
}

#gb171 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/4244245d7e.png')
}

.gb_f #gb171 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/4244245d7e.png')
}

#gb177 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/4653513b7d.png')
}

.gb_f #gb177 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/4653513b7d.png')
}

#gb206 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/ad330d8459.png')
}

.gb_f #gb206 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/ad330d8459.png')
}

#gb207 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/2c21041e16.png')
}

.gb_f #gb207 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/2c21041e16.png')
}

#gb211 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/c03dda0b34.png')
}

.gb_f #gb211 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/c03dda0b34.png')
}

#gb217 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/71060be5b3.png')
}

.gb_f #gb217 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/71060be5b3.png')
}

#gb228 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/74aa55e0c2.png')
}

.gb_f #gb228 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/74aa55e0c2.png')
}

#gb249 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/afa40f6e42.png')
}

.gb_f #gb249 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/afa40f6e42.png')
}

#gb260 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/f0af90aac0.png')
}

.gb_f #gb260 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/f0af90aac0.png')
}

#gb261 .gb_ja {
	background-image: url('//ssl.gstatic.com/gb/images/a/0b26f6f8e4.png')
}

.gb_f #gb261 .gb_ja::before {
	content: url('//ssl.gstatic.com/gb/images/a/0b26f6f8e4.png')
}

@media ( min-resolution :1.25dppx) , ( -webkit-min-device-pixel-ratio :1.25) , (
		min-device-pixel-ratio :1.25) {
	#gb2 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/438087d3df.png')
	}
	.gb_f #gb2 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/438087d3df.png')
	}
	#gb22 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/cfa67efcd3.png')
	}
	.gb_f #gb22 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/cfa67efcd3.png')
	}
	#gb45 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/9c561d4392.png')
	}
	.gb_f #gb45 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/9c561d4392.png')
	}
	#gb72 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/90f42e515b.png')
	}
	.gb_f #gb72 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/90f42e515b.png')
	}
	#gb117 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/e3cbb9b858.png')
	}
	.gb_f #gb117 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/e3cbb9b858.png')
	}
	#gb136 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/17bdcddea9.png')
	}
	.gb_f #gb136 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/17bdcddea9.png')
	}
	#gb166 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/56c3072e8e.png')
	}
	.gb_f #gb166 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/56c3072e8e.png')
	}
	#gb171 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/1b217ae532.png')
	}
	.gb_f #gb171 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/1b217ae532.png')
	}
	#gb177 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/188f0d697b.png')
	}
	.gb_f #gb177 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/188f0d697b.png')
	}
	#gb206 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/20808fb750.png')
	}
	.gb_f #gb206 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/20808fb750.png')
	}
	#gb207 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/6d9eaee7f9.png')
	}
	.gb_f #gb207 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/6d9eaee7f9.png')
	}
	#gb211 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/2d7fffa981.png')
	}
	.gb_f #gb211 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/2d7fffa981.png')
	}
	#gb217 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/e2c0b463b4.png')
	}
	.gb_f #gb217 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/e2c0b463b4.png')
	}
	#gb228 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/fe8c881457.png')
	}
	.gb_f #gb228 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/fe8c881457.png')
	}
	#gb249 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/d54db42004.png')
	}
	.gb_f #gb249 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/d54db42004.png')
	}
	#gb260 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/6dfb007460.png')
	}
	.gb_f #gb260 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/6dfb007460.png')
	}
	#gb261 .gb_ja {
		background-image: url('//ssl.gstatic.com/gb/images/a/9001dae971.png')
	}
	.gb_f #gb261 .gb_ja::before {
		content: url('//ssl.gstatic.com/gb/images/a/9001dae971.png')
	}
}

.gb_ra {
	border: 1px solid #fff;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	display: inline-block;
	vertical-align: top;
	height: 98px;
	width: 86px
}

.gb_ra[aria-grabbed=true] {
	visibility: hidden
}

.gb_ra




:hover




:not


 


(
.gb_sa


 


){
border




:


 


1
px


 


solid


 


#e5e5e5






}
.gb_ra


 


.gb_ta


 


:not


 


(
.gb_sa


 


){
border




:


 


1
px


 


solid


 


#e5e5e5




;
-webkit-box-shadow




:


 


0
1
px


 


2
px


 


rgba




(0
,
0,
0,
0
.1




);
box-shadow




:


 


0
1
px


 


2
px


 


rgba




(0
,
0,
0,
0
.1




)
}
.gb_ra.gb_ta {
	background: #fff;
	cursor: -moz-grabbing;
	cursor: -webkit-grabbing;
	margin: -1px;
	visibility: visible;
	z-index: 1001
}

.gb_ua {
	opacity: .5
}

.gb_ra.gb_ta a {
	color: #404040 !important;
	cursor: -moz-grabbing;
	cursor: -webkit-grabbing;
	font: 13px/27px Arial, sans-serif;
	text-decoration: none !important
}

.gb_ka {
	display: inline-block;
	font-size: 13px;
	margin: 8px 2px;
	text-align: center;
	outline: none
}

.gb_ka .gb_va,.gb_ka .gb_ja {
	display: inline-block;
	vertical-align: top;
	height: 64px;
	width: 64px
}

.gb_wa {
	display: block;
	line-height: 20px;
	overflow: hidden;
	white-space: nowrap;
	width: 84px;
	text-overflow: ellipsis
}

.gb_ra:hover .gb_ka {
	z-index: 1
}

.gb_ra:hover .gb_wa {
	background: rgba(255, 255, 255, .9);
	white-space: normal;
	overflow-wrap: break-word;
	word-wrap: break-word
}

.gb_ka.gb_sa {
	cursor: default;
	filter:
		url("data:image/svg+xml;utf8,\00003csvg xmlns=\000027http://www.w3.org/2000/svg\000027\00003e\00003cfilter id=\000027g\000027\00003e\00003cfeColorMatrix values=\0000270.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0\000027/\00003e\00003c/filter\00003e\00003c/svg\00003e#g");
	-webkit-filter: grayscale(1);
	opacity: .4
}

.gb_ka .gb_va {
	background-image: url('//ssl.gstatic.com/gb/images/v1_ab71ffe9.png');
	-webkit-background-size: 388px 577px;
	background-size: 388px 577px
}

.gb_f .gb_ka .gb_va,.gb_f .gb_xa.gb_va {
	background-image: none;
	overflow: hidden;
	position: relative
}

.gb_f .gb_ka .gb_va::before,.gb_f .gb_xa.gb_va::before {
	content: url('//ssl.gstatic.com/gb/images/v1_ab71ffe9.png');
	position: absolute
}

.gb_f .gb_ja {
	background-image: none !important;
	position: relative
}

.gb_f .gb_ja::before {
	left: 0;
	position: absolute;
	top: 0
}

@media ( min-resolution :1.25dppx) , ( -webkit-min-device-pixel-ratio :1.25) , (
		min-device-pixel-ratio :1.25) {
	.gb_ka .gb_va {
		background-image: url('//ssl.gstatic.com/gb/images/v2_3e7d2e27.png')
	}
	.gb_f .gb_ka .gb_va::before {
		content: url('//ssl.gstatic.com/gb/images/v2_3e7d2e27.png');
		-webkit-transform: scale(.5);
		transform: scale(.5);
		-webkit-transform-origin: 0 0;
		transform-origin: 0 0
	}
	.gb_f .gb_ka .gb_ja::before {
		-webkit-transform: scale(.5);
		transform: scale(.5);
		-webkit-transform-origin: 0 0;
		transform-origin: 0 0
	}
}

#gb#gb .gb_ya a.gb_ka:focus {
	text-decoration: underline
}

.gb_ra[aria-grabbed=true].gb_za {
	visibility: visible
}

.gb_Aa,.gb_Ba {
	position: relative;
	top: 27px;
	visibility: hidden
}

.gb_Aa {
	float: left;
	width: 0;
	height: 0;
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent;
	border-right: 5px solid #4273db
}

.gb_Ba {
	float: right;
	width: 0;
	height: 0;
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent;
	border-left: 5px solid #4273db
}

ul.gb_Ca li.gb_za:not (:first-child ) .gb_Aa,ul.gb_Ca li.gb_za .gb_Ba,ul.gb_Da li.gb_za .gb_Aa,ul.gb_Da li.gb_za:not
	 (:last-child ) .gb_Ba {
	visibility: visible
}

.gb_Ea .gb_ga:hover,.gb_Ea .gb_ga:focus {
	opacity: .85
}

.gb_Ea .gb_ba {
	min-height: 196px;
	overflow-y: auto;
	width: 320px
}

.gb_Ha {
	-webkit-transition: height .2s ease-in-out;
	transition: height .2s ease-in-out
}

.gb_Ia {
	background: #fff;
	margin: 0;
	min-height: 100px;
	padding: 28px;
	padding-right: 27px;
	text-align: left;
	white-space: normal;
	width: 265px
}

.gb_Fa {
	background: #f5f5f5;
	cursor: pointer;
	height: 40px;
	overflow: hidden
}

.gb_Ja {
	position: relative
}

.gb_Fa {
	display: block;
	line-height: 40px;
	text-align: center;
	width: 320px
}

.gb_Ja {
	display: block;
	line-height: 40px;
	text-align: center
}

.gb_Ja.gb_Ka {
	line-height: 0
}

#gb a.gb_Fa,#gb a.gb_Fa:visited,#gb a.gb_Fa:active,#gb a.gb_Ja,#gb a.gb_Ja:visited
	{
	color: #737373;
	text-decoration: none
}

#gb a.gb_Ja:active {
	color: #737373
}

.gb_Ja,.gb_Ia {
	display: none
}

.gb_Ca,.gb_Ca+.gb_Ja,.gb_La .gb_Ja,.gb_La .gb_Ia {
	display: block
}

#gb a.gb_Ja:hover,#gb a.gb_Ja:active {
	text-decoration: underline
}

.gb_Ja {
	border-bottom: 1px solid #ebebeb;
	left: 28px;
	width: 264px
}

.gb_La .gb_Fa {
	display: none
}

.gb_Ja:last-child {
	border-bottom-width: 0
}

.gb_Ma.gb_Na {
	height: 100px;
	text-align: center
}

.gb_Ma.gb_Na img {
	padding: 34px 0;
	height: 32px;
	width: 32px
}

.gb_Ma .gb_va {
	background-image: url('//ssl.gstatic.com/gb/images/v1_ab71ffe9.png');
	-webkit-background-size: 388px 577px;
	background-size: 388px 577px;
	background-position: 0 -552px
}

.gb_Ma .gb_va+img {
	border: 0;
	margin: 8px;
	height: 48px;
	width: 48px
}

.gb_Ma div.gb_Oa {
	background: #ffa;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	padding: 5px;
	text-align: center
}

.gb_Pa .gb_Fa {
	margin-top: 0;
	position: static
}

.gb_Qa {
	display: inline-block
}

.gb_Ra {
	margin: -12px 28px 28px;
	position: relative;
	width: 264px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1), 0 0 1px
		rgba(0, 0, 0, 0.1);
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1), 0 0 1px rgba(0, 0, 0, 0.1)
}

.gb_xa {
	background-image: url('//ssl.gstatic.com/gb/images/v1_ab71ffe9.png');
	-webkit-background-size: 388px 577px;
	background-size: 388px 577px;
	display: inline-block;
	margin: 8px;
	vertical-align: middle;
	height: 64px;
	width: 64px
}

.gb_Sa {
	color: #262626;
	display: inline-block;
	font: 13px/18px Arial, sans-serif;
	margin-right: 80px;
	padding: 10px 10px 10px 0;
	vertical-align: middle;
	white-space: normal
}

.gb_Ta {
	font: 16px/24px Arial, sans-serif
}

#gb#gb .gb_Ua {
	color: #427fed;
	text-decoration: none
}

#gb#gb .gb_Ua:hover {
	text-decoration: underline
}

.gb_Va .gb_Ia {
	position: relative
}

.gb_Va .gb_ka {
	position: absolute;
	top: 28px;
	left: 28px
}

.gb_Fa.gb_Wa {
	display: none;
	height: 0
}

.gb_n .gb_Ea .gb_ga:hover,.gb_n .gb_Ea .gb_ga:focus {
	opacity: 1
}

@media ( min-resolution :1.25dppx) , ( -webkit-min-device-pixel-ratio :1.25) , (
		min-device-pixel-ratio :1.25) {
	.gb_Ma .gb_va {
		background-image: url('//ssl.gstatic.com/gb/images/v2_3e7d2e27.png')
	}
}

.gb_a {
	background: #f8f8f8;
	border: 1px solid #c6c6c6;
	display: inline-block;
	line-height: 28px;
	padding: 0 12px;
	-webkit-border-radius: 2px;
	border-radius: 2px
}

#gb a.gb_a.gb_a {
	color: #666;
	cursor: default;
	text-decoration: none
}

.gb_b {
	border: 1px solid #4285f4;
	font-weight: bold;
	outline: none;
	background: #4285f4;
	background: -webkit-linear-gradient(top, #4387fd, #4683ea);
	background: linear-gradient(top, #4387fd, #4683ea);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#4387fd,
		endColorstr=#4683ea, GradientType=0)
}

#gb a.gb_b.gb_b {
	color: #fff
}

.gb_b:hover {
	-webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .15);
	box-shadow: 0 1px 0 rgba(0, 0, 0, .15)
}

.gb_b:active {
	-webkit-box-shadow: inset 0 2px 0 rgba(0, 0, 0, .15);
	box-shadow: inset 0 2px 0 rgba(0, 0, 0, .15);
	background: #3c78dc;
	background: -webkit-linear-gradient(top, #3c7ae4, #3f76d3);
	background: linear-gradient(top, #3c7ae4, #3f76d3);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#3c7ae4,
		endColorstr=#3f76d3, GradientType=0)
}

.gb_Xa {
	display: inline-block;
	line-height: normal;
	position: relative;
	z-index: 987
}

.gb_d {
	-webkit-background-size: 32px 32px;
	background-size: 32px 32px;
	-webkit-border-radius: 50%;
	border-radius: 50%;
	display: block;
	margin: -1px;
	height: 32px;
	width: 32px
}

.gb_d:hover,.gb_d:focus {
	-webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .15);
	box-shadow: 0 1px 0 rgba(0, 0, 0, .15)
}

.gb_d:active {
	-webkit-box-shadow: inset 0 2px 0 rgba(0, 0, 0, .15);
	box-shadow: inset 0 2px 0 rgba(0, 0, 0, .15)
}

.gb_d:active::after {
	background: rgba(0, 0, 0, .1);
	-webkit-border-radius: 50%;
	border-radius: 50%;
	content: '';
	display: block;
	height: 100%
}

.gb_e:not (.gb_f ) .gb_d::before,.gb_e:not (.gb_f ) .gb_g::before {
	content: none
}

.gb_h {
	cursor: pointer;
	line-height: 30px;
	min-width: 30px;
	overflow: hidden;
	vertical-align: middle;
	width: auto;
	text-overflow: ellipsis
}

.gb_i .gb_h,.gb_i .gb_j {
	line-height: 26px
}

#gb#gb.gb_i a.gb_h,.gb_i .gb_j {
	color: #666;
	font-size: 11px;
	height: auto
}

#gb#gb.gb_i a.gb_h:hover,#gb#gb.gb_i a.gb_h:focus {
	color: #000
}

.gb_k {
	border-top: 4px solid #404040;
	border-left: 4px dashed transparent;
	border-right: 4px dashed transparent;
	display: inline-block;
	margin-left: 6px;
	vertical-align: middle
}

.gb_i .gb_k {
	border-top-color: #999
}

.gb_l:hover .gb_k {
	border-top-color: #000
}

.gb_m .gb_h {
	font-weight: bold;
	text-shadow: 0 1px 1px rgba(255, 255, 255, .9)
}

.gb_n .gb_h {
	font-weight: bold;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .6)
}

#gb#gb.gb_n.gb_n a.gb_h {
	color: #fff
}

.gb_n.gb_n .gb_k {
	border-top-color: #fff
}

.gb_m .gb_d,.gb_n .gb_d {
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .2)
}

.gb_m .gb_d:hover,.gb_n .gb_d:hover,.gb_m .gb_d:focus,.gb_n .gb_d:focus
	{
	-webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .15), 0 1px 2px
		rgba(0, 0, 0, .2);
	box-shadow: 0 1px 0 rgba(0, 0, 0, .15), 0 1px 2px rgba(0, 0, 0, .2)
}

.gb_o .gb_p,.gb_q .gb_p {
	position: absolute;
	right: 1px
}

.gb_p.gb_r,.gb_s.gb_r,.gb_l.gb_r {
	-webkit-flex: 0 1 auto;
	flex: 0 1 auto;
	-webkit-flex: 0 1 main-size;
	flex: 0 1 main-size
}

.gb_e.gb_t .gb_h {
	width: 30px !important
}

.gb_h ~.gb_u,.gb_h ~.gb_v {
	left: auto;
	right: 6.5px
}

.gb_w {
	outline: none
}

#gb a.gb_x.gb_x,#gb .gb_y.gb_y a {
	color: #36c;
	text-decoration: none
}

#gb a.gb_x:active,#gb a.gb_x:hover,#gb .gb_y a:active,#gb .gb_y a:hover
	{
	text-decoration: underline
}

.gb_z {
	margin: 20px
}

.gb_A,.gb_B {
	display: inline-block;
	vertical-align: top
}

.gb_A {
	margin-right: 20px;
	position: relative
}

.gb_g {
	-webkit-background-size: 96px 96px;
	background-size: 96px 96px;
	border: none;
	vertical-align: top;
	height: 96px;
	width: 96px
}

.gb_C {
	background: rgba(78, 144, 254, .7);
	bottom: 0;
	color: #fff;
	font-size: 9px;
	font-weight: bold;
	left: 0;
	line-height: 9px;
	position: absolute;
	padding: 7px 0;
	text-align: center;
	width: 96px
}

.gb_D {
	font-weight: bold;
	margin: -4px 0 1px 0
}

.gb_E {
	color: #666
}

.gb_y {
	color: #ccc;
	margin: 6px 0
}

.gb_y a {
	margin: 0 10px
}

.gb_y a:first-child {
	margin-left: 0
}

.gb_y a:last-child {
	margin-right: 0
}

.gb_B .gb_a {
	background: #4d90fe;
	border-color: #3079ed;
	font-weight: bold;
	margin: 10px 0 0 0
}

#gb .gb_B a.gb_a.gb_a {
	color: #fff
}

.gb_B .gb_a:hover {
	background: #357ae8;
	border-color: #2f5bb7
}

.gb_F {
	background: #f5f5f5;
	border-top: 1px solid #ccc;
	border-color: rgba(0, 0, 0, .2);
	padding: 10px 0;
	width: 100%;
	display: table
}

.gb_F .gb_a {
	margin: 0 20px
}

.gb_F>div {
	display: table-cell;
	text-align: right
}

.gb_F>div:first-child {
	text-align: left
}

.gb_F .gb_H {
	display: block;
	text-align: center
}

.gb_I .gb_u {
	border-bottom-color: #fef9db
}

.gb_J {
	background: #fef9db;
	font-size: 11px;
	padding: 10px 20px;
	white-space: normal
}

.gb_J b,.gb_x {
	white-space: nowrap
}

.gb_K {
	background: #f5f5f5;
	border-top: 1px solid #ccc;
	border-top-color: rgba(0, 0, 0, .2);
	max-height: 230px;
	overflow: auto
}

.gb_L {
	border-top: 1px solid #ccc;
	border-top-color: rgba(0, 0, 0, .2);
	display: block;
	padding: 10px 20px
}

.gb_M .gb_L:focus .gb_N {
	outline: 1px dotted #fff
}

.gb_L:hover {
	background: #eee
}

.gb_L:first-child,.gb_O:first-child+.gb_L {
	border-top: 0
}

.gb_O {
	display: none
}

.gb_P {
	cursor: default
}

.gb_P:hover {
	background: transparent
}

.gb_Q {
	border: none;
	vertical-align: top;
	height: 48px;
	width: 48px
}

.gb_N {
	display: inline-block;
	margin: 6px 0 0 10px
}

.gb_P .gb_Q,.gb_P .gb_N {
	opacity: .4
}

.gb_R {
	color: #000
}

.gb_P .gb_R {
	color: #666
}

.gb_S {
	color: #666
}

.gb_T {
	background: #f5f5f5;
	border-top: 1px solid #ccc;
	border-top-color: rgba(0, 0, 0, .2);
	display: block;
	padding: 10px 20px
}

.gb_U {
	background-position: -173px -383px;
	display: inline-block;
	margin: 1px 0;
	vertical-align: middle;
	height: 25px;
	width: 25px
}

.gb_f .gb_U::before {
	left: -173px;
	top: -383px
}

.gb_V {
	color: #427fed;
	display: inline-block;
	padding: 0 25px 0 10px;
	vertical-align: middle;
	white-space: normal
}

.gb_T:hover .gb_V {
	text-decoration: underline
}

.gb_Vc {
	color: #000;
	left: 0;
	min-width: 1177px;
	position: absolute;
	top: 0;
	-webkit-user-select: none;
	width: 100%
}

.gb_5b {
	font: 13px/27px Arial, sans-serif;
	position: relative;
	height: 60px;
	width: 100%
}

.gb_i .gb_5b {
	height: 28px
}

#gba {
	height: 60px
}

#gba.gb_i {
	height: 28px
}

#gba.gb_Wc {
	height: 90px
}

#gba.gb_Wc.gb_i {
	height: 58px
}

.gb_5b>.gb_r {
	height: 60px;
	line-height: 58px;
	vertical-align: middle
}

.gb_i .gb_5b>.gb_r {
	height: 28px;
	line-height: 26px
}

.gb_5b::before {
	background: #e5e5e5;
	bottom: 0;
	content: '';
	display: none;
	height: 1px;
	left: 0;
	position: absolute;
	right: 0
}

.gb_5b {
	background: #f1f1f1
}

.gb_Xc .gb_5b {
	background: #fff
}

.gb_Xc .gb_5b::before,.gb_i .gb_5b::before {
	display: none
}

.gb_m .gb_5b,.gb_n .gb_5b,.gb_i .gb_5b {
	background: transparent
}

.gb_m .gb_5b::before {
	background: #e1e1e1;
	background: rgba(0, 0, 0, .12)
}

.gb_n .gb_5b::before {
	background: #333;
	background: rgba(255, 255, 255, .2)
}

.gb_r {
	display: inline-block;
	-webkit-flex: 0 0 auto;
	flex: 0 0 auto;
	-webkit-flex: 0 0 main-size;
	flex: 0 0 main-size
}

.gb_r.gb_Zc {
	float: right;
	-webkit-order: 1;
	order: 1
}

.gb_0c {
	white-space: nowrap
}

.gb_oa .gb_0c {
	display: -webkit-flex;
	display: flex
}

.gb_0c,.gb_r {
	margin-left: 0 !important;
	margin-right: 0 !important
}

.gb_2 {
	background-image: url('./pic/button.png');
	-webkit-background-size: 388px 577px;
	background-size: 388px 577px
}

@media ( min-resolution :1.25dppx) , ( -webkit-min-device-pixel-ratio :1.25) , (
		min-device-pixel-ratio :1.25) {
	.gb_2 {
		background-image: url('//ssl.gstatic.com/gb/images/v2_3e7d2e27.png')
	}
}

#gbsfw {
	min-width: 400px;
	overflow: visible
}

.gb_4a,#gbsfw.gb_ha {
	display: block;
	outline: none
}

#gbsfw.gb_Oa iframe {
	display: none
}

.gb_5a {
	padding: 118px 0;
	text-align: center
}

.gb_6a {
	background: no-repeat center 0;
	color: #aaa;
	font-size: 13px;
	line-height: 20px;
	padding-top: 76px;
	background-image: -webkit-image-set(url('//ssl.gstatic.com/gb/images/a/f5cdd88b65.png') 1x
		, url('//ssl.gstatic.com/gb/images/a/133fc21e88.png') 2x)
}

.gb_6a a {
	color: #4285f4;
	text-decoration: none
}

.gb_f .gb_0 .gb_2::before {
	left: 0;
	top: 0
}

.gb_f.gb_n .gb_0 .gb_2::before {
	left: -138px;
	top: -513px
}

.gb_f.gb_m .gb_0 .gb_2::before {
	left: -207px;
	top: -107px
}

.gb_f .gb_3 {
	background-image: none !important
}

.gb_f .gb_4 {
	visibility: visible
}

.gb_M .gb_7a span {
	background: transparent
}

.gb_W {
	min-width: 152px;
	overflow: hidden;
	position: relative;
	z-index: 987
}

.gb_X {
	position: absolute;
	padding: 0 30px 0 30px
}

.gb_Z .gb_X {
	right: 100%;
	margin-right: -152px
}

.gb_0 {
	display: inline-block;
	outline: none;
	vertical-align: middle
}

.gb_1 .gb_0 {
	position: relative;
	top: 2px
}

.gb_0 .gb_2,.gb_3 {
	display: block
}

.gb_4 {
	border: none;
	display: block;
	visibility: hidden
}

.gb_0 .gb_2 {
	background-position: 0 0;
	height: 33px;
	width: 92px
}

.gb_3 {
	background-repeat: no-repeat
}

.gb_n .gb_0 .gb_2 {
	background-position: -138px -513px;
	margin: -3px 0 0 -10px;
	height: 52px;
	width: 112px
}

.gb_m .gb_0 .gb_2 {
	margin: -3px 0 0 -10px;
	height: 52px;
	width: 112px;
	background-position: -207px -107px
}

@
-webkit-keyframes gb__nb { 0%{
	-webkit-transform: scale(0, 0);
	transform: scale(0, 0)
}

20%{
-webkit-transform














:scale














(1
.4
,
1
.4














);
transform














:scale














(1
.4
,
1
.4














)
}
50%{
-webkit-transform














:scale














(
.8
,
.8














);
transform














:scale














(
.8
,
.8














)
}
85%{
-webkit-transform














:scale














(1
.1
,
1
.1














);
transform














:scale














(1
.1
,
1
.1














)
}
to {
	-webkit-transform: scale(1.0, 1.0);
	transform: scale(1.0, 1.0)
}

}
@
keyframes gb__nb { 0%{
	-webkit-transform: scale(0, 0);
	transform: scale(0, 0)
}

20%{
-webkit-transform














:scale














(1
.4
,
1
.4














);
transform














:scale














(1
.4
,
1
.4














)
}
50%{
-webkit-transform














:scale














(
.8
,
.8














);
transform














:scale














(
.8
,
.8














)
}
85%{
-webkit-transform














:scale














(1
.1
,
1
.1














);
transform














:scale














(1
.1
,
1
.1














)
}
to {
	-webkit-transform: scale(1.0, 1.0);
	transform: scale(1.0, 1.0)
}

}
.gb_8a .gb_fa {
	font-size: 14px;
	font-weight: bold;
	top: 0;
	right: 0
}

.gb_8a .gb_ga {
	display: inline-block;
	vertical-align: middle;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	height: 30px;
	width: 30px
}

.gb_9a {
	background-position: -69px -315px;
	opacity: .55;
	height: 100%;
	width: 100%
}

.gb_ga:hover .gb_9a,.gb_ga:focus .gb_9a {
	opacity: .85
}

.gb_ab .gb_9a {
	background-position: -245px -443px
}

.gb_bb {
	background-color: #cb4437;
	-webkit-border-radius: 8px;
	border-radius: 8px;
	font: bold 11px Arial;
	color: #fff;
	line-height: 16px;
	min-width: 14px;
	padding: 0 1px;
	position: absolute;
	right: 0;
	text-align: center;
	text-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
	top: 0;
	visibility: hidden;
	z-index: 990
}

.gb_cb .gb_bb,.gb_cb .gb_db,.gb_cb .gb_db.gb_eb {
	visibility: visible
}

.gb_db {
	padding: 0 2px;
	visibility: hidden
}

.gb_8a:not (.gb_fb ) .gb_v,.gb_8a:not (.gb_fb ) .gb_u {
	left: 3px
}

.gb_8a .gb_u {
	border-bottom-color: #e5e5e5
}

.gb_bb.gb_gb {
	-webkit-animation: gb__nb .6s 1s both ease-in-out;
	animation: gb__nb .6s 1s both ease-in-out;
	-webkit-perspective-origin: top right;
	perspective-origin: top right;
	-webkit-transform: scale(1, 1);
	transform: scale(1, 1);
	-webkit-transform-origin: top right;
	transform-origin: top right
}

.gb_gb .gb_db {
	visibility: visible
}

.gb_hb {
	background-color: rgba(0, 0, 0, .55);
	color: #fff;
	font-size: 12px;
	font-weight: bold;
	line-height: 20px;
	margin: 5px;
	padding: 0 2px;
	text-align: center;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-border-radius: 50%;
	border-radius: 50%;
	height: 20px;
	width: 20px
}

.gb_hb.gb_ib {
	background-position: -276px -164px
}

.gb_hb.gb_jb {
	background-position: 0 -176px
}

.gb_ga:hover .gb_hb,.gb_ga:focus .gb_hb {
	background-color: rgba(0, 0, 0, .85)
}

#gbsfw.gb_kb {
	background: #e5e5e5;
	border-color: #ccc
}

.gb_m .gb_ga .gb_9a {
	background-position: -138px -383px;
	opacity: .7
}

.gb_m .gb_ab .gb_9a {
	background-position: -207px -233px
}

.gb_m .gb_ga:hover .gb_9a,.gb_m .gb_ga:focus .gb_9a {
	opacity: .85
}

.gb_n .gb_ga .gb_9a {
	background-position: -280px -478px;
	opacity: 1
}

.gb_n .gb_ab .gb_9a {
	background-position: -207px -372px
}

.gb_m .gb_bb,.gb_n .gb_bb {
	border: none;
	-webkit-box-shadow: -1px 1px 1px rgba(0, 0, 0, .2);
	box-shadow: -1px 1px 1px rgba(0, 0, 0, .2)
}

.gb_m .gb_hb {
	background-color: rgba(0, 0, 0, .7);
	-webkit-box-shadow: 0 1px 2px rgba(255, 255, 255, .9);
	box-shadow: 0 1px 2px rgba(255, 255, 255, .9)
}

.gb_n .gb_hb.gb_hb {
	background-color: #fff;
	color: #404040;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .2)
}

.gb_n .gb_hb.gb_ib {
	background-position: -315px -478px
}

.gb_n .gb_hb.gb_jb {
	background-position: -224px -337px
}

.gb_cb .gb_hb.gb_hb {
	background-color: #db4437;
	color: #fff
}

.gb_cb .gb_ga:hover .gb_hb,.gb_cb .gb_ga:focus .gb_hb {
	background-color: #a52714
}

.gb_cb .gb_hb.gb_jb {
	background-position: 0 -176px
}

.gb_f .gb_9a::before {
	left: -69px;
	top: -315px
}

.gb_f .gb_ab .gb_9a::before {
	left: -245px;
	top: -443px
}

.gb_f.gb_m .gb_ga .gb_9a::before {
	left: -138px;
	top: -383px
}

.gb_f.gb_m .gb_ab .gb_9a::before {
	left: -207px;
	top: -233px
}

.gb_f.gb_n .gb_ga .gb_9a::before {
	left: -280px;
	top: -478px
}

.gb_f.gb_n .gb_ab .gb_9a::before {
	left: -207px;
	top: -372px
}

.gb_M .gb_hb {
	border: 1px solid #fff;
	color: #fff
}

.gb_M.gb_m .gb_hb {
	border-color: #000;
	color: #000
}

.gb_f .gb_hb.gb_ib::before,.gb_M.gb_f.gb_n .gb_hb.gb_ib::before {
	left: -276px;
	top: -164px
}

.gb_f .gb_hb.gb_jb::before,.gb_M.gb_f.gb_n .gb_hb.gb_jb::before {
	left: 0;
	top: -176px
}

.gb_f.gb_n .gb_hb.gb_ib::before,.gb_M.gb_f.gb_m .gb_hb.gb_ib::before {
	left: -315px;
	top: -478px
}

.gb_f.gb_n .gb_hb.gb_jb::before,.gb_M.gb_f.gb_m .gb_hb.gb_jb::before {
	left: -224px;
	top: -337px
}

.gb_mb {
	display: none;
	margin: 28px;
	margin-bottom: -12px;
	outline: none;
	position: relative;
	width: 264px;
	z-index: 1;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1), 0 0 1px
		rgba(0, 0, 0, 0.1);
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1), 0 0 1px rgba(0, 0, 0, 0.1)
}

.gb_mb.gb_ha {
	display: block
}

.gb_lb {
	-webkit-background-size: 64px 64px;
	background-size: 64px 64px;
	display: inline-block;
	margin: 12px;
	vertical-align: top;
	height: 64px;
	width: 64px
}

.gb_ob {
	display: inline-block;
	padding: 16px 16px 16px 0;
	vertical-align: top;
	white-space: normal
}

.gb_lb ~.gb_ob {
	margin-right: 88px
}

.gb_ob:first-child {
	padding-left: 16px
}

.gb_pb {
	color: #262626;
	font: 16px/24px Arial, sans-serif
}

.gb_qb {
	color: #737373;
	font: 13px/18px Arial, sans-serif
}

#gb#gb .gb_mb .gb_rb {
	color: #427fed;
	text-decoration: none
}

#gb#gb .gb_mb .gb_rb:hover {
	text-decoration: underline
}

.gb_mb .gb_nb {
	background-position: -207px -337px;
	cursor: pointer;
	opacity: .27;
	outline: none;
	position: absolute;
	right: 4px;
	top: 4px;
	height: 12px;
	width: 12px
}

.gb_mb .gb_nb:hover {
	opacity: .55
}

.gb_ea.gb_tb {
	padding: 0
}

.gb_tb .gb_ba {
	padding: 26px 26px 22px 13px;
	background: #ffffff
}

.gb_ub.gb_tb .gb_ba {
	background: #4d90fe
}

a.gb_vb {
	color: #666666 !important;
	font-size: 22px;
	height: 9px;
	opacity: .8;
	position: absolute;
	right: 14px;
	top: 4px;
	text-decoration: none !important;
	width: 9px
}

.gb_ub a.gb_vb {
	color: #c1d1f4 !important
}

a.gb_vb:hover,a.gb_vb:active {
	opacity: 1
}

.gb_wb {
	padding: 0;
	width: 258px;
	white-space: normal;
	display: table
}

.gb_ub .gb_wb {
	width: 200px
}

.gb_xb {
	color: #333333;
	font-size: 16px;
	line-height: 20px;
	margin: 0;
	margin-bottom: 16px
}

.gb_ub .gb_xb {
	color: #ffffff
}

.gb_yb {
	color: #666666;
	line-height: 17px;
	margin: 0;
	margin-bottom: 5px
}

.gb_ub .gb_yb {
	color: #ffffff
}

.gb_zb {
	position: absolute;
	background: transparent;
	top: -999px;
	z-index: -1;
	visibility: hidden;
	margin-top: 1px;
	margin-left: 1px
}

#gb .gb_tb {
	margin: 0
}

.gb_tb .gb_a {
	background: #4d90fe;
	border-color: #3079ed;
	margin-top: 15px
}

#gb .gb_tb a.gb_a.gb_a {
	color: #ffffff
}

.gb_tb .gb_a:hover {
	background: #357ae8;
	border-color: #2f5bb7
}

.gb_Ab .gb_fa .gb_u {
	border-bottom-color: #ffffff;
	display: block
}

.gb_Bb .gb_fa .gb_u {
	border-bottom-color: #4d90fe;
	display: block
}

.gb_Ab .gb_fa .gb_v,.gb_Bb .gb_fa .gb_v {
	display: block
}

.gb_Cb,.gb_Db {
	display: table-cell
}

.gb_Cb {
	vertical-align: middle
}

.gb_Db {
	padding-left: 13px;
	width: 100%
}

.gb_Eb {
	margin-bottom: 32px;
	font-size: small
}

.gb_Eb .gb_Fb {
	margin-right: 5px
}

.gb_Eb .gb_Hb {
	color: red
}

.gb_Ib {
	color: #ffffff;
	font-size: 13px;
	font-weight: bold;
	height: 25px;
	line-height: 19px;
	padding-top: 5px;
	padding-left: 12px;
	position: relative;
	background-color: #4d90fe
}

.gb_Ib .gb_nb {
	color: #ffffff;
	cursor: default;
	font-size: 22px;
	font-weight: normal;
	position: absolute;
	right: 12px;
	top: 5px
}

.gb_Ib .gb_rb,.gb_Ib .gb_Jb {
	color: #ffffff;
	display: inline-block;
	font-size: 11px;
	margin-left: 16px;
	padding: 0 8px;
	white-space: nowrap
}

.gb_Kb {
	background: none;
	background-image: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 0, 0, 0.16)),
		to(rgba(0, 0, 0, 0.2)));
	background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.16),
		rgba(0, 0, 0, 0.2));
	background-image: linear-gradient(top, rgba(0, 0, 0, 0.16),
		rgba(0, 0, 0, 0.2));
	background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.16),
		rgba(0, 0, 0, 0.2));
	border-radius: 2px;
	border: 1px solid #dcdcdc;
	border: 1px solid rgba(0, 0, 0, 0.1);
	cursor: default !important;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#160000ff,
		endColorstr=#220000ff);
	text-decoration: none !important;
	-webkit-border-radius: 2px
}

.gb_Kb:hover {
	background: none;
	background-image: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 0, 0, 0.14)),
		to(rgba(0, 0, 0, 0.2)));
	background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.14),
		rgba(0, 0, 0, 0.2));
	background-image: linear-gradient(top, rgba(0, 0, 0, 0.14),
		rgba(0, 0, 0, 0.2));
	background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.14),
		rgba(0, 0, 0, 0.2));
	border: 1px solid rgba(0, 0, 0, 0.2);
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#14000000,
		endColorstr=#22000000)
}

.gb_Kb:active {
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3)
}

.gb_sb {
	display: none
}

.gb_sb.gb_ha {
	display: block
}

.gb_f .gb_lb {
	background-image: none !important
}

.gb_f .gb_lb::before {
	display: inline-block;
	-webkit-transform: scale(.5);
	transform: scale(.5);
	-webkit-transform-origin: 0 0;
	transform-origin: 0 0
}

.gb_f .gb_mb .gb_nb {
	position: absolute
}

.gb_f .gb_mb .gb_nb::before {
	left: -207px;
	top: -337px
}

.gbqfb,.gbqfba,.gbqfbb {
	cursor: default !important;
	display: inline-block;
	font-weight: bold;
	height: 29px;
	line-height: 29px;
	min-width: 54px;
	padding: 0 8px;
	text-align: center;
	text-decoration: none !important;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-webkit-user-select: none
}

.gbqfba:focus {
	border: 1px solid #4d90fe;
	outline: none;
	-webkit-box-shadow: inset 0 0 0 1px #fff;
	box-shadow: inset 0 0 0 1px #fff
}

.gbqfba:hover {
	border-color: #c6c6c6;
	color: #222 !important;
	-webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .15);
	box-shadow: 0 1px 0 rgba(0, 0, 0, .15);
	background: #f8f8f8;
	background: -webkit-linear-gradient(top, #f8f8f8, #f1f1f1);
	background: linear-gradient(top, #f8f8f8, #f1f1f1);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#f8f8f8,
		endColorstr=#f1f1f1, GradientType=1)
}

.gbqfba:hover:focus {
	-webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .15), inset 0 0 0 1px #fff;
	box-shadow: 0 1px 0 rgba(0, 0, 0, .15), inset 0 0 0 1px #fff
}

.gbqfb::-moz-focus-inner {
	border: 0
}

.gbqfba::-moz-focus-inner {
	border: 0
}

.gbqfba {
	border: 1px solid #dcdcdc;
	border-color: rgba(0, 0, 0, 0.1);
	color: #444 !important;
	font-size: 11px;
	background: #f5f5f5;
	background: -webkit-linear-gradient(top, #f5f5f5, #f1f1f1);
	background: linear-gradient(top, #f5f5f5, #f1f1f1);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#f5f5f5,
		endColorstr=#f1f1f1, GradientType=1)
}

.gbqfba:active {
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1)
}

.gb_Ob {
	position: relative;
	width: 650px;
	z-index: 986
}

#gbq2 {
	padding-top: 15px
}

.gb_oa .gb_Ob {
	min-width: 200px;
	-webkit-flex: 0 2 auto;
	flex: 0 2 auto;
	-webkit-flex: 0 2 main-size;
	flex: 0 2 main-size
}

.gb_qa ~.gb_Ob {
	min-width: 0
}

.gb_oa #gbqf {
	margin-right: 0;
	display: -webkit-flex;
	display: flex
}

.gb_oa .gbqff {
	min-width: 0;
	-webkit-flex: 1 1 auto;
	flex: 1 1 auto;
	-webkit-flex: 1 1 main-size;
	flex: 1 1 main-size
}

.gb_f .gbqfi::before {
	left: -280px;
	top: -443px
}

.gb_M .gbqfb:focus .gbqfi {
	outline: 1px dotted #fff
}

#gbq2 {
	display: block
}

#gbqf {
	display: block;
	margin: 0;
	margin-right: 60px;
	white-space: nowrap
}

.gbqff {
	border: none;
	display: inline-block;
	margin: 0;
	padding: 0;
	vertical-align: top;
	width: 100%
}

.gbqfqw,#gbqfb,.gbqfwa {
	vertical-align: top
}

#gbqfaa,#gbqfab,#gbqfqwb {
	position: absolute
}

#gbqfaa {
	left: 0
}

#gbqfab {
	right: 0
}

.gbqfqwb,.gbqfqwc {
	right: 0;
	left: 0;
	height: 100%
}

.gbqfqwb {
	padding: 0 8px
}

#gbqfbw {
	display: inline-block;
	vertical-align: top
}

#gbqfb {
	border: 1px solid transparent;
	border-bottom-left-radius: 0;
	border-top-left-radius: 0;
	height: 30px;
	margin: 0;
	outline: none;
	padding: 0 0;
	width: 60px;
	-webkit-box-shadow: none;
	box-shadow: none;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	background: #4285f4;
	background: -webkit-linear-gradient(top, #4387fd, #4683ea);
	background: linear-gradient(top, #4387fd, #4683ea);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#4387fd,
		endColorstr=#4683ea, GradientType=1)
}

#gbqfb:hover {
	-webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .15);
	box-shadow: 0 1px 0 rgba(0, 0, 0, .15)
}

#gbqfb:focus {
	-webkit-box-shadow: inset 0 0 0 1px #fff;
	box-shadow: inset 0 0 0 1px #fff
}

#gbqfb:hover:focus {
	-webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .15), inset 0 0 0 1px #fff;
	box-shadow: 0 1px 0 rgba(0, 0, 0, .15), inset 0 0 0 1px #fff
}

#gbqfb:active:active {
	border: 1px solid transparent;
	-webkit-box-shadow: inset 0 2px 0 rgba(0, 0, 0, .15);
	box-shadow: inset 0 2px 0 rgba(0, 0, 0, .15);
	background: #3c78dc;
	background: -webkit-linear-gradient(top, #3c7ae4, #3f76d3);
	background: linear-gradient(top, #3c7ae4, #3f76d3);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#3c7ae4,
		endColorstr=#3f76d3, GradientType=1)
}

.gbqfi {
	background-position: -280px -443px;
	display: inline-block;
	margin: -1px;
	height: 30px;
	width: 30px
}

.gbqfqw {
	background: #fff;
	background-clip: padding-box;
	border: 1px solid #cdcdcd;
	border-color: rgba(0, 0, 0, .15);
	border-right-width: 0;
	height: 30px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

#gbfwc .gbqfqw {
	border-right-width: 1px
}

#gbqfqw {
	position: relative
}

.gbqfqw.gbqfqw:hover {
	border-color: #a9a9a9;
	border-color: rgba(0, 0, 0, .3)
}

.gbqfwa {
	display: inline-block;
	width: 100%
}

.gbqfwb {
	width: 40%
}

.gbqfwc {
	width: 60%
}

.gbqfwb .gbqfqw {
	margin-left: 10px
}

.gbqfqw.gbqfqw:active,.gbqfqw.gbqfqwf.gbqfqwf {
	border-color: #4285f4
}

#gbqfq,#gbqfqb,#gbqfqc {
	background: transparent;
	border: none;
	height: 20px;
	margin-top: 4px;
	padding: 0;
	vertical-align: top;
	width: 100%
}

#gbqfq:focus,#gbqfqb:focus,#gbqfqc:focus {
	outline: none
}

.gbqfif,.gbqfsf {
	color: #222;
	font: 16px arial, sans-serif
}

#gbqfbwa {
	display: none;
	text-align: center;
	height: 0
}

#gbqfbwa .gbqfba {
	margin: 16px 8px
}

#gbqfsa,#gbqfsb {
	font: bold 11px/27px Arial, sans-serif !important;
	vertical-align: top
}

.gb_m .gbqfqw.gbqfqw,.gb_n .gbqfqw.gbqfqw {
	border-color: rgba(255, 255, 255, 1);
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .2)
}

.gb_m #gbqfb,.gb_n #gbqfb {
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .2)
}

.gb_m #gbqfb:hover,.gb_n #gbqfb:hover {
	-webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .15), 0 1px 2px
		rgba(0, 0, 0, .2);
	box-shadow: 0 1px 0 rgba(0, 0, 0, .15), 0 1px 2px rgba(0, 0, 0, .2)
}

.gb_m #gbqfb:active,.gb_n #gbqfb:active {
	-webkit-box-shadow: inset 0 2px 0 rgba(0, 0, 0, .15), 0 1px 2px
		rgba(0, 0, 0, .2);
	box-shadow: inset 0 2px 0 rgba(0, 0, 0, .15), 0 1px 2px
		rgba(0, 0, 0, .2)
}

.gb_1b .gb_ga {
	background-position: 0 -201px;
	opacity: .55;
	height: 30px;
	width: 30px
}

.gb_1b .gb_ga:hover,.gb_1b .gb_ga:focus {
	opacity: .85
}

.gb_1b .gb_u {
	border-bottom-color: #f5f5f5
}

#gbsfw.gb_2b {
	background: #f5f5f5;
	border-color: #ccc
}

.gb_n .gb_1b .gb_ga {
	background-position: -315px -443px;
	opacity: 1
}

.gb_m .gb_1b .gb_ga {
	background-position: -207px 0;
	opacity: .7
}

.gb_m .gb_1b .gb_ga:hover,.gb_m .gb_1b .gb_ga:focus {
	opacity: .85
}

.gb_f .gb_1b .gb_ga::before {
	left: 0;
	top: -201px
}

.gb_f.gb_m .gb_1b .gb_ga::before {
	left: -207px;
	top: 0
}

.gb_f.gb_n .gb_1b .gb_ga::before {
	left: -315px;
	top: -443px
}

.gb_oc {
	width: 480px
}

.gb_pc {
	background: #e7e7e7;
	background: rgba(0, 0, 0, .04);
	border-bottom-right-radius: 0;
	line-height: 30px;
	position: relative;
	text-align: center;
	width: 100%
}

.gb_pc:hover {
	background: #dbdbdb;
	background: rgba(0, 0, 0, .08)
}

.gb_pc .gb_qc {
	margin: 0 10px
}

.gb_rc {
	position: relative;
	z-index: 1
}

.gb_sc {
	background: #eee;
	border-bottom: 1px solid #e3e3e3;
	border-left: 1px solid #e3e3e3;
	display: inline-block;
	line-height: 32px;
	text-align: center;
	width: 160px
}

.gb_rc .gb_sc:first-child {
	border-left: none
}

.gb_rc .gb_ha {
	background: #fff;
	border-bottom: none
}

.gb_tc {
	display: none;
	text-align: center
}

.gb_tc.gb_ha {
	display: block
}

.gb_uc {
	color: inherit;
	display: inline-block;
	padding: 15px;
	text-decoration: none
}

.gb_vc {
	background-clip: content-box;
	background-origin: content-box;
	display: inherit;
	height: 64px;
	width: 64px
}

.gb_wc {
	display: block;
	text-align: center
}

.gb_xc {
	border-top: none;
	top: 78px;
	z-index: 1;
	-webkit-border-radius: 0 0 2px 2px;
	border-radius: 0 0 2px 2px
}

.gb_yc {
	display: inline-block;
	vertical-align: middle
}

.gb_zc {
	display: inline-block;
	vertical-align: middle;
	-webkit-background-size: 100%;
	background-size: 100%;
	height: 20px;
	width: 20px
}

.gb_Ac {
	background-image: url('//ssl.gstatic.com/gb/images/a/5a1c013d3d.png')
}

.gb_Bc {
	background-image: url('//ssl.gstatic.com/gb/images/a/de580e5330.png')
}

.gb_Cc {
	background-image: url('//ssl.gstatic.com/gb/images/a/451603daf6.png')
}

.gb_yc {
	margin-left: 4px
}

.gb_Dc {
	margin: 5px;
	width: 470px
}

.gb_Ec {
	border: none;
	display: block;
	margin: 0 5px;
	outline: none;
	padding: 0 5px;
	height: 30px;
	width: 450px
}

.gb_Fc {
	border: none;
	display: block;
	margin: 0 5px;
	outline: none;
	padding: 0 5px;
	height: 30px;
	width: 200px;
	border-top: 1px solid #e3e3e3
}

.gb_Hc {
	border-color: #e3e3e3;
	display: block;
	font: inherit;
	margin: 0 5px;
	outline: none;
	padding: 5px;
	text-align: left;
	height: 320px;
	width: 450px
}

.gb_Ic,.gb_Jc {
	border: 1px solid #e3e3e3;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	cursor: pointer;
	line-height: 27px;
	margin: 5px;
	padding: 0 8px;
	width: 54px
}

.gb_Ic {
	float: left
}

.gb_Jc {
	float: right
}

.gb_e {
	min-width: 315px;
	padding-left: 30px;
	padding-right: 30px;
	position: relative;
	text-align: right;
	z-index: 986;
	-webkit-align-items: center;
	align-items: center;
	-webkit-justify-content: flex-end;
	justify-content: flex-end
}

.gb_i .gb_e {
	min-width: 0
}

.gb_e.gb_r {
	-webkit-flex: 1 1 auto;
	flex: 1 1 auto;
	-webkit-flex: 1 1 main-size;
	flex: 1 1 main-size
}

.gb_Kc {
	line-height: normal;
	position: relative;
	text-align: left
}

.gb_Kc.gb_r,.gb_Lc.gb_r,.gb_j.gb_r {
	-webkit-flex: 0 1 auto;
	flex: 0 1 auto;
	-webkit-flex: 0 1 main-size;
	flex: 0 1 main-size
}

.gb_Mc,.gb_Nc {
	display: inline-block;
	padding: 0 0 0 15px;
	position: relative;
	vertical-align: middle
}

.gb_Lc {
	line-height: normal;
	padding-right: 15px
}

.gb_e .gb_Lc.gb_pa {
	padding-right: 0
}

.gb_j {
	color: #404040;
	line-height: 30px;
	min-width: 30px;
	overflow: hidden;
	vertical-align: middle;
	text-overflow: ellipsis
}

#gb.gb_i.gb_i .gb_hc,#gb.gb_i.gb_i .gb_Kc>.gb_Nc .gb_ic {
	background: none;
	border: none;
	color: #36c;
	cursor: pointer;
	filter: none;
	font-size: 11px;
	line-height: 26px;
	padding: 0;
	-webkit-box-shadow: none;
	box-shadow: none
}

#gb.gb_i.gb_n .gb_hc,#gb.gb_i.gb_n .gb_Kc>.gb_Nc .gb_ic {
	color: #fff
}

.gb_i .gb_hc {
	text-transform: uppercase
}

.gb_e.gb_qa {
	padding-left: 0;
	padding-right: 29px
}

.gb_e.gb_Oc {
	max-width: 400px
}

.gb_Pc {
	background-clip: content-box;
	background-origin: content-box;
	opacity: .27;
	padding: 22px;
	height: 16px;
	width: 16px
}

.gb_Pc.gb_r {
	display: none
}

.gb_Pc:hover,.gb_Pc:focus {
	opacity: .55
}

.gb_Qc {
	background-position: -224px -443px
}

.gb_Rc {
	background-position: -69px -350px;
	padding-left: 30px;
	padding-right: 14px;
	position: absolute;
	right: 0;
	top: 0;
	z-index: 990
}

.gb_o:not (.gb_q ) .gb_Rc,.gb_qa .gb_Qc {
	display: inline-block
}

.gb_o .gb_Qc {
	padding-left: 30px;
	padding-right: 0;
	width: 0
}

.gb_o:not (.gb_q ) .gb_Sc {
	display: none
}

.gb_e.gb_r.gb_qa,.gb_qa:not (.gb_q ) .gb_Kc {
	-webkit-flex: 0 0 auto;
	flex: 0 0 auto;
	-webkit-flex: 0 0 main-size;
	flex: 0 0 main-size
}

.gb_Pc,.gb_qa .gb_Lc,.gb_q .gb_Kc {
	overflow: hidden
}

.gb_o .gb_Lc {
	padding-right: 0
}

.gb_qa .gb_Kc {
	padding: 1px 1px 1px 0
}

.gb_o .gb_Kc {
	width: 75px
}

.gb_e.gb_Tc,.gb_e.gb_Tc .gb_Qc,.gb_e.gb_Tc .gb_Qc::before,.gb_e.gb_Tc .gb_Lc,.gb_e.gb_Tc .gb_Kc
	{
	-webkit-transition: width .5s ease-in-out, min-width .5s ease-in-out,
		max-width .5s ease-in-out, padding .5s ease-in-out, left .5s
		ease-in-out;
	transition: width .5s ease-in-out, min-width .5s ease-in-out, max-width
		.5s ease-in-out, padding .5s ease-in-out, left .5s ease-in-out
}

.gb_oa .gb_e {
	min-width: 0
}

.gb_e.gb_t,.gb_e.gb_t .gb_Kc,.gb_e.gb_Uc,.gb_e.gb_Uc .gb_Kc {
	min-width: 0 !important
}

.gb_e.gb_t,.gb_e.gb_t .gb_r {
	-webkit-flex: 0 0 auto !important;
	-webkit-flex: 0 0 auto !important;
	flex: 0 0 auto !important
}

.gb_e.gb_t .gb_j {
	width: 30px !important
}

.gb_m .gb_j {
	font-weight: bold;
	text-shadow: 0 1px 1px rgba(255, 255, 255, .9)
}

.gb_n .gb_j {
	color: #fff;
	font-weight: bold;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .6)
}

.gb_f .gb_Qc::before {
	clip: rect(443px, 240px, 459px, 224px);
	left: -202px;
	top: -421px
}

.gb_f .gb_2.gb_Rc {
	position: absolute
}

.gb_f .gb_Rc::before {
	clip: rect(350px, 85px, 366px, 69px);
	left: -39px;
	top: -328px
}

.gb_f .gb_o .gb_Qc::before {
	left: -194px
}

@media ( min-resolution :1.25dppx) , ( -webkit-min-device-pixel-ratio :1.25) , (
		min-device-pixel-ratio :1.25) {
	.gb_f .gb_Qc::before {
		clip: rect(886px, 480px, 918px, 448px)
	}
	.gb_f .gb_Rc::before {
		clip: rect(700px, 170px, 732px, 138px)
	}
}

.gb_f .gb_2,.gb_f .gbii,.gb_f .gbip {
	background-image: none;
	overflow: hidden;
	position: relative
}

.gb_f .gb_2::before {
	content: url('//ssl.gstatic.com/gb/images/v1_ab71ffe9.png');
	position: absolute
}

@media ( min-resolution :1.25dppx) , ( -webkit-min-device-pixel-ratio :1.25) , (
		min-device-pixel-ratio :1.25) {
	.gb_f .gb_2::before {
		content: url('//ssl.gstatic.com/gb/images/v2_3e7d2e27.png');
		-webkit-transform: scale(.5);
		transform: scale(.5);
		-webkit-transform-origin: 0 0;
		transform-origin: 0 0
	}
}

.gb_M a:focus {
	outline: 1px dotted #fff !important
}

sentinel {
	
}

#gbq .gbgt-hvr,#gbq .gbgt:focus {
	background-color: transparent;
	background-image: none
}

.gbqfh#gbq1 {
	display: none
}

.gbxx {
	display: none !important
}

#gbq {
	line-height: normal;
	position: relative;
	top: 0px;
	white-space: nowrap
}

#gbq {
	left: 0;
	width: 100%
}

#gbq2 {
	top: 0px;
	z-index: 986
}

#gbq4 {
	display: inline-block;
	max-height: 29px;
	overflow: hidden;
	position: relative
}

.gbqfh#gbq2 {
	z-index: 985
}

.gbqfh#gbq2 {
	margin: 0;
	margin-left: 0 !important;
	padding-top: 0;
	position: relative;
	top: 310px
}

.gbqfh #gbqf {
	margin: auto;
	min-width: 534px;
	padding: 0 !important
}

.gbqfh #gbqfbw {
	display: none
}

.gbqfh #gbqfbwa {
	display: block
}

.gbqfh #gbqf {
	max-width: 512px;
	min-width: 200px
}

.gbqfh .gbqfqw {
	border-right-width: 1px
}

.gbii {
	background-image: url(//ssl.gstatic.com/gb/images/silhouette_27.png)
}

.gbip {
	background-image: url()
}

.gbii::before {
	content: url(//ssl.gstatic.com/gb/images/silhouette_27.png);
	position: absolute
}

.gbip::before {
	content: url();
	position: absolute
}

@media ( min-resolution :1.25dppx) , ( -o-min-device-pixel-ratio :5/4) , (
		-webkit-min-device-pixel-ratio :1.25) , ( min-device-pixel-ratio
	:1.25) {
	.gbii {
		background-image: url(//ssl.gstatic.com/gb/images/silhouette_27.png)
	}
	.gbii::before {
		content: url(//ssl.gstatic.com/gb/images/silhouette_27.png)
	}
	.gbip {
		background-image: url()
	}
	.gbip::before {
		content: url()
	}
	.gbii::before,.gbip::before {
		-webkit-transform: scale(.5);
		-moz-transform: scale(.5);
		-ms-transform: scale(.5);
		-o-transform: scale(.5);
		transform: scale(.5);
		-webkit-transform-origin: 0 0;
		-moz-transform-origin: 0 0;
		-ms-transform-origin: 0 0;
		-o-transform-origin: 0 0;
		transform-origin: 0 0
	}
}
</style>
<style type="text/css">/* cyrillic-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Thin'), local('Roboto-Thin'),
		url(//fonts.gstatic.com/s/roboto/v15/ty9dfvLAziwdqQ2dHoyjphTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Thin'), local('Roboto-Thin'),
		url(//fonts.gstatic.com/s/roboto/v15/frNV30OaYdlFRtH2VnZZdhTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Thin'), local('Roboto-Thin'),
		url(//fonts.gstatic.com/s/roboto/v15/gwVJDERN2Amz39wrSoZ7FxTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Thin'), local('Roboto-Thin'),
		url(//fonts.gstatic.com/s/roboto/v15/aZMswpodYeVhtRvuABJWvBTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Thin'), local('Roboto-Thin'),
		url(//fonts.gstatic.com/s/roboto/v15/VvXUGKZXbHtX_S_VCTLpGhTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0102-0103, U+1EA0-1EF1, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Thin'), local('Roboto-Thin'),
		url(//fonts.gstatic.com/s/roboto/v15/e7MeVAyvogMqFwwl61PKhBTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Thin'), local('Roboto-Thin'),
		url(//fonts.gstatic.com/s/roboto/v15/2tsd397wLxj96qwHyNIkxPesZW2xOQ-xsNqO47m55DA.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Light'), local('Roboto-Light'),
		url(//fonts.gstatic.com/s/roboto/v15/0eC6fl06luXEYWpBSJvXCBJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Light'), local('Roboto-Light'),
		url(//fonts.gstatic.com/s/roboto/v15/Fl4y0QdOxyyTHEGMXX8kcRJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Light'), local('Roboto-Light'),
		url(//fonts.gstatic.com/s/roboto/v15/-L14Jk06m6pUHB-5mXQQnRJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Light'), local('Roboto-Light'),
		url(//fonts.gstatic.com/s/roboto/v15/I3S1wsgSg9YCurV6PUkTORJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Light'), local('Roboto-Light'),
		url(//fonts.gstatic.com/s/roboto/v15/NYDWBdD4gIq26G5XYbHsFBJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0102-0103, U+1EA0-1EF1, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Light'), local('Roboto-Light'),
		url(//fonts.gstatic.com/s/roboto/v15/Pru33qjShpZSmG3z6VYwnRJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Light'), local('Roboto-Light'),
		url(//fonts.gstatic.com/s/roboto/v15/Hgo13k-tfSpn0qi1SFdUfVtXRa8TVwTICgirnJhmVJw.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Regular'), local('Roboto-Regular'),
		url(//fonts.gstatic.com/s/roboto/v15/ek4gzZ-GeXAPcSbHtCeQI_esZW2xOQ-xsNqO47m55DA.woff2)
		format('woff2');
	unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Regular'), local('Roboto-Regular'),
		url(//fonts.gstatic.com/s/roboto/v15/mErvLBYg_cXG3rLvUsKT_fesZW2xOQ-xsNqO47m55DA.woff2)
		format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Regular'), local('Roboto-Regular'),
		url(//fonts.gstatic.com/s/roboto/v15/-2n2p-_Y08sg57CNWQfKNvesZW2xOQ-xsNqO47m55DA.woff2)
		format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Regular'), local('Roboto-Regular'),
		url(//fonts.gstatic.com/s/roboto/v15/u0TOpm082MNkS5K0Q4rhqvesZW2xOQ-xsNqO47m55DA.woff2)
		format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Regular'), local('Roboto-Regular'),
		url(//fonts.gstatic.com/s/roboto/v15/NdF9MtnOpLzo-noMoG0miPesZW2xOQ-xsNqO47m55DA.woff2)
		format('woff2');
	unicode-range: U+0102-0103, U+1EA0-1EF1, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Regular'), local('Roboto-Regular'),
		url(//fonts.gstatic.com/s/roboto/v15/Fcx7Wwv8OzT71A3E1XOAjvesZW2xOQ-xsNqO47m55DA.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Regular'), local('Roboto-Regular'),
		url(//fonts.gstatic.com/s/roboto/v15/CWB0XYA8bzo0kSThX0UTuA.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: local('Roboto Medium'), local('Roboto-Medium'),
		url(//fonts.gstatic.com/s/roboto/v15/ZLqKeelYbATG60EpZBSDyxJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: local('Roboto Medium'), local('Roboto-Medium'),
		url(//fonts.gstatic.com/s/roboto/v15/oHi30kwQWvpCWqAhzHcCSBJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: local('Roboto Medium'), local('Roboto-Medium'),
		url(//fonts.gstatic.com/s/roboto/v15/rGvHdJnr2l75qb0YND9NyBJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: local('Roboto Medium'), local('Roboto-Medium'),
		url(//fonts.gstatic.com/s/roboto/v15/mx9Uck6uB63VIKFYnEMXrRJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: local('Roboto Medium'), local('Roboto-Medium'),
		url(//fonts.gstatic.com/s/roboto/v15/mbmhprMH69Zi6eEPBYVFhRJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0102-0103, U+1EA0-1EF1, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: local('Roboto Medium'), local('Roboto-Medium'),
		url(//fonts.gstatic.com/s/roboto/v15/oOeFwZNlrTefzLYmlVV1UBJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: local('Roboto Medium'), local('Roboto-Medium'),
		url(//fonts.gstatic.com/s/roboto/v15/RxZJdnzeo3R5zSexge8UUVtXRa8TVwTICgirnJhmVJw.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Bold'), local('Roboto-Bold'),
		url(//fonts.gstatic.com/s/roboto/v15/77FXFjRbGzN4aCrSFhlh3hJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Bold'), local('Roboto-Bold'),
		url(//fonts.gstatic.com/s/roboto/v15/isZ-wbCXNKAbnjo6_TwHThJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Bold'), local('Roboto-Bold'),
		url(//fonts.gstatic.com/s/roboto/v15/UX6i4JxQDm3fVTc1CPuwqhJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Bold'), local('Roboto-Bold'),
		url(//fonts.gstatic.com/s/roboto/v15/jSN2CGVDbcVyCnfJfjSdfBJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Bold'), local('Roboto-Bold'),
		url(//fonts.gstatic.com/s/roboto/v15/PwZc-YbIL414wB9rB1IAPRJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0102-0103, U+1EA0-1EF1, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Bold'), local('Roboto-Bold'),
		url(//fonts.gstatic.com/s/roboto/v15/97uahxiqZRoncBaCEI3aWxJtnKITppOI_IvcXXDNrsc.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Bold'), local('Roboto-Bold'),
		url(//fonts.gstatic.com/s/roboto/v15/d-6IYplOFocCacKzxwXSOFtXRa8TVwTICgirnJhmVJw.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 100;
	src: local('Roboto Thin Italic'), local('Roboto-ThinItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/1DbO0RvWEevroPvEzA5briEAvth_LlrfE80CYdSH47w.woff2)
		format('woff2');
	unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 100;
	src: local('Roboto Thin Italic'), local('Roboto-ThinItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/5z9jpDJQqVE5bmkRqplJfiEAvth_LlrfE80CYdSH47w.woff2)
		format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 100;
	src: local('Roboto Thin Italic'), local('Roboto-ThinItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/cueeGLWq_s1uoQgOf76TFiEAvth_LlrfE80CYdSH47w.woff2)
		format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 100;
	src: local('Roboto Thin Italic'), local('Roboto-ThinItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/yTs8gw1HdasCzJ-B_iUwzSEAvth_LlrfE80CYdSH47w.woff2)
		format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 100;
	src: local('Roboto Thin Italic'), local('Roboto-ThinItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/gLfmBATgABwy0zMVv-qqhiEAvth_LlrfE80CYdSH47w.woff2)
		format('woff2');
	unicode-range: U+0102-0103, U+1EA0-1EF1, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 100;
	src: local('Roboto Thin Italic'), local('Roboto-ThinItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/dzxs_VxZUhdM2mEBkNa8siEAvth_LlrfE80CYdSH47w.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 100;
	src: local('Roboto Thin Italic'), local('Roboto-ThinItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/12mE4jfMSBTmg-81EiS-Yfk_vArhqVIZ0nv9q090hN8.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 300;
	src: local('Roboto Light Italic'), local('Roboto-LightItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/7m8l7TlFO-S3VkhHuR0atzTOQ_MqJVwkKsUn0wKzc2I.woff2)
		format('woff2');
	unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 300;
	src: local('Roboto Light Italic'), local('Roboto-LightItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/7m8l7TlFO-S3VkhHuR0atzUj_cnvWIuuBMVgbX098Mw.woff2)
		format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 300;
	src: local('Roboto Light Italic'), local('Roboto-LightItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/7m8l7TlFO-S3VkhHuR0at0bcKLIaa1LC45dFaAfauRA.woff2)
		format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 300;
	src: local('Roboto Light Italic'), local('Roboto-LightItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/7m8l7TlFO-S3VkhHuR0at2o_sUJ8uO4YLWRInS22T3Y.woff2)
		format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 300;
	src: local('Roboto Light Italic'), local('Roboto-LightItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/7m8l7TlFO-S3VkhHuR0at76up8jxqWt8HVA3mDhkV_0.woff2)
		format('woff2');
	unicode-range: U+0102-0103, U+1EA0-1EF1, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 300;
	src: local('Roboto Light Italic'), local('Roboto-LightItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/7m8l7TlFO-S3VkhHuR0atyYE0-AqJ3nfInTTiDXDjU4.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 300;
	src: local('Roboto Light Italic'), local('Roboto-LightItalic'),
		url(//fonts.gstatic.com/s/roboto/v15/7m8l7TlFO-S3VkhHuR0at44P5ICox8Kq3LLUNMylGO4.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 400;
	src: local('Roboto Italic'), local('Roboto-Italic'),
		url(//fonts.gstatic.com/s/roboto/v15/WxrXJa0C3KdtC7lMafG4dRTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 400;
	src: local('Roboto Italic'), local('Roboto-Italic'),
		url(//fonts.gstatic.com/s/roboto/v15/OpXUqTo0UgQQhGj_SFdLWBTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 400;
	src: local('Roboto Italic'), local('Roboto-Italic'),
		url(//fonts.gstatic.com/s/roboto/v15/1hZf02POANh32k2VkgEoUBTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 400;
	src: local('Roboto Italic'), local('Roboto-Italic'),
		url(//fonts.gstatic.com/s/roboto/v15/cDKhRaXnQTOVbaoxwdOr9xTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 400;
	src: local('Roboto Italic'), local('Roboto-Italic'),
		url(//fonts.gstatic.com/s/roboto/v15/K23cxWVTrIFD6DJsEVi07RTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0102-0103, U+1EA0-1EF1, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 400;
	src: local('Roboto Italic'), local('Roboto-Italic'),
		url(//fonts.gstatic.com/s/roboto/v15/vSzulfKSK0LLjjfeaxcREhTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 400;
	src: local('Roboto Italic'), local('Roboto-Italic'),
		url(//fonts.gstatic.com/s/roboto/v15/vPcynSL0qHq_6dX7lKVByfesZW2xOQ-xsNqO47m55DA.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Slab Thin'), local('RobotoSlab-Thin'),
		url(//fonts.gstatic.com/s/robotoslab/v6/MEz38VLIFL-t46JUtkIEgHcHpeTo4zNkUa02-F9r1VE.woff2)
		format('woff2');
	unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Slab Thin'), local('RobotoSlab-Thin'),
		url(//fonts.gstatic.com/s/robotoslab/v6/MEz38VLIFL-t46JUtkIEgJHDipyzW3oxlM2ogtcJE3o.woff2)
		format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Slab Thin'), local('RobotoSlab-Thin'),
		url(//fonts.gstatic.com/s/robotoslab/v6/MEz38VLIFL-t46JUtkIEgArQu7msDD1BXoJWeH_ykbQ.woff2)
		format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Slab Thin'), local('RobotoSlab-Thin'),
		url(//fonts.gstatic.com/s/robotoslab/v6/MEz38VLIFL-t46JUtkIEgD_9YuvR6BbpvcNvv-P7CJ0.woff2)
		format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Slab Thin'), local('RobotoSlab-Thin'),
		url(//fonts.gstatic.com/s/robotoslab/v6/MEz38VLIFL-t46JUtkIEgCGQb_MN5JCwpvZt9ko0I5U.woff2)
		format('woff2');
	unicode-range: U+0102-0103, U+1EA0-1EF1, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Slab Thin'), local('RobotoSlab-Thin'),
		url(//fonts.gstatic.com/s/robotoslab/v6/MEz38VLIFL-t46JUtkIEgLr6l97bd_cX8oZCLqDvOn0.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 100;
	src: local('Roboto Slab Thin'), local('RobotoSlab-Thin'),
		url(//fonts.gstatic.com/s/robotoslab/v6/MEz38VLIFL-t46JUtkIEgNFPPhm6yPYYGACxOp9LMJ4.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Slab Light'), local('RobotoSlab-Light'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJRgVThLs8Y7ETJzDCYFCSLE.woff2)
		format('woff2');
	unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Slab Light'), local('RobotoSlab-Light'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJZiMaisvaUVUsYyVzOmndek.woff2)
		format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Slab Light'), local('RobotoSlab-Light'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJbBAWGjcah5Ky0jbCgIwDB8.woff2)
		format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Slab Light'), local('RobotoSlab-Light'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJf14vlcfyPYlAcQy2UfDRm4.woff2)
		format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Slab Light'), local('RobotoSlab-Light'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJafJul7RR1X4poJgi27uS4w.woff2)
		format('woff2');
	unicode-range: U+0102-0103, U+1EA0-1EF1, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Slab Light'), local('RobotoSlab-Light'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJavyPXdneeGd26m9EmFSSWg.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 300;
	src: local('Roboto Slab Light'), local('RobotoSlab-Light'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJUo2lTMeWA_kmIyWrkNCwPc.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Slab Regular'), local('RobotoSlab-Regular'),
		url(//fonts.gstatic.com/s/robotoslab/v6/y7lebkjgREBJK96VQi37ZjTOQ_MqJVwkKsUn0wKzc2I.woff2)
		format('woff2');
	unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Slab Regular'), local('RobotoSlab-Regular'),
		url(//fonts.gstatic.com/s/robotoslab/v6/y7lebkjgREBJK96VQi37ZjUj_cnvWIuuBMVgbX098Mw.woff2)
		format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Slab Regular'), local('RobotoSlab-Regular'),
		url(//fonts.gstatic.com/s/robotoslab/v6/y7lebkjgREBJK96VQi37ZkbcKLIaa1LC45dFaAfauRA.woff2)
		format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Slab Regular'), local('RobotoSlab-Regular'),
		url(//fonts.gstatic.com/s/robotoslab/v6/y7lebkjgREBJK96VQi37Zmo_sUJ8uO4YLWRInS22T3Y.woff2)
		format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Slab Regular'), local('RobotoSlab-Regular'),
		url(//fonts.gstatic.com/s/robotoslab/v6/y7lebkjgREBJK96VQi37Zr6up8jxqWt8HVA3mDhkV_0.woff2)
		format('woff2');
	unicode-range: U+0102-0103, U+1EA0-1EF1, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Slab Regular'), local('RobotoSlab-Regular'),
		url(//fonts.gstatic.com/s/robotoslab/v6/y7lebkjgREBJK96VQi37ZiYE0-AqJ3nfInTTiDXDjU4.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 400;
	src: local('Roboto Slab Regular'), local('RobotoSlab-Regular'),
		url(//fonts.gstatic.com/s/robotoslab/v6/y7lebkjgREBJK96VQi37Zo4P5ICox8Kq3LLUNMylGO4.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Slab Bold'), local('RobotoSlab-Bold'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJZ6iIh_FvlUHQwED9Yt5Kbw.woff2)
		format('woff2');
	unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Slab Bold'), local('RobotoSlab-Bold'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJS_vZmeiCMnoWNN9rHBYaTc.woff2)
		format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Slab Bold'), local('RobotoSlab-Bold'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJSFaMxiho_5XQnyRZzQsrZs.woff2)
		format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Slab Bold'), local('RobotoSlab-Bold'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJQalQocB-__pDVGhF3uS2Ks.woff2)
		format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Slab Bold'), local('RobotoSlab-Bold'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJWhQUTDJGru-0vvUpABgH8I.woff2)
		format('woff2');
	unicode-range: U+0102-0103, U+1EA0-1EF1, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Slab Bold'), local('RobotoSlab-Bold'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJejkDdvhIIFj_YMdgqpnSB0.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto Slab';
	font-style: normal;
	font-weight: 700;
	src: local('Roboto Slab Bold'), local('RobotoSlab-Bold'),
		url(//fonts.gstatic.com/s/robotoslab/v6/dazS1PrQQuCxC3iOAJFEJYlIZu-HDpmDIZMigmsroc4.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}
</style>
<style type="text/css">
.DLLROO-a-a {
	background-color: transparent
}

.DLLROO-a-a>.DLLROO-a-d {
	position: fixed;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	background: #fff;
	opacity: .5;
	-ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=50);
	filter: alpha(opacity = 50);
	z-index: 99990
}

.DLLROO-a-a.DLLROO-a-c>.DLLROO-a-d {
	background: #fff
		url(https://www.gstatic.com/commerce/inapp/images/widgets/loading.gif)
		center center no-repeat
}

.DLLROO-a-a>iframe {
	position: fixed;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	border: 0;
	z-index: 2147483647;
	background-color: transparent
}

.DLLROO-a-a.DLLROO-a-c>iframe {
	visibility: hidden
}

.DLLROO-a-a.DLLROO-a-e>iframe {
	position: absolute
}

.DLLROO-a-b {
	display: none
}
</style>
<style type="text/css">
#gb119 .gb_va::before {
	left: -138px;
	top: -245px
}
</style>