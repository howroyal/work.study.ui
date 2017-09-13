<#if page.pageCount gt 1>
<nav class="paging">
	<ul class="pagination pagination-lg">
		<#if page.index == 1>
		<li class="disabled">
			<span aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
			</span>
		</li>
		<li class="active"><span>1<span class="sr-only">(current)</span></span></li>
		<#else>
		<li>
			<a href="#" aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
			</a>
		</li>
		<li><a href="#">1</a></li>
		</#if>
		<#if page.begin gt 2>	
		<li class="disabled"><a href="">.....</a></li>
		</#if>
		<#if page.begin != 0>
		<#list page.begin..page.end as i>
			<#if i == page.index>
			<li class="active"><span>${i}<span class="sr-only">(current)</span></span></li>
			<#else>
			<li><a href="#">${i}</a></li>
			</#if>
		</#list>
		</#if>
		<#if (page.end + 1) lt page.pageCount>
			<li class="disabled"><a href="">.....</a></li>
		</#if>
		<#if page.index == page.pageCount>
		<li class="active"><span>${page.index}<span class="sr-only">(current)</span></span></li>
		<li class="disabled">
			<span aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
			</span>
		</li>
		<li class="disabled">
	      <span aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </span>
	    </li>
		<#else>
		<li><a href="#">${page.pageCount}</a></li>
		<li>
	      <a href="#" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
		</#if>
	</ul>
</nav>
</#if>