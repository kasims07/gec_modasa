import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeDemo extends StatefulWidget {
  String sEmail, sPassword;
  HomeDemo(this.sEmail, this.sPassword);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeDemo> {
  int radioGroupvalue = 0;
  int maleValue = 0;
  int femaleValue = 1;
  int transgenderValue = 2;
  String sGender = "";
  String sMale = "Male";
  String sFemale = "Female";
  String sTransgender = "Transgender";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        color: Colors.blueGrey,
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Email id : ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child: Container(
                      color: Colors.lightBlue,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          widget.sEmail,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      color: Colors.blueGrey,
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Password : ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                      fit: FlexFit.tight,
                      flex: 2,
                      child: Container(
                        color: Colors.lightBlue,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          widget.sPassword,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Radio(
                    value: maleValue,
                    groupValue: radioGroupvalue,
                    onChanged: (radioValue) {
                      setState(() {
                        setGender(radioValue);
                      });
                    }),
                Text(
                  sMale,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Radio(
                    value: femaleValue,
                    groupValue: radioGroupvalue,
                    onChanged: (radioValue) {
                      setState(() {
                        setGender(radioValue);
                      });
                    }),
                Text(
                  sFemale,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Radio(
                    value: transgenderValue,
                    groupValue: radioGroupvalue,
                    onChanged: (radioValue) {
                      setState(() {
                        setGender(radioValue);
                      });
                    }),
                Text(
                  sTransgender,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void setGender(radiovalue) {
    setState(() {
      radioGroupvalue = radiovalue;
      if (radioGroupvalue == maleValue) {
        sGender = sMale;
      } else if (radioGroupvalue == femaleValue) {
        sGender = sFemale;
      } else if (radioGroupvalue == transgenderValue) {
        sGender = sTransgender;
      } else {
        sGender = "Please Select Gender";
      }
      Fluttertoast.showToast(
          msg: sGender,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          toastLength: Toast.LENGTH_SHORT);
    });
  }
}
