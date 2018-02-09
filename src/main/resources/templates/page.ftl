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
			<a href="${base}/${pageIndex}/${page.index - 1}.html" aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
			</a>
		</li>
		<li><a href="${base}/${pageIndex}/1.html">1</a></li>
		</#if>
		<#if page.begin gt 2>	
		<li class="disabled"><a href="javascript:avoid(0);">.....</a></li>
		</#if>
		<#if page.begin != 0>
		<#list page.begin..page.end as i>
			<#if i == page.index>
			<li class="active"><span>${i}<span class="sr-only">(current)</span></span></li>
			<#else>
			<li><a href="${base}/${pageIndex}/${i}.html">${i}</a></li>
			</#if>
		</#list>
		</#if>
		<#if (page.end + 1) lt page.pageCount>
			<li class="disabled"><a href="javascript:avoid(0);">.....</a></li>
		</#if>
		<#if page.index == page.pageCount>
		<li class="active"><span>${page.index}<span class="sr-only">(current)</span></span></li>
		<li class="disabled">
	      <span aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </span>
	    </li>
		<#else>
		<li><a href="${base}/${pageIndex}/${page.pageCount}.html">${page.pageCount}</a></li>
		<li>
	      <a href="${base}/${pageIndex}/${page.index + 1}.html" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
		</#if>
	</ul>
</nav>
</#if>