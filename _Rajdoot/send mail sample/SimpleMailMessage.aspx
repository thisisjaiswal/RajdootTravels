<% @Page Language="C#" %>
<% @Import Namespace="System.Web.Mail" %>
<%
MailMessage msgMail = new MailMessage();

msgMail.To = "christophw@fx2.Dev.AlfaSierraPapa.Com";
msgMail.Cc = "webmaster@fx2.Dev.AlfaSierraPapa.Com";
msgMail.From = "webmaster@aspheute.com";
msgMail.Subject = "Hi Chris, another mail";

msgMail.BodyFormat = MailFormat.Html;
string strBody = "<html><body><b>Hello World</b>" +
   " <font color=\"red\">ASP.NET</font></body></html>";
msgMail.Body = strBody;

SmtpMail.Send(msgMail);

Response.Write("Email was queued to disk");
%>