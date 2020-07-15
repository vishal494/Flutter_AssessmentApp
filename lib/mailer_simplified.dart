import 'package:assess_me/FunctionalAssessment.dart';
import 'package:assess_me/arithmeticAssessment.dart';
import 'package:assess_me/javaAssessment.dart';

import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:assess_me/form.dart';

mailer() async {
  //Safe this
  String username = '@gmail.com';
  String password = '';

  final smtpServer = gmail(username, password);
  // Use the SmtpServer class to configure an SMTP server:
  // final smtpServer = SmtpServer('smtp.domain.com');
  // See the named arguments of SmtpServer for further configuration
  // options.

  // Create our message.

  final _userFirstName = userData.getfirstName();
  final _userLastName = userData.lastName;
  final _emailId = userData.email;
  final _phoneNum = userData.phoneNumber;
  final _currentCTC = userData.currentCTC;
  final _expectedCTC = userData.expectedCTC;
  final _CurrentEmp = userData.currentEmployer;
  final _Notice = userData.noticePeriod;
  final _KnowAbtUs = userData.knowAboutUs;
  final _AboutThem = userData.aboutThem;
  final String java = javaResult ? "pass" : "fail";
  final String functional = functionalResult ? "pass" : "fail";
  final String arithmetic = arithmeticResult ? "pass" : "fail";
  String recom = "";
  if ((javaResult && functionalResult && arithmeticResult) == true) {
    recom = "Smart Assessment app Strongly recomands this candidate ";
  }
  if ((javaResult && functionalResult) ||
      (javaResult && arithmeticResult) ||
      (functionalResult && arithmeticResult)) {
    recom = "Smart Assessment app recomands this candidate ";
  } else {
    recom = "You should look for other candidates";
  }

  final message = Message()
    ..from = Address(username, 'Smart Assessment App')
    ..recipients.add('rvishal494@gmail.com')
    //..ccRecipients
    //  .addAll(['Chamu_KalyanaSundaram@comcast.com', 'chamurec@gmail.com'])
    //..bccRecipients.add(Address('bccAddress@example.com'))
    ..subject = 'Test Reports of $_userFirstName :: 😀 :: ${DateTime.now()}'
    //..text = 'This is the plain text.\nThis is line 2 of the text part.'
    ..html = "<h1 style='color: #5e9ca0; text-decoration: underline;'>Smart Assessment Summary </h1>"
        "<h1 style='color: #2b2301;'> This is the test result of <br><span style='color: #5e9c49;'>$_userFirstName $_userLastName</span> </h1>"
        "<h2>Contact Details</h2>"
        "<li style='clear: both;'>Phone Number : $_phoneNum</li>"
        "<li style='clear: both;'>Email Address : $_emailId</li>"
        "<h2>Employment Details</h2>"
        "<li style='clear: both;'>Current Organisation :  $_CurrentEmp </li>"
        "<li style='clear: both;'>Current CTC :  $_currentCTC </li>"
        "<li style='clear: both;'>Expected CTC : $_expectedCTC </li>"
        "<li style='clear: both;'>Notice Period : $_Notice </li>"
        "<h2 style='color: #2e6c80;'>Assessment Result:</h2>"
        "<table class='editorDemoTable'>"
        "<tr><td><b>Assessment title</b></td>"
        "<td><b>Marks</b></td>"
        "</tr>"
        "<tr><td>Java Assessment</td>"
        "<td>$java</td></tr>"
        "<tr><td>Arithmetic Assessment</td>"
        "<td>$arithmetic</td></tr>"
        "<tr><td>Functional Assessment</td>"
        "<td>$functional</td></tr>"
        "<br>"
        "<br>"
        "<p>$recom</p>"
        "<h3>Thank You..!<h3>";

//  try {
//    final sendReport = await send(message, smtpServer);
//    print('Message sent: ' + sendReport.toString());
//  } on MailerException catch (e) {
//    print('Message not sent.');
//    for (var p in e.problems) {
//      print('Problem: ${p.code}: ${p.msg}');
//    }
//  }
  // DONE

  // Let's send another message using a slightly different syntax:
  //
  // Addresses without a name part can be set directly.
  // For instance `..recipients.add('destination@example.com')`
  // If you want to display a name part you have to create an
  // Address object: `new Address('destination@example.com', 'Display name part')`
  // Creating and adding an Address object without a name part
  // `new Address('destination@example.com')` is equivalent to
  // adding the mail address as `String`.

  //final sendReport2 = await send(equivalentMessage, smtpServer);

  // Sending multiple messages with the same connection
  //
  // Create a smtp client that will persist the connection
  //var connection = PersistentConnection(smtpServer);

  print('Now sending using a persistent connection');
  PersistentConnection connection =
      PersistentConnection(smtpServer, timeout: Duration(seconds: 15));

  // Send the first message
  //await connection.send(message);

  try {
    for (int i = 0; i < 1; i++) {
      message.subject =
          'Test Dart Mailer library :: 😀 :: ${DateTime.now()} / $i';
      final sendReport = await connection.send(message);
      print('Message sent: ' + sendReport.toString());
    }
  } on MailerException catch (e) {
    print('Message not sent.');
    for (var p in e.problems) {
      print('Problem: ${p.code}: ${p.msg}');
    }
  } catch (e) {
    print('Other exception: $e');
  } finally {
    if (connection != null) {
      await connection.close();
    }
  }
//}

  // send the equivalent message
  //await connection.send(equivalentMessage);

  // close the connection
  //await connection.close();
}
