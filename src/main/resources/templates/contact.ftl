<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
<#assign base=request.contextPath />
<!DOCTYPE HTML>
<html>
<head>
<title>java实训基地-联系我们</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="${base}/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="${base}/css/style.css" rel='stylesheet' type='text/css' />
<link href="${base}/css/common.css" rel='stylesheet' type='text/css' />
<link href="${base}/css/blog.css" rel='stylesheet' type='text/css' />
<script src="${base}/js/jquery-1.11.1.min.js"></script>
<script src="${base}/js/bootstrap.min.js"></script>
<!-- animation-effect -->
<link href="${base}/css/animate.min.css" rel="stylesheet">
<script src="${base}/js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!-- //animation-effect -->
</head>
<body>
	<#include "header.ftl"/>
	<!-- technology-left -->
	<div class="technology">
		<div class="container">
			<div class="col-md-9 technology-left">
				<div class="contact-section">
					<div class="contact-grids">
						<div class="col-md-8 contact-grid">
							<p>
								&nbsp;&nbsp;光谷实训基地是武汉唯一一家以互联网真实项目实训的机构。一直秉承“真实项目实战”的理念，是中国移动互联网研发人才一体化服务的开拓者，全力打造移动互联网研发人才服务优质平台。</br>
							    &nbsp;&nbsp;公司秉着“精,专,小”的原则,专心做java实训,只在光谷开设唯一一家机构。项目leader拥有各大互联网工作经验，做到了毕业学员3-5年互联网从业经验，业内高薪水，成为学员信赖的IT培训机构。
							 </p>
						</div>
						<div class="col-md-4 contact-grid1">
							<h4>联系方式</h4>
							<div class="contact-top">
								<div class="clearfix"></div>
							</div>
							<ul>
								<li><i class="glyphicon glyphicon-earphone"
									aria-hidden="true"></i> <a href='#' title="请加我微信号">微信号 : 13349898321</a></li>
								<li><i class="glyphicon glyphicon-phone" aria-hidden="true"></i>
									<a href='#' title="这是联系手机号">手机 : 13349898321</a></li>
								<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i> 
									<a href="tencent://AddContact/?fromId=45&fromSubId=1&subcmd=all&uin=150206864" title='点击加好友' target='_blank'>QQ : 150206864</a></li>
								<li><i class="glyphicon glyphicon-print" aria-hidden="true"></i>
									<a href="https://jq.qq.com/?_wv=1027&k=48SL3Da" title='点击加人群聊' target='_blank'>QQ群 : 284643832</a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="google-map">
						<iframe src="${base}/contact/baidumap" allowfullscreen></iframe>
					</div>
				</div>
			</div>
			<!-- technology-right -->
			<#include "technologr_right.ftl"/>
			<!-- technology-right -->
		</div>
	</div>
	<#include "footer.ftl"/>
</body>
</html>