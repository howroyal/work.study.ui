<#assign base=request.contextPath />
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>文章管理列表</title> 
  <meta name="keywords" content="文章管理列表" />
  <meta name="description" content="文章管理列表" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <meta name="author" content="">
  <!-- Stylesheets -->
  <link href="${base}/backend/style/bootstrap.css" rel="stylesheet">
  <!-- Font awesome icon -->
  <link rel="stylesheet" href="../../backend/style/font-awesome.css"> 
  <!-- jQuery UI -->
  <link rel="stylesheet" href="../../backend/style/jquery-ui.css"> 
  <!-- Calendar -->
  <link rel="stylesheet" href="../../backend/style/fullcalendar.css">
  <!-- prettyPhoto -->
  <link rel="stylesheet" href="../../backend/style/prettyPhoto.css">  
  <!-- Star rating -->
  <link rel="stylesheet" href="../../backend/style/rateit.css">
  <!-- Date picker -->
  <link rel="stylesheet" href="../../backend/style/bootstrap-datetimepicker.min.css">
  <!-- CLEditor -->
  <link rel="stylesheet" href="../../backend/style/jquery.cleditor.css"> \
  <!-- Bootstrap toggle -->
  <link rel="stylesheet" href="../../backend/style/bootstrap-switch.css">
  <!-- Main stylesheet -->
  <link href="../../backend/style/style.css" rel="stylesheet">
  <!-- Widgets stylesheet -->
  <link href="../../backend/style/widgets.css" rel="stylesheet">   
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="../../backend/bootstrap_table/bootstrap-table.min.css">
  <!-- HTML5 Support for IE -->
  <!--[if lt IE 9]>
  <script src="../../backend/js/html5shim.js"></script>
  <![endif]-->

</head>
<body>
<div class="navbar navbar-fixed-top bs-docs-nav" role="banner">

    <div class="conjtainer">

      <!-- Navigation starts -->
      <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">         

        <!-- Search form -->
        <form class="navbar-form navbar-left" role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
        <!-- Links -->
        <ul class="nav navbar-nav pull-right">
          <li class="dropdown pull-right">            
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
              <i class="icon-user"></i> 管理员 <b class="caret"></b>              
            </a>
            
            <!-- Dropdown menu -->
            <ul class="dropdown-menu">
              <li><a href="#"><i class="icon-user"></i> 简介</a></li>
              <li><a href="#"><i class="icon-cogs"></i> 设置</a></li>
              <li><a href="login.html"><i class="icon-off"></i> 退出</a></li>
            </ul>
          </li>
          
        </ul>
      </nav>

    </div>
  </div>

<!-- Main content starts -->

<div class="content">

  	<!-- Sidebar -->
    <div class="sidebar">
        <div class="sidebar-dropdown"><a href="#">Navigation</a></div>

        <ul id="nav">                           
          <li><a href="charts.html"><i class="icon-bar-chart"></i> Charts</a></li> 
          <li><a href="tables.html" class="open"><i class="icon-table"></i>文章管理</a></li>
          <li><a href="forms.html"><i class="icon-tasks"></i> Forms</a></li>
          <li><a href="ui.html"><i class="icon-magic"></i> User Interface</a></li>
          <li><a href="calendar.html"><i class="icon-calendar"></i> Calendar</a></li>
        </ul>
    </div>

    <!-- Sidebar ends -->

  	<!-- Main bar -->
  	<div class="mainbar">
	    <!-- Matter -->
	    <div class="matter">
        <div class="container">

          <!-- Table -->
            <div class="row">
              <div class="col-xs-12">
                <div class="widget">
                <div class="widget-head">
				<form class="form-inline">类别:
				  <div class="form-group">
					<select class="form-control">
					  <option value="0">全部类别</option>
					  <option value="1">课程介绍</option>
					  <option value="2">项目介绍</option>
					  <option value="3">招生问答</option>
					  <option value="4">技术文章</option>
					  <option value="5">资料下载</option>
					  <option value="6">首页文章</option>
				</select>
				  </div>
				  <button id="addButton" type="button" class="btn btn-success">
				 	<span class="glyphicon glyphicon-plus"></span> 
				 	 新增文章
				  </button>	
				  
				  <button id="addButton" type="button" class="btn btn-success">
				 	<span class="glyphicon glyphicon-plus"></span> 
				 	 查询
				  </button>		  
				</form>	
                  <div class="clearfix"></div>
                </div>
                  <div class="widget-content">
					<table id="table"></table>
                  </div>
                </div>
              </div>
            </div>      
        </div>
		  </div>
    </div>

   <!-- Mainbar ends -->	    	
   <div class="clearfix"></div>
</div>
<!-- Content ends -->

<!-- Footer starts -->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
            <!-- Copyright info -->
            <p class="copy">Copyright &copy; 2012 | <a href="#">Your Site</a> </p>
      </div>
    </div>
  </div>
</footer> 	
<!-- Footer ends -->
<!-- Scroll to top -->
<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span> 
<div class="modal fade" id="deleteModal" role="dialog"
	aria-labelledby="deleteModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header bg-primary">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="deleteModalLabel">删除文章</h4>
			</div>
			
			<div class="modal-body">
			<div class="deleteAlert alert alert-warning alert-dismissable hide">
				删除错误。
			</div>
			<input type="hidden" id="removeId"/>
				该操作暂时不可恢复,确认删除此文章吗?
			</div>

			<div class="modal-footer" style="text-align: center">
				<button type="button" class="btn btn-default" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i>取消</button>
				<button type="button" class="btn btn-primary" id="deleteSubmitBtn"><i class="glyphicon glyphicon-ok"></i>确定</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal -->
</div>

<#include "article_new.ftl">
<#include "article_edit.ftl">

<!-- JS -->
<script src="../../backend/js/jquery.js"></script> <!-- jQuery -->
<script src="../../backend/js/bootstrap.js"></script> <!-- Bootstrap -->
<script src="../../backend/js/jquery-ui-1.9.2.custom.min.js"></script> <!-- jQuery UI -->
<script src="../../backend/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
<script src="../../backend/js/jquery.rateit.min.js"></script> <!-- RateIt - Star rating -->
<script src="../../backend/js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->

<!-- jQuery Flot -->
<script src="../../backend/js/excanvas.min.js"></script>
<script src="../../backend/js/jquery.flot.js"></script>
<script src="../../backend/js/jquery.flot.resize.js"></script>
<script src="../../backend/js/jquery.flot.pie.js"></script>
<script src="../../backend/js/jquery.flot.stack.js"></script>

<!-- jQuery Notification - Noty -->
<script src="../../backend/js/jquery.noty.js"></script> <!-- jQuery Notify -->
<script src="../../backend/js/themes/default.js"></script> <!-- jQuery Notify -->
<script src="../../backend/js/layouts/bottom.js"></script> <!-- jQuery Notify -->
<script src="../../backend/js/layouts/topRight.js"></script> <!-- jQuery Notify -->
<script src="../../backend/js/layouts/top.js"></script> <!-- jQuery Notify -->
<!-- jQuery Notification ends -->

<script src="../../backend/js/sparklines.js"></script> <!-- Sparklines -->
<script src="../../backend/js/jquery.cleditor.min.js"></script> <!-- CLEditor -->
<script src="../../backend/js/bootstrap-datetimepicker.min.js"></script> <!-- Date picker -->
<script src="../../backend/js/bootstrap-switch.min.js"></script> <!-- Bootstrap Toggle -->
<script src="../../backend/js/filter.js"></script> <!-- Filter for support page -->
<script src="../../backend/js/custom.js"></script> <!-- Custom codes -->
<script src="../../backend/js/charts.js"></script> <!-- Charts & Graphs -->
<!-- Latest compiled and minified JavaScript -->
<script src="../../backend/bootstrap_table/bootstrap-table.min.js"></script>

<!-- Latest compiled and minified Locales -->
<script src="../../backend/bootstrap_table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="../../js/admin/article_manager.js"></script>
</body>
</html>