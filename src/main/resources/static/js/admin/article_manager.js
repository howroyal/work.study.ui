var Table = {
	init : function(){
		$('table').bootstrapTable({
			url: 'articles',
			method : 'GET',
			dataType:'json',
			contentType : 'application/x-www-form-urlencoded',
			pageNumber:1,                       //初始化加载第一页，默认第一页
			pageSize: 10,
			pageList: [10, 25, 50, 100],
			pagination: true,
			sidePagination : 'server',
			queryParams : Table.queryParams,
			responseHandler : Table.responseHandler,
		    columns: [{
		        field: 'id',
		        title: 'id',
		        visible : false
		    }, {
		        field: 'contentId',
		        title: 'contentId',
		        visible : false
		    }, {
		        field: 'categoryName',
		        title: '类别',
		        width:150
		    }, {
		        field: 'title',
		        title: '标题',
		        width : 150
		    }, {
		        field: 'imgUrl',
		        title: '图片',
		        width:180,
		        formatter : Table.picFormatter
		    }, 
		    {
		        field: 'descr',
		        title: '描述'
		    }, 
		    {
		        field: 'deleted',
		        title: '状态',
		        formatter : function(value, row, index){
		        	if(!value){
		        		return '<span class="label label-success">有效</span>';
		        	}else{
		        		return '<span class="label label-danger">已删除</span>';
		        	}
		        }
		    },{
		        field: 'theTop',
		        title: '是否置顶',
		        formatter : function(value, row, index){
		        	if(value){
		        		return '<span class="label label-success">已置顶</span>';
		        	}else{
		        		return '<span class="label label-danger">未置顶</span>';
		        	}
		        	
		        }
		    },
		    {
		        field: 'opt',
		        title: '操作',
		        formatter : Table.formatter,
		        events: Table.events,
		        width : 80
		    }]
		});
	},	
	
	events : {
		'click .recoverBtn' : function(e, value, row, index){
			$.ajax({
				url : 'deleted',
				method : 'POST',
				data :{
					id : row.id,
					deleted : false
				},
				success : function(){
					$('table').bootstrapTable('refresh');
				},
				error : function(){
					
				}
				
			});
		},
		
		'click .deleteBtn' : function(e, value, row, index){
			$('#removeId').val(row.id);
			$('#deleteModal').modal('show');
		},
		
		'click .editBtn' : function(e, value, row, index){
			//设值
			$('#editId').val(row.id);
			$('#editTitle').val(row.title);
			$('#editcategoryId').val(row.categoryId);
			$('#editimgUrl').val(row.imgUrl);
			$('#editdescr').val(row.descr);
			$('#edittheTop').val(row.theTop+"");
			$.ajax({
				url : 'getContent',
				method : 'get',
				data : {contentId : row.contentId},
				error : function(){
					$('#editModal').modal('show');
				},
				success : function(res){
					$('#editcontent').val(res);
					$('#editModal').modal('show');
				}
			});
		}
		
	},
	picFormatter : function(value, row, index){
		var html = ""
		+"<div class='container-fluid'>"
		+"<div class='row-fluid'>"
		+"	<div class='span12'>"
		+"		<img height=60 width=200 alt='-' src='" + value + "' />"
		+"	</div>"
		+"</div>"
		+"</div>"
		return html;
	},
	formatter : function(value, row, index){
		var button = [];
    	var deleted = row.deleted;
    	var recoveryBtn = '<button class="btn btn-xs btn-success recoverBtn"><i class="icon-ok"></i> </button>';
    	if(deleted){
    		button.push(recoveryBtn);
    	}else {
    		var deleteBtn = '<button class="btn btn-xs btn-warning editBtn"><i class="icon-pencil"></i> </button>';
    		button.push(deleteBtn);
    		var editBtn = '<button class="btn btn-xs btn-danger deleteBtn"><i class="icon-remove"></i> </button>';
    		button.push(editBtn);
    	}
    	
    	return button.join("");
    
	},
	queryParams : function(params){
		var param = {
				type : $('#type').val(),
				//type : 0,
				pageSize: params.limit,   //页面大小
				pageNum: params.offset/10,  //页码		
		}
		
		return param;
	},
	responseHandler : function(res){
		if (res) {
			return {
				"rows" : res.content,
				"total" : res.totalElements
			};
		} else {
			return {
				"rows" : [],
				"total" : 0
			};
		}
	}
}

var Binder = {
	
	bindSearchBtn : function(){
		$('#type').change(function(){
			$('table').bootstrapTable('selectPage',1);
		})
		
		//;
	},
		
	bindAddButton : function(){
		$('#addButton').click(function(){
			$('#myModal').modal('show');
		});
	},
	
	bindCreateBtn : function(){
		$('#createBtn').click(function(){
			var title = $('#title').val();
			var categoryId = $('#categoryId').val();
			var categoryName = $('#categoryId option:selected').text();
			var imgUrl = $('#imgUrl').val();
			var descr = $('#descr').val();
			var content = $('#content').val();
			var theTop = $('#theTop').val();
			$.ajax({
				url : 'add',
				method : 'post',
				data : {
					title : title,
					categoryId : categoryId,
					categoryName : categoryName,
					theTop : theTop,
					imgUrl : imgUrl,
					descr : descr,
					content : content
				},
				error : function(){
					$('.addAlert').html("新增失败!");
					$('.addAlert').show();
				},
				success : function(res){
					if(!res.success){
						$('.addAlert').html(res.message);
						$('.addAlert').removeClass('hide');
						return false;
					}
					$('#addForm')[0].reset();
					$('#myModal').modal('hide');
					$('table').bootstrapTable('refresh');
				}
			});
			
		});
	},
	
	bindDeleteBtn : function(){
		$('#deleteSubmitBtn').click(function(){
			$.ajax({
				url : 'deleted',
				method : 'POST',
				data :{
					id : $('#removeId').val(),
					deleted : true
				},
				success : function(res){
					if(!res.success){
						$('.deleteAlert').html(res.message);
						$('.deleteAlert').removeClass('hide');
						setTimeout(function(){$('.deleteAlert').addClass('hide')},3000);
						return false;
					}
					$('#deleteModal').modal('hide');
					$('table').bootstrapTable('refresh');
				},
				error : function(){
					
				}
			});
		})
	},
	
	bindEditBtn : function(){
		$('#editBtn').click(function(){
			//设值
			$.ajax({
				url : 'edit',
				method : 'POST',
				data :{
					id : $('#editId').val(),
					title : $('#editTitle').val(),
					imgUrl : $('#editimgUrl').val(),
					categoryId : $('#editcategoryId').val(),
					theTop : $('#edittheTop').val(),
					categoryName : $('#editcategoryId option:selected').text(),
					descr : $('#editdescr').val(),
					content : $('#editcontent').val(),
					deleted : false
				},
				success : function(res){
					if(!res.success){
						$('.editAlert').html(res.message);
						$('.editAlert').removeClass('hide');
						setTimeout(function(){$('.editAlert').addClass('hide')},3000);
						return false;
					}
					$('#editModal').modal('hide');
					$('#editForm')[0].reset();
					$('table').bootstrapTable('refresh');
				},
				error : function(){
					$('.editAlert').html("网络错误,请联系管理员");
					$('.editAlert').removeClass('hide');
					setTimeout(function(){$('.editAlert').addClass('hide')},3000);
					return false;
				}
			});
		})
	},
	
	initWebLogCount : function(){

		//设值
		$.ajax({
			url : '/weblog/totalCount',
			method : 'get',
			data :{},
			success : function(res){
				$('#webLogCount').html("总访问量:" + res);
			},
			error : function(){}
		});
	
		
		
	}

}

$(function(){
	Table.init();
	Binder.bindSearchBtn();
	Binder.bindAddButton();
	Binder.bindCreateBtn();
	Binder.bindDeleteBtn();
	Binder.bindEditBtn();
	Binder.initWebLogCount();
}); 