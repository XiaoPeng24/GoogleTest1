<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />


<html lang="en">
<head>
<!-- 标题 -->
<tiles:getAsString name="title" />
<!-- 头部信息 -->
<tiles:insertAttribute name="header" />
</head>

<body class="no-focus-outline sidebar-wrapped" jatcache="0"
	data-page-server-cookie="CAESBAgCEAM=" data-uitype="1" style="z00m:1;">

		<!-- 搜索框以及Logo -->
		<tiles:insertAttribute name="search" />
		<div id="gba"></div>
		<div id="offscreen-renderer"
			style="position:fixed;top:-100000px;left:-100000px;opacity:0"></div>

		<div class="wrapper-with-footer" id="wrapper" jstcache="0">
			<!-- 左侧导航 -->
			<tiles:insertAttribute name="asideNav" />

			<div class="butterbar-container">
				<span id="butterbar"></span>
			</div>
			<div class="body-content-loading-overlay" style="display: none;">
				<div class="body-content-loading-spinner"></div>
			</div>
			<div class="id-body-content-beginning" aria-labelledby="main-title"
				tabindex="-1"></div>
			<!-- 类型等 -->
			<tiles:insertAttribute name="actionBar" />

			<div id="body-content" role="main" jstcache="1">
				<div></div>
				<div class="outer-container">
					<div class="inner-container">
						<div class="main-content">
							<div class="browse-page">
								<div class="cluster-container cards-transition-enabled">
									<div id="packageName" data="${id}" style="display: none"></div>
									<div
										class="cluster id-track-impression tight square-cover apps">
										<!-- 内容 -->
										<tiles:insertAttribute name="content"></tiles:insertAttribute>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div></div>
				<div></div>
				<div class="outer-container"></div>
				<div></div>
				<div></div>
				<div class="outer-container"></div>
				<div></div>
			</div>
			<!-- Foot -->
			<tiles:insertAttribute name="foot" />
		</div>

</body>
</html>
