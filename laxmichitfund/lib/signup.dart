import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
              Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Center(child: Image.asset('assets/logo.png')),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 230.0, 0.0, 0.0),
                    child: Text('Make time for',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 280.0, 0.0, 0.0),
                    child: Text('what matters',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffCC7871) )),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left:20.0),
              child: Text('SignUp',
              style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Color(0xffCC7871))
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 0.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          // hintText: 'EMAIL',
                          // hintStyle: ,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffCC7871)))),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffCC7871)))),
                      obscureText: true,
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Mobile Number',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffCC7871)))),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      decoration:InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),

                          focusedBorder:
                          UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffCC7871)))),

                    ),
                    SizedBox(height: 10.0),
                    Center(
                      child: SizedBox(
                        width : 150,

                        child: new TextField(
                          style: TextStyle(
                              fontSize: 10,
                              height: 0.5
                         ),
                          decoration: InputDecoration(
                              labelText: 'Enter Referral Code',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xffCC7871)),
                                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                        height: 40.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.deepOrange,
                          color: Color(0xffCC7871),
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/onboard');
                            },
                            child: Center(
                              child: Text(
                                'SIGNUP',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child:

                          Center(
                            child: Text('Go Back',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat')),
                          ),


                        ),
                      ),
                    ),
                  ],
                )),

            // SizedBox(height: 15.0),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Text(
            //       'New to Spotify?',
            //       style: TextStyle(
            //         fontFamily: 'Montserrat',
            //       ),
            //     ),
            //     SizedBox(width: 5.0),
            //     InkWell(
            //       child: Text('Register',
            //           style: TextStyle(
            //               color: Colors.green,
            //               fontFamily: 'Montserrat',
            //               fontWeight: FontWeight.bold,
            //               decoration: TextDecoration.underline)),
            //     )
            //   ],
            // )
          ]),
        ));

  }
}