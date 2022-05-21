import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gec_modasa/count_example.dart';
import 'package:gec_modasa/home.dart';
import 'package:gec_modasa/home_screen.dart';
import 'package:gec_modasa/provider/count_provider.dart';
import 'package:gec_modasa/stesfull_widget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CountProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CountExample(),
        ));
  }
}

class LoginDemo extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<LoginDemo> {
  late String sEmail, sPassword;
  String emailPattern = "[a-zA-Z0-9._-]+@[a-z]+\\.+[a-z]+";
  GlobalKey<FormState> keyForm = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Login Form',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.blueGrey),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 150,
                height: 150,
                child: Image.asset('images/icone_image.png'),
              ),
            ),
            Form(
              key: keyForm,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        labelText: "Email id",
                        hintText: "Enter Email id",
                        prefixIcon: const Icon(Icons.email),
                      ),
                      validator: (emailvalue) {
                        if (emailvalue!.isEmpty) {
                          return "Email id requeired";
                        } else if (!RegExp(emailPattern).hasMatch(emailvalue)) {
                          return "Valid Email id requeired";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (emailvalue) {
                        sEmail = emailvalue!;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        labelText: "Password",
                        hintText: "Enter your password",
                        prefixIcon: const Icon(Icons.lock),
                      ),
                      validator: (passwordvalue) {
                        if (passwordvalue!.isEmpty) {
                          return "Enter valid password";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (passwordvalue) {
                        sPassword = passwordvalue!;
                      },
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    color: Colors.blue,
                    child: FlatButton(
                        onPressed: () {
                          if (keyForm.currentState!.validate()) {
                            keyForm.currentState!.save();
                            Fluttertoast.showToast(
                                msg: 'Login Scuccessfully',
                                backgroundColor: Colors.black,
                                textColor: Colors.white,
                                toastLength: Toast.LENGTH_LONG);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomeDemo(sEmail, sPassword),
                                ));
                          } else {}
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
