<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>
<style>
tr{height:2rem}
</style>
<head>
<script type="text/javascript">
	function SearchFunction(str) {
		document.frm.mid.value = str;
		document.frm.action = "/Commfy/MBTIRead.do";
		document.frm.submit();
	}
</script>
<style>
button{background:white; border:0; height:2rem;}
input{background:white; border:0; height:2rem;}
select{background:white; border:0; height:2rem;}
tr:hover {background:white; color:black;}

</style>
</head>
<body style="background-color: clouds; float: left; display: inline">
	<div align="center">
	
		<div id="title">
		<br><br>
			<h1>MBTI 타운 목록</h1>
			<br>
		</div>

		<div>
			<br>
			<table >
				<tr style="background:white; color:black">
					<th width="200">타 운</th>
					<th width="100">코 드</th>
					<th width="100">위 치</th>
				<!-- 	<th width="100">특 징</th> -->
					<th width="100">베스트매치</th>
					<th width="100">굿매치</th>
					<th width="100">오케이매치</th>
					<th width="100">배드매치</th>
					<th width="150">워스트매치</th>
					<th width="100">직업리스트</th>

				</tr>
				
				<c:forEach var="vo" items="${mbtis }">
					<tr class="row"
						onClick="location.href='/Commfy/MBTIRead.do?mbticode=${vo.mbtiCode }'">
						<td align="center">${vo.town }</td>
						<td align="center">${vo.mbtiCode }</td>
						<td align="center">${vo.isla }</td>
				<%-- 		<td align="center">${vo.description }</td> --%>
						<td align="center">${vo.bestMatch100 }</td>
						<td align="center">${vo.okayMatch50 }</td>
						<td align="center">${vo.badMatch25 }</td>
						<td align="center">${vo.worstMatch0 }</td>
						<td align="center">${vo.jobList }</td>
					</tr>
					
					
					
					<!-- 워스트 매치 왜 안뜨냠  -->
				</c:forEach>
			</table>
			<form id="frm" name="frm" method="post">
				<input type="hidden" id="mbticode" name="mbticode">
			</form>
		</div>


	</div>
</body>

</html>