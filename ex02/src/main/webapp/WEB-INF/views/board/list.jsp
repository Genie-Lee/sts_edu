<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    
<%@include file="../includes/header.jsp" %>


            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board List page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            	<thead>
                                	<tr>
                                    	<th>#번호</th>
                                    	<th>제목</th>
                                    	<th>작성자</th>
                                    	<th>작성일</th>
                                    	<th>수정일</th>
                                	</tr>
                                </thead>
                                <c:forEach items="${list}" var="board">
                                <tr>
                                	<td><c:out value="${board.bno }" /></td>
                                	<td><c:out value="${board.title }" /></td>
                                	<td><c:out value="${board.writer }" /></td>
                                	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }"/></td>
                                	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }"/></td>
                                </tr>
                                </c:forEach>
                            </table> <!-- table 태그 끝 -->
                            
                        <!-- Model 추가 -->
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        	<div class="modal-dialog">
                        		<div class="modal-content">
                        			<div class="modal-header">
                        				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&tmies;</button>
                        			</div>
                        		</div>
                        	</div>
                        </div>
                            
                        </div>
                        <!-- end panel-body -->                    
                    </div>
                    <!-- end panel -->
            	</div>
            </div>
            <!-- /.row -->


<%@include file="../includes/footer.jsp" %>

<script type="text/javascript">

$(document).ready(function({
	
	var result = '<c:out value="${result}"/>';
	
}))
</script>

