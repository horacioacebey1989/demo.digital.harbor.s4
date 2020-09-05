<%@ include file="header.jsp" %>


        <!-- Begin Page Content -->
        <div class="container-fluid">


          <!-- Content Row -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">List Students</h6>
            </div>
            <div class="card-body">
              	<div class="table-responsive">
              		<div class="row">
    					<div class="col text-center">
							<a class="btn btn-success btn-lg" href="${pageContext.request.contextPath}/addStudents">Add Students</a>
						</div>
					</div>
					<br>
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<thead>
					<tr class="table-primary"><th scope="col">ID</th><th scope="col">Last Name</th><th scope="col">First Name</th><th scope="col">Actions</th></tr>
					</thead>
					
					<c:forEach items="${studentsData}" var="student">
					<tbody>
					    <tr>
					        <td> <c:out value="${student.id_student}"/></td>
					        <td> <c:out value="${student.last_name}"/></td>  
					        <td> <c:out value="${student.first_name}"/> </td>
					        <td>
					           	<div class="row">
							        <form action="updateStudent">
										<input type="hidden" name="stuId" value="${student.id_student}" />
										<input type="submit" value="Edit" class="btn btn-success"/>
									</form>
						        	<form action="deleteStudent" onsubmit="return validDelete();">
										<input type="hidden" name="stuId" value="${student.id_student}" />
										<input type="submit" value="Delete" class="btn btn-danger"/>
									</form>
					        	</div>
					        </td>  
					        
					    </tr>
					</tbody>
					
					</c:forEach>
					</table>	
            	</div>
            </div>
		  </div>
		  
          </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
      
      <script type="text/javascript">
		function validDelete()
		{
			swal({
				  title: "Delete!",
				  timer: 3000,
				  icon: "success",
				});
			return true;
		}
	</script>

 <%@ include file="footer.jsp" %>