import 'package:flutter/material.dart';

String username = "";
String password = "";

Future newCustomAction(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Login"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              onChanged: (value) {
                username = value;
              },
              decoration: InputDecoration(
                labelText: "Username",
              ),
            ),
            TextField(
              onChanged: (value) {
                password = value;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              performLogin(username,
                  password); // تنفيذ عملية تسجيل الدخول باستخدام اسم المستخدم وكلمة المرور
              Navigator.pop(context);
            },
            child: Text("Login"),
          ),
        ],
      );
    },
  );
}

// تعريف الدالة التي تنفذ عملية تسجيل الدخول
void performLogin(String username, String password) {
  // هنا يمكنك كتابة الكود الخاص بتنفيذ عملية تسجيل الدخول
  print("Username: $username, Password: $password");
  // هذا مثال بسيط يقوم بطباعة اسم المستخدم وكلمة المرور
}
