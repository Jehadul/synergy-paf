<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="content-wrapper"  style="margin:0px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>PAF Year Detail</h1>
		<ul class="top-links">
			<li><a class="btn btn-block btn-primary btn-xs" href="${pageContext.request.contextPath}/pafYearList"><i
					class="fa fa-reorder"></i>PAF Year List</a></li>
			<li><a class="btn btn-block btn-primary btn-xs" href="${pageContext.request.contextPath}/newPafYearForm"><i
					class="fa fa-plus"></i>Add new PAF Year</a></li>

			<li><a class="btn btn-block btn-warning btn-xs" href="${pageContext.request.contextPath}/editPafYear/${pafYear.id}"><i class="fa fa-fw fa-edit"></i>Edit</a></li>
			<li><a class="btn btn-block btn-danger btn-xs" href="${pageContext.request.contextPath}/deletePafYear/${pafYear.id}"
				id="${pafYear.id}"
				onclick="return confirm('Are you sure you want to delete this record?');"><i
					class="fa fa-trash"></i>Delete</a></li>
		</ul>
	</section>

	<!-- Main content -->
	<section class="content">

		<div class="row">
			<div class="col-xs-12">

				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">PAF Year Detail View</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body no-padding">
						<table class="table table-striped">
							<c:if test="${!empty pafYear.name}">
								<tr>
									<th>PAF Year Name</th>
									<td>${pafYear.name}</td>
								</tr>
							</c:if>
							<c:if test="${!empty pafYear.fromDate}">
								<tr>
									<th>From Date</th>
									<td>${pafYear.fromDate}</td>
								</tr>
							</c:if>
							<c:if test="${!empty pafYear.toDate}">
								<tr>
									<th>From Date</th>
									<td>${pafYear.toDate}</td>
								</tr>
							</c:if>
							<c:if test="${!empty pafYear.remarks}">
								<tr>
									<th>Remarks</th>
									<td>${pafYear.remarks}</td>
								</tr>
							</c:if>
							<c:if test="${!empty pafYear.createdBy}">
								<tr>
									<th>Created By</th>
									<td>${pafYear.createdBy}</td>
								</tr>
							</c:if>
							
							<c:if test="${!empty pafYear.createdDate}">
								<tr>
									<th>Created By</th>
									<td><fmt:formatDate pattern = "dd-MM-yyyy hh:mm:ss a" value = "${pafYear.createdDate}" /></td>
								</tr>
							</c:if>
							<c:if test="${!empty pafYear.modifiedBy}">
								<tr>
									<th>Modified By</th>
									<td>${pafYear.modifiedBy}</td>
								</tr>
							</c:if>
							
							<c:if test="${!empty pafYear.modifiedDate}">
								<tr>
									<th>Modified Date</th>
									<td><fmt:formatDate pattern = "dd-MM-yyyy hh:mm:ss a" value = "${pafYear.modifiedDate}" /></td>
								</tr>
							</c:if>

						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
		</div>
	</section>
	<!-- /.content -->
</div>