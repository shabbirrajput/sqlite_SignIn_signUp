import 'package:flutter/material.dart';
import 'package:login_with_signup/navigator_key.dart';
import 'package:toast/toast.dart';

alertDialog(String msg) {
  //Toast.show(msg, context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
  //Toast.show(msg, duration: Toast.lengthShort, gravity: Toast.bottom);
  print('msg--$msg');
  showAlertDialog(NavigatorKey.navigatorKey.currentContext!, msg);
}

showAlertDialog(BuildContext context, String msg) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text(msg),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

validateEmail(String email) {
  final emailReg = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  return emailReg.hasMatch(email);
}
