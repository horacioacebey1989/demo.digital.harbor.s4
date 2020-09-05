<%@ include file="header.jsp" %>

	<!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Content Row -->
          <div class="row">
            <div class="col-sm-6 offset-sm-3 text-center"">
            <div class="card shadow mb-4">
	            <div class="card-header py-3">
	              <h6 class="m-0 font-weight-bold text-primary">Edit Students</h6>
	            </div>
	            <div class="card-body">
					<form:form action="updateStudentsDetail" name="f" method="post" modelAttribute="studentsDetails" onsubmit="return validLogin();">
					
					<fieldset>
					<form:input type="hidden" path="id_student" value="${studentsDetails.id_student}"/>
					
					<div class="form-group">
					  <label class="col-form-label" for="first_name">First Name:</label>
					   	<form:input path="first_name" value="${studentsDetails.first_name}" required='true' class="form-control"/>
						<form:errors path="first_name" class="form-control"/><br/>
					</div>
					
					<div class="form-group">
					  <label class="col-form-label" for="last_name">Last Name:</label>
					 	<form:input path="last_name" value="${studentsDetails.last_name}" required='true' class="form-control"/>
						<form:errors path="last_name" class="form-control"/>
					</div>
					
					</fieldset>
					
					
					<input type="submit" value="Edit Student" class="btn btn-primary"/>
					
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