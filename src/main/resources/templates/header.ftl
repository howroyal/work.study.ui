<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
<div class="header" id="ban">
	<div class="container">
		<div class=" wow fadeInLeft animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInLeft;">
			<nav class="navbar navbar-default">
				<div class="navbar-header">
				 <a class="navbar-brand" href="${base}/">
       				 <img alt="Brand" style="max-height:60px;margin-top:-25px;" src="${base}/images/logo.png">
   				 </a>
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">导航栏</button>
				</div>
				<div class="collapse navbar-collapse nav-wil"
					id="bs-example-navbar-collapse-1">
					<nav class="link-effect-7" id="link-effect-7">
						<ul class="nav navbar-nav">
						<#assign pg = "${pageIndex!}">
							<li <#if pg =="home">class="active act"</#if>>
								<a href="${base}/">首页</a>
							</li>
							<li <#if pg=="course">class="active act"</#if>>
								<a href="${base}/course.html">课程介绍</a>
							</li>
							<li <#if pg=="projects">class="active act"</#if>>
								<a href="${base}/projects.html">项目介绍</a>
							</li>
							<li <#if pg=="answer">class="active act"</#if>>
								<a href="${base}/answer/1.html">招生问答</a>
							</li>
							<li <#if pg=="technology">class="active act"</#if>>
								<a href="${base}/technology/1.html">技术文章</a>
							</li>
							<li <#if pg=="book">class="active act"</#if>>
								<a href="${base}/book/1.html">资料下载</a>
							</li>
							<li <#if pg=="contact">class="active act"</#if>>
								<a href="${base}/contact.html">联系我们</a>
							</li>
						</ul>
					</nav>
				</div>
			</nav>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
</nav>
<div class="header-bottom">
<!--
	<div class="container">
		<div class="logo wow fadeInDown" data-wow-duration=".8s"
			data-wow-delay=".2s">
			<p>
				<label class="of"></label>武汉光谷java高级工程师项目实训<label class="on"></label>
			</p>
		</div>
	</div>
-->
</div>

