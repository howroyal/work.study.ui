<!-- 新建banner -->
<div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:800px">
		<div class="modal-content">
			<div class="modal-header bg-primary">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">新建文章</h4>
			</div>
			<div class="modal-body">
				<div class="addAlert alert alert-warning alert-dismissable hide">
				   警告！请不要提交。
				</div>
				<form class="form-horizontal" role="form" id='addForm'>
					<div class="form-group">
						<label for="title" class="col-lg-2 control-label">文章标题<font color="red">*</font>:</label>
						<div class="col-lg-10">
							<input type="text" class="form-control" id="title" name="title" maxlength="50"/>
						</div>
					</div>
					<div class="form-group">
						<label for="categoryId" class="col-lg-2 control-label">所属类别:</label>
						<div class="col-lg-10">
							<select class="form-control" id="categoryId" name="categoryId">
							  <option value="0">全部类别</option>
							  <option value="1">课程介绍</option>
							  <option value="2">项目介绍</option>
							  <option value="3">招生问答</option>
							  <option value="4">技术文章</option>
							  <option value="5">资料下载</option>
							  <option value="6">首页文章</option>
							  <option value="7">Banner</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="theTop" class="col-lg-2 control-label">是否置顶:</label>
						<div class="col-lg-10">
							<select class="form-control" id="theTop" name="theTop">
							  <option value="true">置顶</option>
							  <option value="false">不置顶</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="imgUrl" class="col-lg-2 control-label">图片URL:</label>
						<div class="col-lg-10">
							<input type="text" class="form-control" id="imgUrl" name="imgUrl" maxlength="100"/>
						</div>
					</div>
					<div class="form-group">
                          <label for="descr" class="col-lg-2 control-label">描述:</label>
                          <div class="col-lg-10">
                            <textarea class="col-lg-12" id="descr" name="descr"></textarea>
                          </div>
                    </div>      
					<div class="form-group">
                          <label for="content" class="col-lg-2 control-label">内容:</label>
                          <div class="col-lg-10">
                            <textarea class="cleditor" id="content" name="content"></textarea>
                          </div>
                    </div>       
				</form>
			</div>
			<div class="modal-footer" style="text-align: center">
				<button type="button" class="btn btn-danger" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i>取消</button>
				<button type="button" class="btn btn-primary" id="createBtn"><i class="glyphicon glyphicon-ok"></i>确定</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal -->
</div>