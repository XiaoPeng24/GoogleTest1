<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<div id="cat_code" data="${cat}" style="display: none"></div>
<div class="avtion-bar-container" role="navigation" jstcache="1">
	<div class="action-bar-inner" jstcache="0">
		<div class="action-bar apps" jsan="7.action-bar,7.apps" jstcache="2">
			<div jsinstance="0" class="action-bar-item"
				jsan="t-rwatkwvxdCk,7.action-bar-item" jstcache="3">
				<div jstcache="8" style="display:none"></div>
				<div jstcache="9" style="display:none"></div>
				<button jstcache="10" style="display:none"></button>
				<div jstcache="11" class="action-bar-dropdown-container">
					<div class="action-bar-dropdown">
						<button aria-controls="action-dropdown-children-类别"
							aria-owns="action-dropdown-children-类别"
							id="action-dropdown-parent-类别" aria-expanded="false"
							aria-haspopup="true" jstcache="17"
							class="action-bar-dropdown-top"
							jsan="7.action-bar-dropdown-top,0.aria-controls,0.aria-owns,0.id,0.aria-expanded,0.aria-haspopup">
							<span jstcache="18" class="title" jsan="7.title">类别</span> 
							<span class="dropdown-icon"></span>
						</button>
					</div>
					<div class="name-edit-toggle" style="display:none">
						<input value="类别" maxlength="50" size="18" type="text"
							jstcache="19" class="edit-field-text">
					</div>
					<div aria-labelledby="action-dropdown-parent-类别"
						id="action-dropdown-children-类别" jstcache="20"
						class="action-bar-dropdown-children-container"
						style="display: none;">
						<div jstcache="21" class="dropdown-submenu"
							jsan="7.dropdown-submenu">
							<ul jstcache="22">
								<li jstcache="23" jsinstance="0"
									class="action-dropdown-outer-list-item"
									jsan="7.action-dropdown-outer-list-item">
									<ul jstcache="24" class="submenu-item-wrapper">
										<li jstcache="30" class="parent-submenu-link-wrapper"
											style="display:none">
											<a target="_blank" jstcache="31" jsan="0.target"></a></li>
										<li jstcache="32" class="submenu-divider" style="display:none"></li>
										<li jstcache="33" jsinstance="0" class="child-submenu-link-wrapper">
											<a data="FINANCE" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title" 
												href="${ctx}/category.shtml?cat=FINANCE">财务</a>
										</li>
										<li jstcache="33" jsinstance="1" class="child-submenu-link-wrapper">
											<a data="COMICS" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=COMICS">动漫</a>
										</li>
										<li jstcache="33" jsinstance="2"
											class="child-submenu-link-wrapper">
											<a data="APP_WALLPAPER" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=APP_WALLPAPER">动态壁纸</a>
										</li>
										<li jstcache="33" jsinstance="3" class="child-submenu-link-wrapper">
											<a data="PERSONALIZATION" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=PERSONALIZATION">个性化</a>
										</li>
										<li jstcache="33" jsinstance="4" class="child-submenu-link-wrapper">
											<a data="TOOLS" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=TOOLS">工具</a>
										</li>
										<li jstcache="33" jsinstance="5" class="child-submenu-link-wrapper">
											<a data="BUSINESS" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=BUSINESS">公司</a>
										</li>
										<li jstcache="33" jsinstance="6" class="child-submenu-link-wrapper">
											<a data="SHOPPING" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=SHOPPING">购物</a>
										</li>
										<li jstcache="33" jsinstance="7" class="child-submenu-link-wrapper">
											<a data="HEALTH_AND_FITNESS" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=HEALTH_AND_FITNESS">健康与健身</a>
										</li>
										<li jstcache="33" jsinstance="8" class="child-submenu-link-wrapper">
											<a data="TRANSPORTATION" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=TRANSPORTATION">交通运输</a></li>
										<li jstcache="33" jsinstance="9" class="child-submenu-link-wrapper">
											<a title="EDUCATION" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=EDUCATION">教育</a></li>
										<li jstcache="33" jsinstance="10" class="child-submenu-link-wrapper">
											<a data="TRAVEL_AND_LOCAL" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=TRAVEL_AND_LOCAL">旅游与本地出行</a>
										</li>
										<li jstcache="33" jsinstance="11" class="child-submenu-link-wrapper">
											<a data="MEDIA_AND_VIDEO" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=MEDIA_AND_VIDEO">媒体与视频</a>
										</li>
										<li jstcache="33" jsinstance="12" class="child-submenu-link-wrapper">
											<a data="LIBRARIES_AND_DEMO" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=LIBRARIES_AND_DEMO">软件与演示</a>
										</li>
										<li jstcache="33" jsinstance="13"class="child-submenu-link-wrapper">
											<a data="SOCIAL" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=SOCIAL">社交</a>
										</li>
										<li jstcache="33" jsinstance="14" class="child-submenu-link-wrapper">
											<a data="PHOTOGRAPHY" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=PHOTOGRAPHY">摄影</a>
										</li>
										<li jstcache="33" jsinstance="15" class="child-submenu-link-wrapper">
											<a data="LIFESTYLE" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=LIFESTYLE">生活时尚</a>
										</li>
										<li jstcache="33" jsinstance="16" class="child-submenu-link-wrapper">
											<a data="SPORTS" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=SPORTS">体育</a>
										</li>
										<li jstcache="33" jsinstance="17" class="child-submenu-link-wrapper">
											<a data="WEATHER" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=WEATHER">天气</a>
										</li>
										<li jstcache="33" jsinstance="18" class="child-submenu-link-wrapper">
											<a data="COMMUNICATION" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=COMMUNICATION">通讯</a>
										</li>
										<li jstcache="33" jsinstance="19" class="child-submenu-link-wrapper">
											<a data="BOOKS_AND_REFERENCE" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=BOOKS_AND_REFERENCE">图书与工具书</a>
										</li>
										<li jstcache="33" jsinstance="20" class="child-submenu-link-wrapper">
											<a data="APP_WIDGETS" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=APP_WIDGETS">小部件</a>
										</li>
										<li jstcache="33" jsinstance="21" class="child-submenu-link-wrapper">
											<a data="PRODUCTIVITY" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=PRODUCTIVITY">效率</a>
										</li>
										<li jstcache="33" jsinstance="22" class="child-submenu-link-wrapper">
											<a data="NEWS_AND_MAGAZINES" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=NEWS_AND_MAGAZINES">新闻杂志</a>
										</li>
										<li jstcache="33" jsinstance="23" class="child-submenu-link-wrapper">
											<a data="MEDICAL" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=MEDICAL">医药</a>
										</li>
										<li jstcache="33" jsinstance="24" class="child-submenu-link-wrapper">
											<a data="MUSIC_AND_AUDIO" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=MUSIC_AND_AUDIO">音乐与音频</a>
										</li>
										<li jstcache="33" jsinstance="*25" class="child-submenu-link-wrapper">
											<a data="ENTERTAINMENT" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=ENTERTAINMENT">娱乐 </a>
										</li>
									</ul>
									<div jstcache="25" style="display:none"></div>
								</li>
								<li jstcache="23" jsinstance="1"
									class="action-dropdown-outer-list-item"
									jsan="7.action-dropdown-outer-list-item">
									<ul jstcache="24" class="submenu-item-wrapper">
										<li jstcache="30" class="parent-submenu-link-wrapper">
											<a data="GAME" jstcache="31" class="parent-submenu-link"
												jsan="7.parent-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME">游戏</a>
										</li>
										<li jstcache="32" class="submenu-divider"></li>
										<li jstcache="33" jsinstance="0" class="child-submenu-link-wrapper">
											<a data="GAME_STRATEGY" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_STRATEGY">策略</a>
										</li>
										<li jstcache="33" jsinstance="1" class="child-submenu-link-wrapper">
											<a data="GAME_ACTION" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_ACTION">动作</a>
										</li>
										<li jstcache="33" jsinstance="2" class="child-submenu-link-wrapper">
											<a data="GAME_CASINO" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_CASINO">赌场</a>
										</li>
										<li jstcache="33" jsinstance="3" class="child-submenu-link-wrapper">
											<a data="GAME_ROLE_PLAYING" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_ROLE_PLAYING">角色扮演</a>
										</li>
										<li jstcache="33" jsinstance="4"
											class="child-submenu-link-wrapper">
											<a data="GAME_EDUCATIONAL" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_EDUCATIONAL">教育</a>
										</li>
										<li jstcache="33" jsinstance="5" class="child-submenu-link-wrapper">
											<a data="GAME_ARCADE" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_ARCADE">街机</a>
										</li>
										<li jstcache="33" jsinstance="6" class="child-submenu-link-wrapper">
											<a data="GAME_RACING" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_RACING">竞速</a>
										</li>
										<li jstcache="33" jsinstance="7" class="child-submenu-link-wrapper">
											<a data="GAME_CARD" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_CARD">卡牌</a>
										</li>
										<li jstcache="33" jsinstance="8" class="child-submenu-link-wrapper">
											<a data="GAME_ADVENTURE" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_ADVENTURE">冒险</a>
										</li>
										<li jstcache="33" jsinstance="9" class="child-submenu-link-wrapper">
											<a data="GAME_SIMULATION" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_SIMULATION">模拟</a>
										</li>
										<li jstcache="33" jsinstance="10" class="child-submenu-link-wrapper">
											<a data="GAME_SPORTS" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_SPORTS">体育</a>
										</li>
										<li jstcache="33" jsinstance="11" class="child-submenu-link-wrapper">
											<a data="GAME_WORD" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_WORD">文字</a>
										</li>
										<li jstcache="33" jsinstance="12"class="child-submenu-link-wrapper">
											<a data="GAME_CASUAL" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_CASUAL">休闲</a>
										</li>
										<li jstcache="33" jsinstance="13" class="child-submenu-link-wrapper">
											<a data="GAME_PUZZLE" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_PUZZLE">益智</a>
										</li>
										<li jstcache="33" jsinstance="14" class="child-submenu-link-wrapper">
											<a data="GAME_MUSIC" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_MUSIC">音乐</a>
										</li>
										<li jstcache="33" jsinstance="15" class="child-submenu-link-wrapper">
											<a data="GAME_TRIVIA" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_TRIVIA">知识问答</a>
										</li>
										<li jstcache="33" jsinstance="*16" class="child-submenu-link-wrapper">
											<a data="GAME_BOARD" jstcache="34" class="child-submenu-link"
												jsan="7.child-submenu-link,8.href,0.title"
												href="${ctx}/category.shtml?cat=GAME_BOARD">桌面和棋类</a>
										</li>
									</ul>
									<div jstcache="25" style="display:none"></div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div jstcache="12" class="action-bar-spacer" style="display:none">
				</div>
				<div jstcache="13" style="display:none"></div>
			</div>
			<div jsinstance="1" class="action-bar-item"
				jsan="t-rwatkwvxdCk,7.action-bar-item" jstcache="3">
				<div jstcache="8" style="display:none"></div>
				<div jstcache="9" style="display:none"></div>
				<button jstcache="10" style="display:none"></button>
				<div jstcache="11" style="display:none"></div>
				<div jstcache="12" class="action-bar-spacer"></div>
				<div jstcache="13" style="display:none"></div>
			</div>
			<div jsinstance="2" class="action-bar-item"
				jsan="t-rwatkwvxdCk,7.action-bar-item" jstcache="3">
				<div jstcache="8" style="display:none"></div>
				<div jstcache="9" class="action-bar-link active"
					jsan="t-3kDrbXyPsIE,7.action-bar-link,7.active">
					<a aria-selected="true" jstcache="39" href="${ctx}/index.shtml"
						class="action-bar-link-title"
						jsan="7.action-bar-link-title,0.aria-selected,8.href">首页</a> 
						<span jstcache="40" class="action-bar-link-title" style="display:none"
							jsan="7.action-bar-link-title"></span>
				</div>
				<button jstcache="10" style="display:none"></button>
				<div jstcache="11" style="display:none"></div>
				<div jstcache="12" class="action-bar-spacer" style="display:none">
				</div>
				<div jstcache="13" style="display:none"></div>
			</div>
			<div jsinstance="3" class="action-bar-item"
				jsan="t-rwatkwvxdCk,7.action-bar-item" jstcache="3">
				<div jstcache="8" style="display:none"></div>
				<div jstcache="9" class="action-bar-link"
					jsan="t-3kDrbXyPsIE,7.action-bar-link">
					<a aria-selected="false" jstcache="39" href="/store/apps/top"
						class="action-bar-link-title"
						jsan="7.action-bar-link-title,0.aria-selected,8.href">排行榜</a> <span
						jstcache="40" class="action-bar-link-title" style="display:none"
						jsan="7.action-bar-link-title"></span>
				</div>
				<button jstcache="10" style="display:none"></button>
				<div jstcache="11" style="display:none"></div>
				<div jstcache="12" class="action-bar-spacer" style="display:none">
				</div>
				<div jstcache="13" style="display:none"></div>
			</div>
			<div jsinstance="4" class="action-bar-item"
				jsan="t-rwatkwvxdCk,7.action-bar-item" jstcache="3">
				<div jstcache="8" style="display:none"></div>
				<div jstcache="9" class="action-bar-link"
					jsan="t-3kDrbXyPsIE,7.action-bar-link">
					<a aria-selected="false" jstcache="39" href="/store/apps/new"
						class="action-bar-link-title"
						jsan="7.action-bar-link-title,0.aria-selected,8.href">新上架</a> <span
						jstcache="40" class="action-bar-link-title" style="display:none"
						jsan="7.action-bar-link-title"></span>
				</div>
				<button jstcache="10" style="display:none"></button>
				<div jstcache="11" style="display:none"></div>
				<div jstcache="12" class="action-bar-spacer" style="display:none">
				</div>
				<div jstcache="13" style="display:none"></div>
			</div>
		</div>
	</div>
</div>