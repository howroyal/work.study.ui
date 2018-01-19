<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
<#assign base=request.contextPath />
<!DOCTYPE HTML>
<html>
<head>
<title>${article.title}</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="${base}/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="${base}/css/style.css" rel='stylesheet' type='text/css' />
<script src="${base}/js/jquery-1.11.1.min.js"></script>
<script src="${base}/js/bootstrap.min.js"></script>
</head>
<body>
	<#include "header.ftl">
		<!-- technology-left -->
		<div class="technology container-fluid" style="margin-top:90px;max-width:1170px;margin-bottom:5px;">
			<div class="container">
				<div class="col-md-9 technology-left">
					<div class="agileinfo">
						<h5 class="top" style="text-align:center;">${article.title}</h5>
						<div class="single">
							<img src="${article.imgUrl}" class="img-responsive center-block" alt="">
							<div class="b-bottom">
								<p class="sub">${article.content}</p>
								<p class="sub" style="float:right;margin-top:-0.8em;">
									${article.createTime}<span
										class="glyphicon glyphicon-thumbs-up"></span>${article.viewCount}
								</p>
							</div>
						</div>
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