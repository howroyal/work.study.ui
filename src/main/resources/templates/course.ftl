<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
<#assign base=request.contextPath />
<!DOCTYPE HTML>
<html>
<head>
<title>课程介绍</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="课程介绍" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<style>
	p {
		text-indent: 2em
	}
</style>
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
<body>
	<#include "header.ftl"/>
	<!-- technology-left -->
	<div class="technology container-fluid" style="margin-top:90px;max-width:1170px;margin-bottom:5px;">
		<div class="container">
			<div class="col-md-9 technology-left">
				<div class="agile-1">
					<div class="featured-services wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".2s">
						<div class="featured-services-grids">
							<div class="col-md-4 featured-services-grid">
								<div class="featured-services-grd">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
									<h4>一对一亲自授课</h4>
									<p>从java高级工程师职责开始,中间的项目实战过程,到最后主流开源框架源代码解析,全程面对面教学.</p>
								</div>
							</div>
							<div class="col-md-4 featured-services-grid">
								<div class="featured-services-grd">
									<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
									<h4>全程项目实战</h4>
									<p>全程真实互联网项目实战,图片服务器,在线商城,订单管理,评论体系,搜索引擎,提升学员核心竞争力.</p>
								</div>
							</div>
							<div class="col-md-4 featured-services-grid">
								<div class="featured-services-grd">
									<span class="glyphicon glyphicon-fire" aria-hidden="true"></span>
									<h4>一流互联网技术</h4>
									<p>java开发框架SSM,分布式文件管理HDFS,缓存服务REDIS,文档数据库MongoDB,搜索引擎Solr,以上技术全部教会,并且深入源码解析.</p>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="fea-top">
						<h3 class="w3">课程设置说明</h3>
						<p>经过10年的互联网行业沉淀,本人发现只授课对项目上手能力完全没有任何帮助。</p>
						<p>所以本课程是全程项目实战,只有不断的做项目，在项目过程中不断的犯错,然后不断的解决错误,才能从错误处吸取经验,形成看到PRD就能动手开发的能力.</p>
						<p>经过大概4到5个项目,基本上具有3到5年的互联网行业经验，熟练掌握SSM开发框架,深入理解各种开源框架源码,完全理解高并发的分布式系统。</p>
					</div>
					</div>
					<div class="clearfix"></div>
					
					<div class="features-main">
						<div class="feature-botttom">
							<#list articles as article>
							<div class="tip-grids">
							<div class="grid-content wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".2s" onclick='window.open("${base}/article/${article.id}.html");'>
								<div class="fea-img">
									<img height=200 width=300 src="${article.imgUrl}" alt="">
								</div>
								<div class="fea-text">
									<h4>${article.title}</h4>
									<p>${article.descr}</p>
								</div>
								<div class="clearfix"></div>
							</div>
							</div>
							</#list>
							<div class="clearfix"></div>
						</div>
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