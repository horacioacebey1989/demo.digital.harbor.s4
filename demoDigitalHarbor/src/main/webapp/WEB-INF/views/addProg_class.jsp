<%@ include file="header.jsp" %>

	<!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Content Row -->
          <div class="row">
            <div class="col-sm-6 offset-sm-3 text-center"">
            <div class="card shadow mb-4">
	            <div class="card-header py-3">
	              <h6 class="m-0 font-weight-bold text-primary">Add Class Schedule</h6>
	            </div>
	            <div class="card-body">
					<form:form action="addProg_classDetail" name="f" method="post" modelAttribute="prog_class" onsubmit="return validLogin();">
					
					<fieldset>
					
					<div class="form-group col-sm-3 offset-sm-4 text-center">
					  <label class="col-form-label" for="id_student">ID Student:</label>
					   	<form:input type="number" path="id_student" required='true' class="form-control"/>
						<form:errors path="id_student" class="form-control"/><br/>
					</div>
					
					<div class="form-group">
					  	<label class="col-form-label" for="last_name">Classes</label>
					 	<form:select path="code" id="classes_select" name="classes_select">
					      <c:forEach var="item" items="${classesData}">
					        <form:option path="code" value="${item.code}">${item.title}</form:option>
					      </c:forEach>
					    </form:select>
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