<#assign base=request.contextPath />
<!DOCTYPE HTML>
<html>
<head>
<title>项目介绍</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="${base}/css/style.css" rel='stylesheet' type='text/css' />
<link href="${base}/css/component.css" rel="stylesheet" type="text/css" />
<script src="${base}/js/jquery-1.11.1.min.js"></script>
<script src="${base}/js/bootstrap.min.js"></script>
<script src="${base}/js/modernizr.custom.js"></script>
</head>
<body>
	<#include "header.ftl"/>
		<!-- technology-left -->
		<div class="technology">
			<div class="container">
				<div class="col-md-9 technology-left">
					<div class="music">
						<div class="latest">
						<#list articles as article>
							<div class="tip-grids">
								<div class="col-md-6 tip-grid">
									<figure class="effect-julia">
										<a href="${base}/article/${article.id}.html" target="_blank">
											<img src="${article.imgUrl}" alt="">
										</a>
									</figure>
								</div>
								<div class="col-md-6 tip-grid-right">
									<div class="tip-gd-left">
										<h4><a href="${base}/article/${article.id}.html" target="_blank">${article.title}</a></h4>
										<p>${article.descr}...</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</#list>
						</div>
						<!--
						<div class="effect-grid">
							<h3 class="w3">PROGRAMS</h3>
							<ul class="grid cs-style-3">
								<li>
									<figure>
										<img src="images/m1.jpg" alt="img02">
										<figcaption>
											<h4>PROGRAMS</h4>
										</figcaption>
									</figure>
								</li>
								<div class="clearfix"></div>
							</ul>
						</div>
						-->
					</div>
				</div>
				<!-- technology-right -->
				<#include "technologr_right.ftl">
				<!-- technology-right -->
			</div>
		</div>
		<#include "footer.ftl">
</body>
</html>