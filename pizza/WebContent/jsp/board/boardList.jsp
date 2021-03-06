<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>struts2 board</title>
	<link rel="stylesheet" href="../css/board.css" type="text/css">
</head>
<body>
<br>
<table width="100%"  border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td align="center"><h3>struts2 board</h3></td>
		</tr>
</table>

<table width="100%"  border="0" cellspacing="0" cellpadding="2">

	<tr align="center" bgcolor="#F3F3F3">
		<td width="50"><strong>number</strong></td>
		<td><strong>title</strong></td>
		<td width="70"><strong>writer</strong></td>
		<td width="80"><strong>date</strong></td>
		<td width="50"><strong>count</strong></td>
	</tr>
	<tr bgcolor="#777777">
		<td height="1" colspan="5"></td>
	</tr>
		
	<s:iterator value="list" status="stat">
		<s:url id="viewURL" action="viewAction" >
			<s:param name="seqarg">
				<s:property value="seq" />
			</s:param>
			<s:param name="currentPage">
				<s:property value="currentPage" />
			</s:param>
		</s:url>
		
		<tr bgcolor="#FFFFFF"  align="center">
			<td><s:property value="seq" /></td>
			<td align="left"> &nbsp;
				<s:a href="%{viewURL}">
					<s:property value="title" />
				</s:a>
			</td>
			<td align="center"><s:property value="writer" /></td>
			<td align="center"><s:property value="regdate" /></td>
			<td><s:property value="hit" /></td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="5"></td>
		</tr>
	</s:iterator>
		
	<s:if test="list.size() <= 0">
		<tr bgcolor="#FFFFFF"  align="center">
			<td colspan="5">There is no post.</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="5"></td>
		</tr> 
	</s:if>
	<tr align="center">
		<td colspan="5">
			<s:property value="pagingHtml"  escape="false" />  
		</td>
	</tr>	
	<tr align="right">
		<td colspan="5">
			<input type="button" value="write" 
			class="inputb" onClick=
"javascript:location.href='writeFormAction.action?currentPage=<s:property value="currentPage" />'">
		</td>
	</tr>
</table>
</body>
</html>