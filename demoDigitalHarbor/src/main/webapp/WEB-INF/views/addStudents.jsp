<%@ include file="header.jsp" %>

	<!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Content Row -->
          <div class="row">
            <div class="col-sm-6 offset-sm-3 text-center"">
            <div class="card shadow mb-4">
	            <div class="card-header py-3">
	              <h6 class="m-0 font-weight-bold text-primary">Add Students</h6>
	            </div>
	            <div class="card-body">
					<form:form action="addStudentsDetail" name="f" method="post" modelAttribute="students" onsubmit="return validLogin();">
					
					<fieldset>
					
					<div class="form-group">
					  <label class="col-form-label" for="first_name">First Name:</label>
					   	<form:input path="first_name" required='true' class="form-control"/>
						<form:errors path="first_name" class="form-control"/><br/>
					</div>
					
					<div class="form-group">
					  <label class="col-form-label" for="last_name">Last Name:</label>
					 	<form:input path="last_name" required='true' class="form-control"/>
						<form:errors path="last_name" class="form-control"/>
					</div>
					
					</fieldset>
					
					
					<input type="submit" value="Add Student" class="btn btn-primary"/>
					
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