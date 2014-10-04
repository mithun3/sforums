<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="f" uri="/WEB-INF/functions.tld"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
  <head>
    <title>${user.name} User</title>
    <jsp:include page="htmlHead.jsp"/>
  </head>
  <body>
    <jsp:include page="navBar.jsp"/>
    <h1>${user.name} User</h1>
    <table class="nameValuePairs">
      <tr>
        <th>First Name:</th>
        <td>${user.firstName}</td>
      </tr>
      <tr>
        <th>Last Name:</th>
        <td>${user.lastName}</td>
      </tr>
      <tr>
        <th>Organization:</th>
        <td>${user.organization}</td>
      </tr>
      <tr>
        <th>Title:</th>
        <td>${user.title}</td>
      </tr>
      <tr>
        <th>Email:</th>
        <td><a href="mailto:${user.email}">${user.email}</a></td>
      </tr>
      <tr>
        <th>Password:</th>
        <td><em>hidden</em></td>
      </tr>
      <tr>
        <th>Created:</th>
        <td><fmt:formatDate value="${user.created}" pattern="MMMMM d, yyyy hh:mma" /></td>
      </tr>
      <tr>
        <th>&nbsp;</th>
        <td style="padding-top: 10px;">
          <a class="button" href="<c:url value='/user_edit.html?id=${user.id}'/>">Edit</a>
          <a class="button" href="<c:url value='/user_delete.html?id=${user.id}'/>"
	       onclick="return confirm('Are you sure you wish to delete this user?');">Delete</a>
        </td>
      </tr>
    </table>
  </body>
</html>