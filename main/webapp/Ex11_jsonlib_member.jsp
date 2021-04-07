<%@page import="net.sf.json.JSONArray"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="kr.or.bit.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		json 객체 변환
		
		1. JSONObject 사용하면 >> {} 생성
		2. JSONArray 사용하면 >> [{}{}] 생성
	
	*/
	Member member = new Member();
	//json 객체
	
	JSONObject objmember = JSONObject.fromObject(member);
	//{"address":"서울시 강남구","admin":"1","password":"1004","username":"bit"}
	
%>

<%=objmember%>
<hr>
<%
	List<Member> memberlist = new ArrayList<>();

	memberlist.add(new Member("hong","1004","서울시 강남구", "0"));
	memberlist.add(new Member("kim","1004","서울시 강남구", "1"));
	memberlist.add(new Member("park","1004","서울시 강남구", "0"));
	
	JSONArray memberarr = JSONArray.fromObject(memberlist);
	
%>
<%=memberarr%>