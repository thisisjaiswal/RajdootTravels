<% @Page Language="C#" %>
<% @Import Namespace="System.Web.Mail" %>
<%
string strTo = "christophw@fx2.Dev.AlfaSierraPapa.Com";
string strFrom = "webmaster@aspheute.com";
string strSubject = "Hi Chris";

SmtpMail.Send(strFrom, strTo, strSubject,
  "A real nice body text here");

Response.Write("Email was queued to disk");
%>