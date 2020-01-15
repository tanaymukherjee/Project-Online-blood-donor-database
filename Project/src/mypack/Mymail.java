package mypack;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class Mymail {


public Mymail(){
super();
}





public static boolean GmailSend (String to,String subject,String messageText) throws AddressException, MessagingException{

String host="smtp.gmail.com", user="team.sahyog.here@gmail.com", pass="teamquark";   //Where abv123 is email id of urs account. ANd it is ur                                                          
                                                                                                               //gmail account id so don't write @gmail.com


String SSL_FACTORY ="javax.net.ssl.SSLSocketFactory"; 
boolean sessionDebug = true;
Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props,null);
mailSession.setDebug(sessionDebug);
Message msg =new MimeMessage(mailSession);
//msg.setFrom(new InternetAddress(from));
try
{
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText,"text/plain"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
transport.sendMessage(msg, msg.getAllRecipients());//WasEmailSent = true; // assume it was sent
return true; 

}
catch(Exception err) {

//WasEmailSent = false; // assume it's a fail
return false; 
//System.out.println("Error"+err.getMessage());
}
//transport.close();

}
}