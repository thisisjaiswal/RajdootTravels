<% @Page Language="C#" %>
<% @Import Namespace="System.Web.Mail" %>
<%
MailMessage msgMail = new MailMessage();

msgMail.To = "christophw@fx2.Dev.AlfaSierraPapa.Com";
msgMail.From = "webmaster@aspheute.com";
msgMail.Subject = "Attachment Test";

msgMail.BodyFormat = MailFormat.Text;
msgMail.Body = "Check out the attachment!";
msgMail.Attachments.Add(new MailAttachment(Server.MapPath("SimpleMail.aspx")));

SmtpMail.Send(msgMail);

Response.Write("Email was queued to disk");
%>