<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
<#assign base=request.contextPath />
<!DOCTYPE HTML>
<html>
<head>
<title>java实训基地 首页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="武汉java培训 javaEE高级软件工程师 java技术资料下载 主流互联网技术 电子书下载 java工具下载" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet">
<style>
	p {
		text-indent: 2em
	}
</style>
<script src="js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!-- //animation-effect -->
</head>
<body class="container-fluid">
	<#include "header.ftl">
	<!-- banner -->
	<div class="container-fluid" style="margin-top:90px;max-width:1170px;margin-bottom:5px;">
		<div class="row-fluid">
			<div class="span12">
				<div class="carousel slide" data-ride="carousel" data-interval="3000" id="carousel">
					<ol class="carousel-indicators">
						<#list banners as article>
						<li data-slide-to="${article_index}" data-target="#carousel" class="<#if article_index == 0>active</#if>"></li>
						</#list>
					</ol>
					<div class="carousel-inner">
						<#list banners as article>
						<div class="item <#if article_index == 0>active</#if>">
							<a href="${base}/article/${article.id}.html" target="_blank">
								<img class="img-responsive center-block" alt="" src="${article.imgUrl}" />
								<div class="carousel-caption">
									<h4>${article.title}</h4>
									<p>${article.descr}</p>
								</div>
							</a>	
						</div>
						</#list>
					</div>
					<a data-slide="prev" href="#carousel"class="left carousel-control">‹</a> 
					<a data-slide="next" href="#carousel" class="right carousel-control">›</a>
				</div>
			</div>
		</div>
	</div>
	<div class="services w3l wow fadeInDown" data-wow-duration=".8s"
		data-wow-delay=".2s">
		<div class="container">
			<div class="grid_3 grid_5">
				<div class="bs-example bs-example-tabs" role="tabpanel"
					data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active">
							<a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">课程优势</a>
						</li>
						<li role="presentation" class="">
							<a href="#safari" role="tab" id="safari-tab" data-toggle="tab" aria-controls="safari">项目优势</a>
						</li>
						<li role="presentation" class="">
							<a href="#trekking" role="tab" id="trekking-tab" data-toggle="tab" aria-controls="trekking">技术优势</a>
						</li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<!--课程介绍开始-->
						<div role="tabpanel" class="tab-pane fade active in" id="expeditions" aria-labelledby="expeditions-tab">
							<div class="col-md-4 col-sm-5 tab-image">
								<img src="images/f2.jpg" class="img-responsive" alt="Wanderer">
								<span style="position:absolute; z-index:2; left:100px; top:180px;color:#FFFFFF;">首创Leader制,7*24亲手带项目</span>
							</div>
							<div class="col-md-4 col-sm-5 tab-image">
								<img src="images/f4.jpg" class="img-responsive" alt="Wanderer">
								<span style="position:absolute; z-index:2; left:100px; top:180px;color:#FFFFFF;">首创实战制,实际电商项目实战</span>
							</div>
							<div class="col-md-4 col-sm-5 tab-image">
								<img src="images/f3.jpg" class="img-responsive" alt="Wanderer">
								<span style="position:absolute; z-index:2; left:100px; top:180px;color:#FFFFFF;">首创产品制,深入理解互联网产品</span>
							</div>
							<div class="clearfix"></div>
						</div>
						<!--课程介绍结束-->
						<!--项目介绍开始-->
						<div role="tabpanel" class="tab-pane fade" id="safari" aria-labelledby="safari-tab">
							<div class="col-md-4 col-sm-5 tab-image">
								<img src="images/t1.jpg" class="img-responsive" alt="Wanderer">
								<span style="position:absolute; z-index:2; left:100px; top:180px;color:#FFFFFF;">仿京东电商网站项目</span>
							</div>
							<div class="col-md-4 col-sm-5 tab-image">
								<img src="images/t2.jpg" class="img-responsive" alt="Wanderer">
								<span style="position:absolute; z-index:2; left:100px; top:180px;color:#FFFFFF;">仿淘宝图片服务项目</span>
							</div>
							<div class="col-md-4 col-sm-5 tab-image">
								<img src="images/t3.jpg" class="img-responsive" alt="Wanderer">
								<span style="position:absolute; z-index:2; left:100px; top:180px;color:#FFFFFF;">仿京东评价体系项目</span>
							</div>
							<div class="clearfix"></div>
						</div>
						<!--项目介绍结束-->
						<!--技术优势开始-->
						<div role="tabpanel" class="tab-pane fade" id="trekking" aria-labelledby="trekking-tab">
							<div class="col-md-4 col-sm-5 tab-image">
								<img src="images/m2.jpg" class="img-responsive" alt="Wanderer">
								<span style="position:absolute; z-index:2; left:100px; top:180px;color:#FFFFFF;">10年互联网产品研发经验</span>
							</div>
							<div class="col-md-4 col-sm-5 tab-image">
								<img src="images/m1.jpg" class="img-responsive" alt="Wanderer">
								<span style="position:absolute; z-index:2; left:100px; top:180px;color:#FFFFFF;">主流大型电商网站研发经验</span>
							</div>
							<div class="col-md-4 col-sm-5 tab-image">
								<img src="images/m3.jpg" class="img-responsive" alt="Wanderer">
								<span style="position:absolute; z-index:2; left:100px; top:180px;color:#FFFFFF;">高并发分布式网站研发经验</span>
							</div>
							<div class="clearfix"></div>
						</div>
						<!--技术优势结束-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- technology-left -->
	<div class="technology">
		<div class="container">
			<div class="col-md-9 technology-left">
				<div class="tech-no">
					<!-- technology-top -->
					<div class="tc-ch wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".2s">
						<#list firstArticles as article>
						<div class="tip-grids">
						<div class="grid-content" onclick='window.open("${base}/article/${article.id}.html");'>
							<div class="tch-img">
									<div class='container-fluid'>
										<div class='row-fluid'>
											<div class='span12'>
												<img class="img-responsive" src='${article.imgUrl}' />
											</div>
										</div>
									</div>
							</div>
							<h3 style='color:#337ab7;'>
								${article.title}
							</h3>
							<p>${article.descr}...</p>
							<div class="clearfix"></div>
						</div>
						</div>
						</#list>
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