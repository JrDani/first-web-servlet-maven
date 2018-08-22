<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="meta" fragment="true" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<!DOCTYPE html>
<html>
 <jsp:invoke fragment="meta"/>
 </head>
 <body>   
      <jsp:invoke fragment="header"/>   
    
      <jsp:doBody/>   
  
      <jsp:invoke fragment="footer"/>  
  </body>
</html>