				<div class="col-md-3 technology-right">
					<div class="blo-top1">
						<div class="tech-btm">
						<!--
							<div class="search-1">
								<form action="#" method="post">
									<input type="search" name="Search" value="Search"
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Search';}"
										required=""> <input type="submit" value=" ">
							</div>
						--!>	
							<h4>最新最热</h4>
							<#if popurs ??>
							<#list popurs as article>
							<div class="blog-grids  wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".2s">
								<div class="blog-grid-left">
									<a href="${base}/article/${article.id}.html" target="_blank">
										<img src="${article.imgUrl}" class="img-responsive" alt="">
									</a>
								</div>
								<div class="blog-grid-right">
									<h5>
										<a href="${base}/article/${article.id}.html" target="_blank">${article.title}</a>
									</h5>
								</div>
								<div class="clearfix"></div>
							</div>
							</#list>
							</#if>
							<div class="twt">
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>