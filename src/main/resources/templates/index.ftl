<#assign base=request.contextPath />
<!DOCTYPE HTML>
<html>
<head>
<title>java实训基地 首页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="武汉java培训 javaEE高级软件工程师 java技术资料下载 主流互联网技术 电子书下载" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet">
<script src="js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!-- //animation-effect -->
</head>
<body>
	<#include "header.ftl">
	<!-- banner -->
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="carousel slide" data-ride="carousel" data-interval="3000" id="carousel-374315">
					<ol class="carousel-indicators">
						<li data-slide-to="0" data-target="#carousel-374315" class="active"></li>
						<li data-slide-to="1" data-target="#carousel-374315"></li>
						<li data-slide-to="2" data-target="#carousel-374315"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<a href="/index" target="_blank" >
								<img alt="" src="images/banner/banner-1.jpg" />
								<div class="carousel-caption">
									<h4>新资讯</h4>
									<p>焦距行业内最新最全资讯,全球视角,尽在资讯区。</p>
								</div>
							</a>	
						</div>
						<div class="item">
							<a href="/index" target="_blank" >
								<img alt="" src="images/banner/banner-2.jpg" />
								<div class="carousel-caption">
									<h4>新课程</h4>
									<p>全新的课程设计,以授课为辅,实战为主。学过不用等于没学,全程实战,熟能生巧。</p>
								</div>
							</a>	
						</div>
						<div class="item">
							<a href="/index" target="_blank" >
								<img alt="" src="images/banner/banner-3.jpg" />
								<div class="carousel-caption">
									<h4>新项目</h4>
									<p>高并发的分布式一线互联网电商项目全程指导,从前端到后台，一网打尽。</p>
								</div>
							</a>	
						</div>
					</div>
					<a data-slide="prev" href="#carousel-374315"
						class="left carousel-control">‹</a> <a data-slide="next"
						href="#carousel-374315" class="right carousel-control">›</a>
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
						<div class="tch-img">
							<a href="${base}/article/${article.id}.html" target="_blank">
								<div class='container-fluid'>
									<div class='row-fluid'>
										<div class='span12'>
											<img height=300 width=750 alt='-' src='${article.imgUrl}' />
										</div>
									</div>
								</div>
							</a>
						</div>
						<h3>
							<a href="${base}/article/${article.id}.html" target="_blank">${article.title}</a>
						</h3>
						<p>${article.descr}...</p>
						<!--
						<div class="bht1">
							<a href="${base}/article/${article.id}.html" target="_blank">阅读全文</a>
						</div>
						-->
						<div class="clearfix"></div>
						</#list>
					</div>
					<!-- technology-top -->
					<!-- technology-top -->
					<div class="w3ls">
						<#list secondArticles as article>
							<div class="col-md-6 w3ls-left wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".2s">
								<div class="tc-ch">
									<div class="tch-img">
										<a href="${base}/article/${article.id}.html" target="_blank"> 
										<img src="${article.imgUrl}" class="img-responsive" alt=""></a>
									</div>
									<h3>
										<a href="${base}/article/${article.id}.html" target="_blank">${article.title}</a>
									</h3>
									<p>${article.descr}...</p>
									<div class="clearfix"></div>
								</div>
							</div>
						</#list>
						<div class="clearfix"></div>
					</div>
					<!-- technology-top -->
					<#list thridArticles as article>
					<div class="wthree">
						<div class="col-md-6 wthree-left wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".2s">
							<div class="tch-img">
								<a href="${base}/article/${article.id}.html" target="_blank">
									<img src="${article.imgUrl}" class="img-responsive" alt="">
								</a>
							</div>
						</div>
						<div class="col-md-6 wthree-right wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".2s">
							<h3>
								<a href="${base}/article/${article.id}.html" target="_blank">${article.title}</a>
							</h3>
							<p>${article.descr}...</p>
							<div class="bht1">
								<a href="${base}/article/${article.id}.html" target="_blank">Read More</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
					</#list>
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