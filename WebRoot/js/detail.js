function detail() {
	var apkId = document.getElementById("apk_id").value;
	$.ajax({url : "http://localhost:8080/GoogleTest1/findApkById.action", // 后台处理程序
				type : 'POST', // 数据发送方式
				dataType : 'json',
				data : {
					"apkId" : apkId
				}, // 接受数据格式
				success : function(apkinfo) {

					$(".browse-page").remove();

					var div_main = $(".main-content");
					var div = document.createElement("div");
					div_main.appendChild(div);

					var style = document.createElement("style");
					style.innerHTML = ".paragraph-end.details-light{background-image:-webkit-gradient(linear,left top,right top,color-stop(0%,rgba(255,255,255,0)),color-stop(100%,rgba(255,255,255,1)));background-image:-webkit-linear-gradient(left,rgba(255,255,255,0),rgba(255,255,255,1));background-image:-moz-linear-gradient(left,rgba(255,255,255,0),rgba(255,255,255,1));background-image:-ms-linear-gradient(left,rgba(255,255,255,0),rgba(255,255,255,1));background-image:-o-linear-gradient(left,rgba(255,255,255,0),rgba(255,255,255,1));background:linear-gradient(to right,rgba(255,255,255,0),rgba(255,255,255,1));filter:progid:DXImageTransform.Microsoft.gradient(GradientType=1,StartColorStr='#00ffffff',EndColorStr='#ffffff')}html[dir="
							+ "rtl"
							+ "] .review-text[dir="
							+ "ltr"
							+ "] .paragraph-end.details-light{-webkit-transform:scaleX(-1);-moz-transform:scaleX(-1);-ms-transform:scaleX(-1);-o-transform:scaleX(-1);transform:scaleX(-1);right:0}.play-action-container .play-action{background-image:url(data:image/png;base64,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);height:96px;left:-48px;top:-48px;width:96px}.play-action:hover,.play-action:active{background-image:url(data:image/png;base64,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)}.outer-container{margin-left:200px;text-align:center}.inner-container{display:inline-block;text-align:initial}.main-content{-webkit-box-shadow:0 0 6px rgba(0,0,0,0.27);-moz-box-shadow:0 0 6px rgba(0,0,0,0.27);box-shadow:0 0 6px rgba(0,0,0,0.27);background:#fff;border-radius:2px;display:inline-block;margin:50px 0 0 0;padding-bottom:40px;width:720px}.main-content .details-section .heading{color:#212121;font-size:14px;font-weight:normal;text-transform:uppercase}.details-section.description.simple .text-body p{margin-bottom:16px}.details-actions{margin:0;padding:0}.details-actions-left{float:left}.details-actions-right{float:right;text-align:right}.details-actions-right .play-button-wrapper{display:inline-block}.details-actions-right .play-button{margin-bottom:5px}.details-actions .buy-button-container,.details-actions .sample-button-container{margin-left:14px}.details-actions .play-button{margin-left:5px}.details-actions .play-button:first-child{margin-left:0;margin-right:0}.details-actions .play-button:last-child{margin-left:5px;margin-right:0}.details-wrapper{min-width:0}.details-info{background-color:transparent;border-bottom:none}.details-info .cover-container{float:none}.apps .details-info .cover-container{margin:25px 25px 0 25px}.apps .details-info .cover-image{width:180px}.apps .info-container .info-box-bottom{margin-top:156px}.books .details-info .cover-container,.movies .details-info .cover-container,.music .details-info .cover-container,.tv .details-info .cover-container,.magazines .details-info .cover-container{margin:0 25px 0 0}.books .details-info .cover-image,.movies .details-info .cover-image{width:200px}.details-info .info-container{padding:0;position:relative}.info-container .document-title{color:#212121;font-size:30px;margin:25px 30px 10px 0}.info-container .right-title{position:absolute;right:30px;top:36px}.info-container .document-title .sticker-wrapper{display:inline-block;margin-left:10px;position:relative;top:-5px;vertical-align:middle}.details-info .info-container{overflow:hidden;white-space:nowrap}.info-container .info-box-top,.info-container .info-box-bottom{display:inline-block;white-space:normal;width:465px}.info-container .info-box-top{box-sizing:border-box;min-height:200px;padding-bottom:59px;vertical-align:top}.books .info-container .info-box-top,.music .info-container .info-box-top{padding-bottom:89px}.info-container .info-box-bottom{left:-465px;margin-top:127px;position:relative;vertical-align:bottom}.info-container .badges{float:right;margin:40px 0 0 14px}.info-container .badge{display:inline-block;margin-left:12px}.info-container .badge-title{color:#8d8d8d;font-weight:700}.info-container .document-subtitle{display:inline;font-weight:normal;margin-right:12px;vertical-align:baseline}.info-container .info-box-top .document-subtitles{margin-bottom:10px}.info-container .info-box-top .rental-info{text-align:right}.info-container .document-subtitles .right-info{color:#616161;float:right}.info-container .document-subtitles .right-info .document-subtitle{display:inline-block}.info-container .document-subtitles .ratings-info{color:#737373;font-weight:300;margin-right:0}.ratings-info .rating-count,.ratings-info .reviewers-small{vertical-align:top}.info-container a.document-subtitle.primary,.info-container .document-subtitle.primary a,.info-container a.document-subtitle.category,.info-container .document-subtitle.category a,.info-container .document-subtitle.content-rating-title{font-weight:700}.info-container .document-subtitle.content-rating-badge{height:14px;margin-left:0;margin-right:2px;top:1px;vertical-align:top}.info-container .document-subtitle.info-star-rating{margin-right:0}.document-warnings-final,.document-warnings-initial{white-space:normal}.info-container .details-sharing-section{margin-top:7px}.info-container .details-section-divider{left:auto;width:auto}.details-section.metadata .details-sharing-section{bottom:0;position:absolute;right:-25px}.play-button.large{font-size:13px}.details-section{background:#fff;margin-top:30px;padding:0 50px 0 50px}.details-section.share-section{margin-top:0;text-align:right}.details-section.featured-ep-section,.details-section.highlighted-review,.details-section.metadata,.details-section.reviews,.details-section.whatsnew{margin-top:30px;padding:0 50px 0 50px}.details-section-divider{border-bottom:1px solid #eaeaea;left:-25px;margin-top:30px;position:relative;width:670px}.details-section.screenshots{padding:0 50px}.details-section.screenshots .thumbnails-wrapper{margin-bottom:0}.details-section.screenshots .thumbnails{padding:0}.details-section.screenshots .thumbnails .screenshot{margin-bottom:0}.details-section.screenshots .full-screenshot{margin:20px 0}.details-section.screenshots .details-section-divider{display:none}.details-section.trailer{overflow:visible;padding:0}.details-section.trailer .details-trailer{-webkit-box-shadow:0 0 6px rgba(0,0,0,0.27);-moz-box-shadow:0 0 6px rgba(0,0,0,0.27);box-shadow:0 0 6px rgba(0,0,0,0.27)}.details-section.trailer .details-trailer .video-image{height:auto;width:720px}.details-section.about-the-author .text-body,.details-section.about-the-author .details-section-body,.details-section.description .text-body,.details-section.description .details-section-body,.details-section.description.simple .text-body,.details-section.description.simple .details-section-body,.details-section.cast-credit .details-section-contents{line-height:24px}.show-more-end{background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,rgba(255,255,255,0)),color-stop(100%,rgba(255,255,255,1)));background-image:-webkit-linear-gradient(top,rgba(255,255,255,0),rgba(255,255,255,1));background-image:-moz-linear-gradient(top,rgba(255,255,255,0),rgba(255,255,255,1));background-image:-ms-linear-gradient(top,rgba(255,255,255,0),rgba(255,255,255,1));background-image:-o-linear-gradient(top,rgba(255,255,255,0),rgba(255,255,255,1));background:linear-gradient(to bottom,rgba(255,255,255,0),rgba(255,255,255,1));filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,StartColorStr='#00ffffff',EndColorStr='#ffffff')}.details-section.reviews .details-section-contents{min-width:0}.details-section.metadata .details-section-divider{display:none}.details-section.related-movies{background-color:transparent}.details-section.divider .details-section-divider{margin-top:20px}.main-content .cluster{margin-bottom:10px;margin-top:35px}.main-content .apps.cluster.single-trusted-source .card-list{margin:10px 5px 0}.main-content .books.cluster.single-trusted-source .card-list{margin:-30px 5px 0}.main-content .apps .celebrity-box{margin:150px 15px 0}.main-content .books .celebrity-box{margin:190px 15px 0}.main-content .zero-card .celebrity-box{width:680px}.main-content .one-card .celebrity-box{width:500px}.main-content .two-cards .celebrity-box{width:330px}.main-content .celebrity-box .button-container{margin-top:10px}.secondary-content{display:inline-block;margin:63px 0 0 50px;vertical-align:top;width:330px}.secondary-content .details-section .heading{font-size:20px;max-width:680px;position:relative}.secondary-content .details-section .heading{color:#757575;font-size:20px}.details-section.recommendation{background:transparent;padding:3px 0 0 0}.main-content .details-section.recommendation{margin-top:30px;padding:0 50px 0 50px}.main-content .details-section.recommendation .header{margin:0 0 12px 0}.rec-cluster .see-more{float:right}.details-section.recommendation .rec-cluster .cards{max-height:850px;overflow:hidden;width:100%;white-space:initial}.main-content .details-section.recommendation .rec-cluster .cards{height:210px}.main-content .details-section.recommendation .rec-cluster .card{float:left}.details-section.recommendation .rec-cluster .card{margin-left:0;margin-right:0}.details-section.divider{margin-top:0}.rating-box{-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none;margin-bottom:15px;width:620px}#footer-content,.footer{background-color:transparent}body.sidebar-wrapped .inner-container{width:720px}body.sidebar-wrapped .secondary-content{display:inline;margin-top:65px;width:720px}body.sidebar-wrapped .details-section.recommendation .rec-cluster{padding-left:0px}body.sidebar-wrapped .details-section.recommendation .rec-cluster .cards{max-height:initial;max-width:680px;white-space:nowrap}body.sidebar-wrapped .details-section.recommendation .rec-cluster .card{margin-left:5px;margin-right:5px}@media screen and (max-width:1350px){.secondary-content{visibility:hidden}body.sidebar-visible .secondary-content{visibility:visible}}@media screen and (min-width:1191px) and (max-width:1350px){.secondary-content{margin-left:40px;width:160px}.secondary-content .details-section.recommendation .rec-cluster .cards{max-height:1020px}}@media screen and (max-width:1190px){.secondary-content{display:none}body.sidebar-wrapped .secondary-content{display:initial}}.play-button{-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px}.play-button.movies{background-color:#ed3b3b}.play-button.movies:hover{background-color:#ff5252}.play-button.movies:active{background-color:#d23f31}.play-button.tv:hover{background-color:#ff5252}.play-button.tv:active{background-color:#d23f31}.play-button.tv.disabled,.play-button.tv.disabled:hover,.play-button.tv.disabled:active,.play-button.tv.disabled:focus{background-color:#ed3b3b}.preregistration-yet-to-add,.preregistration-remove{border:none;box-shadow:none;font-weight:normal;margin:0;padding:0}.preregistration-text-default{min-width:110px}.preregistration-content{position:relative;text-align:center}.userlist-yet-to-add,.userlist-adding,.userlist-added,.userlist-remove,.userlist-removing{border:none;box-shadow:none;font-weight:normal;margin:0;padding:0}.userlist-yet-to-add.disabled,.userlist-adding.disabled,.userlist-added.disabled,.userlist-remove.disabled,.userlist-removing.disabled{border:none}.wishlist-text-default{min-width:110px}.play-button.wishlist-content:hover{-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none;border:none}[data-enable-wishlist-icon-center="
							+ "true"
							+ "] .wishlist-icon{-webkit-background-size:auto;-moz-background-size:auto;-o-background-size:auto;background-size:auto}.userlist-remove .wishlist-icon{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABTUlEQVQoka2SzW3DMAyFU8cw0ObgnyGyRwdpJ+goXcDwFpmgaxj2qb3k4KRIbkXjKI8GFbCGZEuqBXyQTJHviUxWSqmVCawHH6w6FvHIVjDxIGPNVMEGFCCfgXI2Th3oV2C9gA4cwYF3E/qOcl9NnfyZOe+P4BPQR8/7FDrnCzxJLZtBzi+aEx5DNbmLQcZtD4VVVam6rlWSJHcxOlOsLEtpQOPKXDu4G5AQrbZtB2GiaZohRnfC4AxSbwMSJHFtIs+yK+7AeUQHOV9pYhEnvl1HRAanAINjUAceI3I2CP2Rwww8/qZhBh4sYtAbYtf/GFzF/ssGPZ8XMbiwmBbRBtL0EmLQjUbyA3bgmdlxTOZ0rgaZ6GAP3sFW54i8Ld/tRQeZi0EBPsAbSMV9BNZMJOIp51JNYTUYCcXiO5aC3nnjgBhFLF9iYy53sngJbmzs4NmK7ThrAAAAAElFTkSuQmCC)}.apps .userlist-yet-to-add .wishlist-icon{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABZ0lEQVQokc2ST0rDQBjF88eNFppY3LjprgtXHsEruHGpF/AkIj1JoWfQq1jtKhYasyhSiS/wPnkMk2ZiKzjwI+TLe9+bfDNRJOvm8VKJe/Lj9S6nedJp+I3HMQxADrIOcmqDmtsubkEBPgJptHfawxdgczwGL6AGpdOoIlorqV2AEzu/XQHNL69pHDujGhAdzZjaNWudAZnsPHNulAXEjt7+JAsNsN+3HTUMwRsZSj0Xfe8AM9gorG6ja9MHBVQyklewAVuyYc2+V/8y4M9HpAY75AXRQz5IQEJOib0fLOAIpLLrlLW9A0Zm4POcaG20T0DO2gWYgncyZS2ipleAGUpwDWbgE9Tgi9SszagpnQ3tDGgOsWCTLZ/NvZ+DKzJnTTUFvUEBK5qW4AFMZO6mm/DbktpVaMAZeAb3MlO7qilJpJ5R+6SXwhfgu4J2RbWhBrbqvEvEMQ2xNvXovNqu5pGvadvq8n0DnjlpIhWii5wAAAAASUVORK5CYII=)}.apps .userlist-added .wishlist-icon{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABd0lEQVQYla2Pu07DMBiFk9KFdshlRwghFTaeATHxAIwwsSCx8xD0aSokYOtbIBhh6ZAWARIlJGk4lo7RL8tpnDSWPlm2z8W/54l1dnsk8Rvy77UuI7xXa2jjMQxDEIOohphap3D9i3OQgAWYc7eh35T2QmbYCnwKtsErKEHBfR1a8wYGzPDXFUT8kTavLOj7H5BRm9BbWxBy7JIhVT9W4Sfghuc5vU4T6IKcmOFLcEr9PvgCnyBoWrASwbklfA+8iAkil4KQYmV6AFci/NsIfxbTvdPrVPABUnDAu0vLz3X4L/dFmwnuwYBvO3zfFeEZWDUtiCguySMYVoSXmxak3O/AIXgywjcuUOaC+1Kcyy4LSoYWlvDOCtSeiZKsq4KcYeYksjRvU5CIQLWnYAKOyYR3UpO4FoRighkYg5E2Ct2IbzMxQehSEIMpuAYB7xQ9sEV64j6gdkpvZYEM6otz3wh00lmXEPs0+DLUorNq68I9W2jVqvP9AYjmsOMS621tAAAAAElFTkSuQmCC)}.magazines .userlist-yet-to-add .wishlist-icon{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABZElEQVQokc2SQU4CQRBFhxk2SkKPxI0bdiw4hVcwca0XMB7EBSch4Qx6FVFWAwnjLIhB29/Jr6Rse2Z6AiQuXgh/fvXvqq7EWps4bh+/fXod+VUv5yY1AWkgsI20S4BjAHJgWsjpjepAbnEHCvARifPe6zNCATLHM/AKLCi9gyqitZLeJTiX92sKcC1vWTj2RjUgejRjerfUWgOMurnxNkoCep5fOjGxAdK+3MgxBO9kqPRc+TsHSIGMQnQZXZ0/KqBSI3kDO7AnO2ryvfqXAScfkS6QR14S/chHCUjJBZH/Rwvog0zdOqN2cMBICvh7RbQ2OiQgpzYFM7AmM2oJPZ0CpKAEN2AOPoEFX8RSm9NTehdqDHCPWPCQPX/d3i/ANVlQ056CtVEBGxatwBOYqLmLb8JvK3o3sQGX4AU8qJnKqmYkVbqh91kvRSggtIKyovpAHVjrawqQbvqqqyaC3j8Bp+IHa58AhSBOmdQAAAAASUVORK5CYII=)}.magazines .userlist-added .wishlist-icon{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABc0lEQVQYlbWPsU7DMBiEm5CFdmiSHSGEVHgNxMTMDBMLEsy8BE9TIQFb3wLBCEuHtAiQKCVpzFk6Sz/GSZy2DJ9+2b7/ztdRSnU0x5elTdCSX/vGt1MREDoCmwjbBGh6IAVJAym1Xg3ML05ABqZgwunCvGntqfRwBQQUbIJnoMCCsw6jeQFdegR1AQl/ZJZLB+b+C+TUZtxtDIhZW9Gk6sfa/BBc8TzhrlcDE1AQ23wGjqjfBR/gHfTbBpTCuHCY74An0SDxCYgp1kt34FyYf1rmj6LdK3e9At7AHOzx7szxc2P+zTldpsEt6PJti+/bwjwHZduAhGJF7kGvwlytGjDnvAH74MEyXzlALy84Z+Ks1hmgaLpwmK8tQM9chOTrCihoZjeRocUyAZkw1HMOhuCADHknNZlvQCwajME1GJhFoRvwbSwaxD4BKRiBC9DnnSYEGyQU931qR9ytDJBGkThHlqGXri7AtIlEqzqc2j8B/8UPVkxIRjuebowAAAAASUVORK5CYII=)}.music .userlist-yet-to-add .wishlist-icon{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAIGNIUk0AAHolAACAgwAA+f8AAIDpAAB1MAAA6mAAADqYAAAXb5JfxUYAAAFlSURBVCiRzZJBTgJBEEWHGTZKQo/EjRsSFyw4hVfwAnoBz+HCBSch4Qx6FVFWAwnjLIhi2t/Jr6Rse2Z6AiQuXgh/fvXvqq7EWps4vh6vfXod+VUv5yY1AWkgsI20S4BjAHJgWsjpjepAbnEHCvARifPe6zNCATLHM/AKLCi9gyqitZLeJTiX92sKcC1vWTj2RjUgejRjerfUWgOMurnxNkoCep5fOjGxAdK+3MgxBO9kqPRc+TsHSIGMQnQZXZ0/KqBSI3kDO7AnO2ryvfqXAScfkS6QR14S/chHCUjJBZH/Rwvog0zdOqN2cMBICvh7RbQ2OiQgpzYFM7AmM2oJPZ0CpKAEt2AOPoEF38RSm9NTehdqDHCPWPCQPX/d3i/ADVlQ056CtVEBGxatwBOYqLmLb8JvK3o3sQGX4AU8qJnKqmYkVbqh91kvRSggtIKyovpAHVjrawqQbvqqqyaC3j8Bp+IHL6PMWkqIlToAAAAASUVORK5CYII=)}.music .userlist-added .wishlist-icon{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAIGNIUk0AAHolAACAgwAA+f8AAIDpAAB1MAAA6mAAADqYAAAXb5JfxUYAAAF0SURBVBiVtY89TsNAFIRt44aksJ0eoQgpcA1ExSGgokGi5wR0nCZCArrcAkEJTQonCJAIxj/LrDQrPczaWSeh+PS0u/NmdjyllKfJr4Z1/I782je+XkNAYAlcRtAlQNMHA5AsYUCtUwPzixOQgjmYcdowb1p7Kj1sAT4F2+AZKFBytmE0L6BHD78tIOGPzHJlwdx/gZzalLtLA2LWVjRp+rE2PwKXPM+469TABBSkbr4Ax9TvgQ/wDqKuAZUwLizmQ/AkGiQuATHFeukOnAvzz5r5o2j3yl2ngDeQgX3enVl+bsy/OeerNLgFPb7t8H1XmOeg6hqQUKzIPeg3mKt1AzLOG3AAHmrmawfo5ZJzIc5qkwGKpqXFfGMBeuYiJN9UQEGzehMZWqwSkApDPTMwBodkzDupSV0DYtFgCq7ByCwK3YhvU9EgdgkYgAm4ABHvNAHYIoG4j6idcLcxQBqF4hzWDJ10bQGmTShatWHV/gn4L34AGlAUKm1HJPkAAAAASUVORK5CYII=)}.movies .userlist-yet-to-add .wishlist-icon,.tv .userlist-yet-to-add .wishlist-icon{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAIGNIUk0AAHolAACAgwAA+f8AAIDpAAB1MAAA6mAAADqYAAAXb5JfxUYAAAFlSURBVCjPzZI9TsNQEIQdOw1EyjMRDY27FJyCggvkAnABTkKRk0TKGeACHIJAKhMpxkWEgh5jaVYajOOf/EgUn6KMZ9+83beB9z4oeJnclul15Fe9nRvsCAgrApsIuwQUDEAMXAMxva06sFvcgRR8tqTw3usZVQE2xzPwCjzISgflRLWM3gU4t/erCyhaXrMwKY1qQHQ0Cb1rao0BTm7uShtlAb2S3zpxbQOs/VgebgjeyVD0WPydA5xsVCJ6Ipvj9g3IZSRvYAO2ZEPNvuf/MuDkI9ICe+QF0Uc+SkBILoj9P1pAH0Ry64jawQEjK+DvFVFtdEhATO0aTMEHmVIL6OkUYAUZmIAZ+AIefBNPbUZPVrpQbUDxiCkP2fK32Ps5uCFzaupJWdsqYMWiJXgEY5m7+cb8tqR31TbgEjyDB5mprWpEQtEdvU+6FFUBVStoK6oHauBOX12AddOXruqo9P4JOBU/mrFZWh7wWDYAAAAASUVORK5CYII=)}.movies .userlist-added .wishlist-icon,.tv .userlist-added .wishlist-icon{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAIGNIUk0AAHolAACAgwAA+f8AAIDpAAB1MAAA6mAAADqYAAAXb5JfxUYAAAF1SURBVBiVtY89TsNAFIQTk4ak8E+PEEIKXAOlouMCUNEg0XMJThNFArqcgBZBCU0KJwiQCME/y6w0Kz3M2l4npvj0tLvzZnY6SqmO5v5kVKTbkF/7xrdTEuBZAuvwmgRoBiACYQ0RtU4NzC9OQQwWYM5pw7xp7Zn0sAV0KdgGz0CBjLMKo3kBfXp0qwJC/sgs5xbM/RdIqI25WxsQsLaiSdmPtfkIXPE8565TAxOQkqL5EhxTvw8+wDvwmwbkwji1mO+BJ9EgdAkIKNZLt+BCmH8WzB9Fu1fuOgW8gRU44N255efG/JtzsU6DG9Dn2w7fd4V5AvKmASHFityBQYm52jRgxTkBh+ChYL5xgF7OOJfirNoMUDTNLOatBeiZiJCkrYCUZsUmMjRdJyAWhnquwBgckTHvpCZ2DQhEgxm4BkOzKHRDvs1Eg8AlIAJTcAl83mk8sEU8ce9TO+VuaYA06olzr2DopKsKMG16olUVVu2fgP/iB4VeoRvcz6uoAAAAAElFTkSuQmCC)}.books .userlist-yet-to-add .wishlist-icon{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAIGNIUk0AAHolAACAgwAA+f8AAIDpAAB1MAAA6mAAADqYAAAXb5JfxUYAAAFkSURBVCiRzZJBTgJBEEWHGTZKQo/EjRt2LDyFV/ACcgFP4oJTuCThDHIURFmNJIyzIAbT/k5+JWXbM9MTIHHxQvjzq39XdSXW2sQxfV759Dryq17OTWoC0kBgG2mXAMcA5MC0kNMb1YHc4gEU4DMS553qM0IBMscL8AosKL2DKqK1kt41uJT3awpwLe9YOPZGNSB6NGN6d9RaA4y6ufE2SgJ6nl86MbEB0r7cyDEE72So9Fz5OwdIgYxCdBldnT8qoFIjeQN7cCB7avK9+pcBZx+RLpBHXhP9yCcJSMkVkf8nC+iDTN06o3Z0wEgK+HtDtDY6JiCndgtm4IPMqCX0dAqQghLcgzn4AhZ8E0ttTk/pXagxwD1iwUMO/HV7vwB3ZEFNewrWRgVsWbQBT2Ci5i6+Cb9t6N3GBlyDJXhUM5VVzUiqdEPvi16KUEBoBWVF9YE6sNbXFCDd9FVXTQS9fwLOxQ9HbEE1GIzZjQAAAABJRU5ErkJggg==)}.books .userlist-added .wishlist-icon{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAIGNIUk0AAHolAACAgwAA+f8AAIDpAAB1MAAA6mAAADqYAAAXb5JfxUYAAAF1SURBVBiVtY89TsNAFIQTk4ak8E+PEEIKXANRcQhS0SDRcwluwQ2iSECXWyDogCaFEwRIhOCfZVaalR5mba8TU3x62t15MzsdpVRHM7p+KtJtyK9949spCfAsgXV4TQI0AxCBsIaIWqcG5henIAYLMOe0Yd60diQ9bAFdCrbBM1Ag46zCaF5Anx7dqoCQPzLLuQVz/wUSamPu1gYErK1oUvZjbX4MLnmec9epgQlISdF8CU6o3wcf4B34TQNyYZxazPfAo2gQugQEFOulW3AuzD8L5g+i3St3nQLewAoc8O7M8nNj/s25WKfBDejzbYfvu8I8AXnTgJBiRe7AoMRcbRqw4pyAQ3BfMN84QC9nnEtxVm0GKJpmFvPWAvRMREjSVkBKs2ITGZquExALQz1XYAyOyJh3UhO7BgSiwQxcgaFZFLoh32aiQeASEIEpuAA+7zQe2CKeuPepnXK3NEAa9cS5VzB00lUFmDY90aoKq/ZPwH/xAzIZiPZ6gr+bAAAAAElFTkSuQmCC)}.movies .wishlist-display,.movies .wishlist-container{display:block}.wishlist-text-add,.wishlist-text-added{font-size:13px}.apps .wishlist-text-add,.apps .wishlist-text-added{color:#689f38}.books .wishlist-text-add,.books .wishlist-text-added{color:#039be5}.music .wishlist-text-add,.music .wishlist-text-added{color:#ef6c00;font-size:13px}.magazines .wishlist-text-add,.magazines .wishlist-text-added{color:#536dfe}.movies .wishlist-text-add,.movies .wishlist-text-added,.tv .wishlist-text-add,.tv .wishlist-text-added{color:#ed3b3b}.movies .wishlist-content{min-width:132px;text-align:right}.movies .wishlist-icon{display:inline-block;margin-top:-1px;position:static;vertical-align:middle}.movies .wishlist-text{display:inline-block;padding-left:0}.movies .wishlist-text,.movies .wishlist-text-default{min-width:initial}.cast-credit .cc-box{display:inline-block;margin-top:25px;margin-right:10px;vertical-align:top;width:290px;font-size:14px}.cast-credit .cc-box-label{margin-bottom:5px}.how-to-read-col{max-width:308px}.details-section.tracks{padding:0 25px 0 25px}.details-section.tracks .details-section-divider{left:auto;width:auto}.details-section.tracks .details-section-contents{min-width:670px}.rating-box .rating-histogram{width:425px}.rating-box .rating-bar-container{margin-bottom:2px}.reviews .preview-panel{min-width:0}.reviews .details-section-contents{padding-top:0}.track-list{margin-bottom:0}.track-list-row:first-child td{border-top:0}.track-list-row td{border-bottom:0}.magazines-back-issues .cluster{background-color:#f5f5f5;margin-top:25px;padding-bottom:40px;padding-top:25px}.magazines-back-issues .cluster .cluster-heading{font-size:14px;font-weight:normal;text-transform:uppercase}.magazines .details-section.reviews{margin-top:30px}.magazines .reviews .details-section-divider{margin-bottom:10px;margin-top:40px}.magazines .details-info .subscription-description{margin:0 0 10px;padding:0;text-align:right;width:auto}.details-wrapper .episodes-background{background-color:#f5f5f5;margin-top:30px;padding:1px 0 30px 0}.details-section.featured-ep-section{background-color:transparent;padding:0 25px 0 25px}.details-section.featured-ep-section .ep-details-text .heading{font-size:28px;font-weight:300;text-transform:none}.details-section.browse-tv-season{background-color:transparent}.details-section.browse-tv-season .displayed-season.heading{color:#ed3b3b}.ep-details-text{max-width:320px}.season-selector-container{margin-left:25px}.cluster .card-list,.cluster.has-background .card-list{margin-left:25px}.cluster .cluster-heading{margin-left:25px}.cluster.single-trusted-source{background:transparent;height:initial}.cluster.single-trusted-source .cluster-background{height:280px}.cluster.single-trusted-source .background-gradient-container{width:170px}.cluster.single-trusted-source .zero-card .background-image{left:110px}.cluster.single-trusted-source .zero-card .gradient-left{display:inline;left:110px}.cluster.single-trusted-source .zero-card .gradient-right{right:-110px}.cluster.single-trusted-source .one-card .background-image{left:0}.cluster.single-trusted-source .one-card .gradient-right{right:0}.cluster.single-trusted-source .two-cards .background-image{left:-85px}.cluster.single-trusted-source .two-cards .gradient-right{right:85px}";
					div.appendChild(style);

					var div_app = document.createElement("div");
					div_app
							.setAttribute(
									"class",
									"details-wrapper apps square-cover id-track-partial-impression id-deep-link-item");
					div.appendChild(div_app);

					var div_detail = document.createElement("div");
					div_detail_info.setAttribute("class", "details-info");
					div_app.appendChild(div_detail);

					var div_detail_info = document.createElement("div");
					div_detail_info_img.setAttribute("class", "info-container");
					div_detail.appendChild(div_detail_info);

					var div_detail_info_img = document.createElement("div");
					div_detail_info_img
							.setAttribute("class", "cover-container");
					div_detail_info.appendChild(div_detail_info_img);

					var apk_img = document.createElement("img");
					apk_img.setAttribute("class", "cover-image");
					apk_img.setAttribute("src", apkinfo.hdResIconPath);
					apk_img.setAttribute("alt", apkinfo.tilte);
					apk_img.setAttribute("aria-hidden", "true");
					apk_img.setAttribute("itemprop", "image");
					div_detail_info_img.appendChild(apk_img);

					var div_info = document.createElement("div");
					div_info.setAttribute("class", "info-box-top");
					div_detail_info.appendChild(div_info);

					var div_info_creater = document.createElement("div");
					div_info_creater.setAttribute("class", "badges");
					div_info.appendChild(div_info_creater);

					var span_badge = document.createElement("span");
					span_badge.setAttribute("class", "badge");
					div_info_creater.appendChild(sapn_badge);

					var span_badge_title = document.createElement("span");
					span_badge_title.setAttribute("class", "badge-title");
					span_badge_title.innerHTML = apkinfo.creater;
					span_badge.appendChild(sapn_badge_title);

					var h1 = document.createElement("h1");
					h1.setAttribute("class", "document-title");
					h1.setAttribute("itemprop", "name");
					h1.innerHTML = "<div>" + apkinfo.title + "</div>";
					div_info.appendChild(h1);

					var div_style1 = document.createElement("div");
					div_style1.setAttribute("style", "clear:both");
					div_info.appendChild(div_style1);

					var div_info_subtitles = document.createElement("div");
					div_info_subtitles.setAttribute("class",
							"document-subtitles");
					div_info.appendChild(div_info_subtitles);

					var div_info_right = document.createElement(div);
					div_info_right.setAttribute("class", "right-info");
					div_info_right.innerHTML = "<span class='document-subtitle ratings-info'> <span class='rating-count'>"
							+ apkinfo.numDownloads
							+ "</span> <span class='reviewers-small'></span></span>";
					div_info_subtitles.appendChild(div_right_info);

					var div_info_left = document.createElement(div);
					div_info_left.setAttribute("class", "left-info");
					div_info_left.innerHTML = "<a class='document-subtitle category' href='/store/apps/category/SHOPPING'> <span itemprop='genre'>"
							+ apkinfo.category.name + "</span> </a>";

					var div_style2 = document.createElement("div");
					div_style2.setAttribute("style", "clear:both");
					div_info.appendChild(div_style2);

					var div_display = document.createElement("div");
					div_display.setAttribute("class",
							"voucher-message id-voucher-message");
					div_display.setAttribute("style", "display:none");
					div_info.appendChild(div_display);

					var div_apk_download = document.createElement("div");
					div_apk_download.setAttribute("class", "info-box-bottom");
					div_info.appendChild(div_apk_download);

					var div_info_description = document.createElement("div");
					div_info_description
							.setAttribute("class",
									"details-section description simple contains-text-link");
					div_info_description.innerHTML = "<div class='details-section-contents show-more-container more'>  <h1 aria-label='说明'></h1> <div class='show-more-content text-body' itemprop='description' style='max-height: 144px;'> <div class='id-app-orig-desc'>"
							+ apkinfo.description
							+ "</div>  <div class='show-more-end'></div> </div>  <div class='close-image'>  </div> </div>";
					div_info_description.innerHTML = "<div class='details-section-divider'></div>";
					div_app.appendChild(div_info_description);

					var div_details_wrapper = document.createElement("div");
					div_details_wrapper
							.setAttribute("class", "details-wrapper");
					div_details_wrapper.innerHTML = "<div class='details-section metadata'><div class='details-section-heading'> <h1 class='heading'>其他信息</h1></div></div>";
					div_app.appendChild(div_details_wrapper);

					var div_info_contents = document.createElement("div");
					div_info_contents.setAttribute("class",
							"details-section-contents");
					div_info_contents.innerHTML = "<div class='meta-info'> <div class='title'>更新日期</div> <div class='content' itemprop='datePublished'>"
							+ apkinfo.uploadDate
							+ "</div> </div>"
							+ "<div class='meta-info'> <div class='title'>大小</div> <div class='content' itemprop='fileSize'>"
							+ apkinfo.installationSize
							+ "</div> </div>"
							+ "<div class='meta-info'> <div class='title'>安装次数</div> <div class='content' itemprop='numDownloads'> "
							+ apkinfo.numDownloads
							+ " </div> </div>"
							+ "<div class='meta-info'> <div class='title'>安装次数</div> <div class='content' itemprop='version'> "
							+ apkinfo.versionString
							+ versionCode
							+ " </div> </div>";
					div_details_wrapper.appendChild(div_info_contents);

				}
			});

	$
			.ajax({
				url : "http://localhost:8080/GoogleTest1/getHotApp.action", // 后台处理程序
				type : 'GET', // 数据发送方式
				dataType : 'json',
				success : function(apkinfos) {

					var div_secondary = $(".secondary-content");
					var div_hot = document.createElement("div");
					div_hot.setAttribute("class", "details-wrapper");
					div_hot.setAttribute("style", "opacity: 1;");
					div_secondary.appendChild(div_hot);

					var div_recommendation = document.createElement("div");
					div_recommendation.setAttribute("class",
							"details-section recommendation");
					div_hot.appendChild(div_recommendation);

					var div_contents = document.createElement("div");
					div_contents.setAttribute("class",
							"details-section-contents");
					div_recommendation.appendChild(div_contents);

					var div_contents_h1 = document.createElement("div");
					div_contents_h1.setAttribute("class", "heading");
					div_contents_h1.innerHTML = "<h1 class='heading'>热门推荐</h1>";
					div_contents.appendChild(div_contents_h1);

					var div_cards = document.createElement("div");
					div_cards.setAttribute("class", "cards");
					div_contents.appendChild(div_cards);

					for (var i = 1; i < apkInfos.length; i++) {

						var div_card_info = document.createElement("div");
						div_card_info
								.setAttribute("class",
										"card no-rationale square-cover apps medium-minus");
						div_cards.appendChild(div_card_info);

						var div_card_contents = document.createElement("div");
						div_card_contents
								.setAttribute("class",
										"card-content id-track-click id-track-impression");
						/* 此处有一个链接，链接点击可进入这个游戏的详细信息界面。 */
						div_card_contents.innerHTML = "<a class='card-click-target'  href="
								+ +" aria-hidden='true' tabindex='-1'></a> ";
						div_card_info.appendChild(div_card_contents);

						var div_card_cover = document.createElement("div");
						div_card_cover.setAttribute("class", "cover");
						div_card_cover.innerHTML = "<div class='cover-image-container'> <div class='cover-outer-align'> <div class='cover-inner-align'>"
								+ "<img alt='"
								+ apkInfos[i].packageName
								+ " class='cover-image' src='"
								+ apkInfos[i].hdResIconPath
								+ "></div></div></div> ";

						div_card_cover.innerHTML = "<a class='card-click-target' href="
						" aria-label='"
								+ apkInfos[i].title
								+ "'>  "
								+ "<span class='preview-overlay-container' data-docid='com.ifttt.dobutton'>  </span></a>";
						// 此处少一个框架因为不知道要来干嘛。有需要再补上
						div_card_contents.appendChild(div_card_detail);

						var div_card_detail = document.createElement("div");
						div_card_detail.setAttribute("class", "details");
						div_card_detail.innerHTML = "<a class='card-click-target' href='/store/apps/details?id=com.ifttt.dobutton' aria-hidden='true' tabindex='-1'></a>";
						div_card_detail.innerHTML = "<h2> <a class='title' href=' ' title='"
								+ apkInfos[i].title
								+ "' aria-hidden='true' tabindex='-1'>  "
								+ apkInfos[i].title
								+ " <span class='paragraph-end'></span> </a> </h2>";
						div_card_detail.innerHTML = "";
					}
					;

				}

			});

}
