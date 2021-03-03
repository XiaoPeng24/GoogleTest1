<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<div class="gb_Vc gb_oa" id="gb" style="min-width:750px;">
	<div class="gb_5b gb_0c">
		<!-- Logo -->
		<div class="gb_W gb_r" id="gbq1" style="max-width:244px;min-width:244px">
			<div class="gb_X">
				<a class="gb_7a gb_0" href="${ctx}" title="" data-ved="0CBMQxC4"> 
					<span class="gb_3" style="background-image:url('./pic/play_logo_x2.png');
							width:183px;height:39px;background-size:183px 39px">
						<img class="gb_4" src="${ctx}/pic/play_logo_x2.png">
					</span>
				</a>
			</div>
		</div>
		<!-- input -->
		<div class="gb_r gb_Ob" style="width: 800px">
			<div id="gbq">
				<div class="gbt" id="gbq2">
					<div id="gbqfw">
						<form class="gb_gc" target="" action="search.shtml" id="gbqf"
							name="gbqf" method="get" data-ved="0CBQQuyc">
							<fieldset class="gbxx">
								<legend class="gbxx">隐藏字段</legend>
								<div id="gbqffd"></div>
							</fieldset>
							<fieldset class="gbqff gb_r" id="gbqff" style="width: 500px">
								<legend class="gbxx">搜索</legend>
								<div id="gbfwa" class="gbqfwa ">
									<div id="gbqfqw" class="gbqfqw">
										<div id="gbqfaa"></div>
										<div id="gbqfqwb" class="gbqfqwb">
											<input id="gbqfq" class="gbqfif" name="q" type="text"
												autocomplete="off" value="${q}" placeholder="搜索"
												aria-haspopup="true">
										</div>
										<div id="gbqfab"></div>
									</div>
								</div>
							</fieldset>
							<div class="gb_r gb_fc" id="gbqfbw">
								<button class="gbqfb" aria-label="Google 搜索" name=""
									id="gbqfb">
									<span class="gbqfi gb_2"></span>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="gbw"></div>
</div>