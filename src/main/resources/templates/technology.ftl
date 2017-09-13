<#assign base=request.contextPath />
<!DOCTYPE HTML>
<html>
<head>
<title>技术文章</title>
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
			<div class="col-md-9 technology-left wow fadeInDown"
				data-wow-duration=".8s" data-wow-delay=".2s">
				<div class="blog">
					<div class="yq-main expert-detail-main">
						<div class="yq-main-left">
							<section class="yq-news-list">
							<#list articles as article>
								<div class="subject-item">
									<div class="s-content">
										<h3 class="s-title">
											<a href="${base}/article/${article.id}.html" target="_blank">${article.title}</a>
										</h3>
										<p class="s-info">
											<span>${article.createTime}</span>
										</p>
										<p class="s-desc">
											${article.descr}...
										</p>
										<p class="tags"></p>
									</div>
								</div>
							</#list>
							</section>
						</div>
					</div>
					<#include "page.ftl"/>
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