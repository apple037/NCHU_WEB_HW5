<%@page contentType="text/html;charset=utf-8"%>
<html>
    <head>
        <title>040</title>
    </head>
    <body>
    <%
  String nm = request.getParameter("name");
  String gd = request.getParameter("gender");
  String jb = request.getParameter("jobs");
  String ta = request.getParameter("textarea1");
  String[] adj = request.getParameterValues("adj");
  String[] in =request.getParameterValues("informatique");
  out.print("<p>Your name is <b>" + nm + "</b></p>");
    out.print("<p>Your gender is <b>" + gd + "</b></p>");
      out.print("<p>Your job is <b>" + jb + "</b></p>");
      if ( adj.length == 1 ){
        out.print("<p> You are " + adj[0] + ". </p>");
      }
      else{
        out.print("<p> You are <b>" + adj[0] + "</b>");
        for(int j=1;j<adj.length;j++){
          out.print(" and <b>" + adj[j] + "</b>");
        }
        out.print(". </p>");
      }
  if ( in.length == 1 ){
    out.print("<p> Your favorite thing is <b>" + in[0] + "</b>. </p>");
  }
  else{
    out.print("<p> Your favorite things are <b>" + in[0]+"</b>");
    for(int i=1;i<in.length;i++){
      out.print(" and <b>" + in[i] + "</b>");
    }
    out.print(". </p>");
  }
    out.print("<p>You want to say: </p> " );
      out.print("<p><b>" + ta + "</b></p>");
%>

    </body>
</html>
