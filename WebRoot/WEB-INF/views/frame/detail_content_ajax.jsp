<%@ page language="java" import="java.util.*,com.google.play.model.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<div class="cluster-heading" style="width: 720px;margin-left: 220px;">
	<div class="details-wrapper">
		<div class="details-info">
			<div class="hidden-info">
				<p>
					<s:property value="#request.apkInfo.packageName" />
				</p>
			</div>
			<div class="info-container">
				<div class="cover-container">
					<img class="cover-image"
						src="<s:property value="#request.apkInfo.hdResIconPath"/>"
						alt="<s:property value="#request.apkInfo.title"/>"
						aria-hidden="true" itemprop="image">
				</div>
				<div class="info-box">
					<div class="info-box-top">
						<div class="document-title">
							<h4>
								<s:property value="#request.apkInfo.title" />
							</h4>
						</div>
						<div class="document-subtitles">
							<s:property value="#request.apkInfo.creator" />
							-
							<s:property value="#request.apkInfo.uploadDate" />
						</div>
						<div class="details-actions">
							<%
								ApkInfo apkInfo = (ApkInfo) request.getAttribute("apkInfo");
								if (apkInfo.getDownloadPath() == null) {
									out.println("<p>正在进行下载......</p>");
								} else {
									out.println("<a class='see-more play-button small id-track-click apps id-responsive-see-more'>Download</a>");
									out.println("<a class='see-more play-button small id-track-click apps id-responsive-see-more' href='firstPage.jsp'>Go to Google Play</a>");
								}
							%>
							<div class="download_url" style="display: none;"><a href="${apkURL}">${apkURL}</a></div>
							<hr noshade="noshade" color="#000000">
						</div>
					</div>
					<div class="info-box-buttom">
						<div class="reason-set-star-rating">
							<div class="tiny-star star-rating-non-editable-container"
								aria-label="评了颗星（最高5颗星）">
								<div class="current-rating" style="width: 88.37366104125977%;">
								</div>
							</div>
						</div>
						<div class="ratings-count">
							(
							<s:property value="#request.apkInfo.ratingCount" />
							)
						</div>
					</div>
				</div>

			</div>
			<div class="description">
				<h1>Description</h1>
				<hr noshade="noshade" color="#000000">
				<div class="text">
					<b><s:property value="#request.apkInfo.description" /></b>
				</div>
			</div>
			<div class="add-info">
				<hr noshade="noshade" color="#000000">
				<h1>Additional information</h1>
				<div class="details-section-contents">
					<div class="meta-info">
						<div class="title">Updated</div>
						<div class="content">
							<s:property value="#request.apkInfo.uploadDate" />
						</div>
					</div>
					<div class="meta-info">
						<div class="title">Size</div>
						<div class="content">
							<s:property value="#request.apkInfo.installationSize" />
						</div>
					</div>
					<div class="meta-info">
						<div class="title">Current Version</div>
						<div class="content">
							<s:property value="#request.apkInfo.versionString" />
						</div>
					</div>
					<div class="meta-info">
						<div class="title">Developer</div>
						<div class="content">
							<s:property value="#request.apkInfo.developerEmail" />
						</div>
					</div>
					<div class="meta-info">
						<div class="title">Website</div>
						<div class="content">
							<s:property value="#request.apkInfo.developerWebsite" />
						</div>
					</div>
				</div>

			</div>
		</div>

	</div>
</div>
<div class="secondary-content">
	<div class="details-wrapper" style="opacity: 1;min-width: 330px;">
		<div class="details-section recommendation"
			style="mini-width: 330px;background-color: #e5e5e5">
			<div class="details-section-contents">
				<div class="rec-cluster">
					<h2 class="heading">
						<a class="title-link id-track-click" href=" "> 同类内容</a> <a
							class="see-more play-button small id-track-click apps id-responsive-see-more"
							href=" " style="margin-top: 0;bottom: 0px">查看更多</a>
					</h2>
					<div class="cards">
						<div class="card no-rationale square-cover apps medium-minus"
							data-docid="">
							<div class="card-content id-track-click id-track-impression">
								<a class="card-click-target" href="" onclick="detail()"
									aria-hidden="true" tabindex="-1"></a>
								<div class="cover" style="display: inline-block;">
									<div class="cover-image-container">
										<div class="cover-outer-align">
											<div class="cover-inner-align">
												<img alt="<s:property value="title"/>" class="cover-image"
													src="<s:property value="ldResIconPath"/>"
													aria-hidden="true">
											</div>
										</div>
									</div>
									<a class="card-click-target"
										href="showApk.shtml?packageName=<s:property value="packageName"/>"
										aria-hidden="true" tabindex="-1"> <span
										class="movies preordered-overlay-container id-preordered-overlay-container"
										style="display:none"> <span class="preordered-label"></span>
									</span> <span class="preview-overlay-container"></span>
									</a>
								</div>
								<div class="details">
									<a class="card-click-target" href="#" aria-hidden="true"
										tabindex="-1" onclick="detail()"></a> <a class="title"
										href="#" title="<s:property value="title"/>"
										onclick="detail()">Need for Speed™ Most Wanted <span
										class="paragraph-end"></span>
									</a>
									<div class="subtitle-container">
										<a class="subtitle" href=" " title="Stocard GmbH">Stocard
											GmbH</a>

									</div>
									<div class="description">
										扮演英雄 Barry Steakfries，乘坐酷爆了的喷射飞行器来进行一场惊心动魄的冒险！ <span
											class="paragraph-end"></span> <a class="card-click-target"
											href="#" aria-hidden="true" tabindex="-1" onclick="detail()"></a>
									</div>
								</div>
								<div class="reason-set">
									<span class="stars-container"> <a href="#" tabindex="-1">
											<div class="reason-set-star-rating">
												<div class="tiny-star star-rating-non-editable-container"
													aria-label="评了颗星（最高5颗星）">
													<div class="current-rating"
														style="width: 88.37366104125977%;"></div>

												</div>
											</div>
									</a><span class="price-container"> <span
											class="paragraph-end"></span> <span
											class="apps is-price-tag buy-button-container">
												<div class="pon" style="display:none">1</div>
												<button class="price buy id-track-click">
													<span class="display-price"><s:property
															value="currencyCode" /> <s:property
															value="formattedAmount" /></span>
												</button>
										</span>
									</span></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>