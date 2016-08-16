<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>JSTL Bug fmt:formatNumber</title>
</head>
<body>
	<c:set var="price" value="1500"/>
	<h1>Original number: ${price}</h1>
	<c:set var="setDiv1" value="${price / 1}"/>
	<c:set var="setDiv3" value="${price / 3}"/>
	<fmt:parseNumber var="parseNumDiv1" integerOnly="true" type="number" value="${price / 1}" />
	<fmt:parseNumber var="parseNumDiv3" type="number" value="${price / 3}" />
	<code>
	</code>
	<h2>Raw Values
		<ul>
			<li>setDiv1: ${setDiv1},	setDiv3: ${setDiv3} </li>
			<li style="color:red">parseNumDiv1: ${parseNumDiv1},	parseNumDiv3: ${parseNumDiv3} </li>
		</ul>
	</h2>
	<h2>Formatted Values
		<ul>
			<li>setDiv1: <fmt:formatNumber type="number" maxFractionDigits="3" value="${setDiv1}" />,
				setDiv3: <fmt:formatNumber type="number" maxFractionDigits="3" value="${setDiv3}" /></li>
			<li style="color:red">parseNumDiv1: <fmt:formatNumber type="number" maxFractionDigits="3" value="${parseNumDiv1}" />,
				parseNumDiv3: <fmt:formatNumber type="number" maxFractionDigits="3" value="${parseNumDiv3}" /></li>
		</ul>
	</h2>
</body>
</html>