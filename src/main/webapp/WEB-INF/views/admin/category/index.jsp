<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
//Tạo bảng quản lý sản phẩm
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Quản lý loại sản phẩm</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>

//có tên là “base” với giá trị là “/admin/category”. Biến này có phạm vi là “request”, nghĩa là nó chỉ tồn tại trong yêu cầu hiện tại từ client.
<h4 class="l
<c:set var="base" value="/admin/category" scope="request" />

//Hiện thông báo
<h4 class="label label-success">${message}${param.message}</h4>



//Tạo ra các tab, tab 1 được đặt làm mặc định
<ul class="nav nav-tabs">
	<li class="active"><a data-toggle="tab" href="#tab1">Edit</a></li>
	<li><a data-toggle="tab" href="#tab2">List</a></li>
</ul>

//Chứa nội dung của các tab
<div class="tab-content">
	<div id="tab1" class="tab-pane fade in active">
		<jsp:include page="_form.jsp" />
	</div>
	<div id="tab2" class="tab-pane fade">
		<jsp:include page="_table.jsp" />
	</div>

</div>