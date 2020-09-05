<%@ include file="header.jsp" %>

	<!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Content Row -->
          <div class="row">
            <div class="col-sm-6 offset-sm-3 text-center"">
            <div class="card shadow mb-4">
	            <div class="card-header py-3">
	              <h6 class="m-0 font-weight-bold text-primary">Add Class</h6>
	            </div>
	            <div class="card-body">
					<form:form action="addClassesDetail" method="post" modelAttribute="classes" onsubmit="return validLogin();">
					
					<fieldset>
					
					<div class="form-group">
					  <label class="col-form-label" for="code">Code:</label>
					   	<form:input path="code" required='true' class="form-control"/>
						<form:errors path="code" class="form-control"/><br/>
					</div>
					
					<div class="form-group">
					  <label class="col-form-label" for="title">Title:</label>
					 	<form:input path="title" required='true' class="form-control"/>
						<form:errors path="title" class="form-control"/>
					</div>
					
					<div class="form-group">
					  <label class="col-form-label" for="description">Description:</label>
					 	<form:input path="description" class="form-control"/>
						<form:errors path="description" class="form-control"/>
					</div>
					
					</fieldset>
					
					
					<input type="submit" value="Add Class" class="btn btn-primary"/>
					
					</form:form>
				</div>
			  </div>
			</div>
		 </div>
	</div>
	<script type="text/javascript">
	function validLogin()
	{
		swal({
			  title: "OK!",
			  timer: 3000,
			  icon: "success",
			});
		return true;
	}
	</script>

<%@ include file="footer.jsp" %>