<%@ page import="java.util.Date" %>
TOMCAT-CLUSTER 3
<br/>
Session Id : <%=request.getSession().getId()%>
<br/>
Is it New Session : <%=request.getSession().isNew()%>
<br/>
Session Creation Date : <%=new Date(request.getSession().getCreationTime())%>
<br/>
Session Access Date : <%=new Date(request.getSession().getLastAccessedTime())%>
<%
    String doit = request.getParameter("do");
    String text = request.getParameter("text");
    if (doit != null && doit.equals("do")) {
        session.setAttribute("foo", text);
    }
    System.out.println("tc");
%>

<br/><%="session " + session.getAttribute("foo")%>
