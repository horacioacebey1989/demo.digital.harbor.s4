<%@ include file="header.jsp" %>


   

        <!-- Begin Page Content -->
        <div class="container-fluid">


          <!-- Content Row -->
            <div class="card shadow mb-4">
	            <div class="card-header py-3">
	              <h6 class="m-0 font-weight-bold text-primary">List Classes</h6>
	            </div>
	            <div class="card-body">
	            	<div class="row">
    					<div class="col text-center">
							<a class="btn btn-success btn-lg" href="${pageContext.request.contextPath}/addClasses">Add Class</a>
						</div>
					</div>
					<br>
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
						<tr class="table-primary"><th scope="col">Code</th><th scope="col">Title</th><th scope="col">Description</th><th scope="col">Actions</th></tr>
						</thead>
						
						<c:forEach items="${classesData}" var="classes">
						<tbody>
						    <tr>
						        <td> <c:out value="${classes.code}"/></td>
						        <td> <c:out value="${classes.title}"/></td>  
						        <td> <c:out value="${classes.description}"/> </td>
						        <td>
						           	<div class="row">
								        <form action="updateClasses">
											<input type="hidden" name="clasId" value="${classes.code}" />
											<input type="submit" value="Edit" class="btn btn-success"/>
										</form>
										<form action="deleteClasses" onsubmit="return validDelete();">
											<input type="hidden" name="clasId" value="${classes.code}" />
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