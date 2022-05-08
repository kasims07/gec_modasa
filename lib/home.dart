import 'package:flutter/material.dart';

class HomeDemo extends StatefulWidget {
  String sEmail, sPassword;
  HomeDemo(this.sEmail, this.sPassword);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeDemo> {
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
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
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
                          style: TextStyle(
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
                      child: Padding(
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
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
