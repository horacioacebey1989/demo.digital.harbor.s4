<%@ include file="header.jsp" %>


        <!-- Begin Page Content -->
        <div class="container-fluid">


          <!-- Content Row -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">List schedule</h6>
            </div>
            <div class="card-body">
              	<div class="table-responsive">
              		<div class="row">
    					<div class="col text-center">
							<a class="btn btn-success btn-lg" href="#">By Students</a>
							<a class="btn btn-success btn-lg" href="#">By Class</a>
						</div>
					</div>
					<br>
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<thead>
					<tr class="table-primary"><th scope="col">ID</th><th scope="col">ID Student</th><th scope="col">Code Mat.</th></tr>
					</thead>
					
					<c:forEach items="${progData}" var="prog">
					<tbody>
					    <tr>
					        <td> <c:out value="${prog.id_prog_class}"/></td>
					        <td> <c:out value="${prog.id_student}"/></td>  
					        <td> <c:out value="${prog.code}"/> </td> 
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
      
 <%@ include file="footer.jsp" %>