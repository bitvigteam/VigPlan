<%@ page import="com.vigplan.vo.MVo" %>
<%@ page import="com.vigplan.dao.moim.MDao" %>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>
<script type = "text/javascript">     
function cancel() {
    var msg = confirm("모임을 삭제하시겠습니까?");
    if( msg == true ) {
       document.write ("모임이 삭제되었습니다.");
       return true;
    } else {
       window.alert('취소하였습니다.');
       return false;
    }
 }
      </script>

<%
MVo moim = (MVo)request.getAttribute("moim");
	%>
	<br> <br>
		<h3><strong>모임 상세정보</strong></h3>
		<br> <br>
	<table class="table">
	<tr>
		<td>번호</td>
		<td>모임명</td>
		<td>모임날짜</td>
		<td colspan="3" align="left">모임소개</td>
	</tr>
	<tr>
	<td> <%=moim.getmNo() %></td>
	<td> <%=moim.getmTitle() %></td>
	<td> <%=moim.getmDate() %></td>
	<td> <%=moim.getmContent() %></td>
	<td> <a href="<%= request.getContextPath() %>/moim/update?mNo=<%=moim.getmNo()%>">수정</a></td>
	<td> <a href="<%= request.getContextPath() %>/moim/delete?mNo=<%=moim.getmNo()%>" onclick="return cancel()">삭제</a></td>
	</tr>
	</table>


<!--  장소 리스트  -->
<jsp:include page="/place">
	<jsp:param name="mNo" value="<%= moim.getmNo() %>"/>
</jsp:include>	
	
	
<%@include file="../includes/footer.jsp" %>