<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<s:iterator value="apkInfos">
	<div class="card no-rationale square-cover apps medium-minus"
		data-docid="${packageName}">
		<div class="card-content id-track-click id-track-impression">
			<a class="card-click-target" href="" onclick="detail()"
				aria-hidden="true" tabindex="-1"></a>
			<div class="cover">
				<div class="cover-image-container">
					<div class="cover-outer-align">
						<div class="cover-inner-align">
							<img alt="${title}" class="cover-image" src="${ldResIconPath}"
								aria-hidden="true">
						</div>
					</div>
				</div>
				<a class="card-click-target" href="${ctx}/detail.shtml?id=${packageName}"
					aria-hidden="true" tabindex="-1"> <span
					class="movies preordered-overlay-container id-preordered-overlay-container"
					style="display:none"> <span class="preordered-label"></span>
				</span> <span class="preview-overlay-container"></span>
				</a>
			</div>
			<div class="details">
				<a class="card-click-target" href="#" aria-hidden="true"
					tabindex="-1" onclick="detail()"></a>
				<h2>
					<a class="title" href="#" title="${title}" onclick="detail()">
						${title} <span class="paragraph-end"></span>
					</a>
				</h2>
				<div class="subtitle-container">
					<a class="subtitle" href=" " title="Stocard GmbH">Stocard GmbH</a>
				</div>
				<div class="description">
					清理你的钱包。所有的奖励卡在一个应用程序。现在就来试试！ <span class="paragraph-end"></span> <a
						class="card-click-target" href="#" aria-hidden="true"
						tabindex="-1" onclick="detail()"> </a>
				</div>
			</div>
			<div class="reason-set">
				<span class="stars-container"> <a href="#" tabindex="-1">
						<div class="reason-set-star-rating">
							<div class="tiny-star star-rating-non-editable-container"
								aria-label="评了颗星（最高5颗星）">
								<div class="current-rating" style="width: 88.37366104125977%;"></div>
							</div>
						</div>
				</a> <span class="price-container"> <span class="paragraph-end"></span>
						<span class="apps is-price-tag buy-button-container">
							<div class="pon" style="display:none">1</div>
							<button class="price buy id-track-click">
								<span class="display-price"> ${currencyCode} &nbsp;
									${formattedAmount} </span>
							</button>
					</span>
				</span>
				</span>
			</div>
		</div>
	</div>
</s:iterator>