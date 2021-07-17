import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
        Widget>[
        Container(
        child: Stack(
        children: <Widget>[
        Container(
        padding: EdgeInsets.fromLTRB(5.0, 60.0, 5.0, 0.0),
            child: Center(child: Image.asset('images/welcome.png')),
       ),
       SizedBox(
         height: 10.0
       ),
          Container(
            padding: EdgeInsets.only(top: 450),
            child: Center(
              child: Text('Congratulations!',
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.grey,
                          blurRadius: 8.0,
                        )
                      ],
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffCC7871) )),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.only(top: 530,left:10.0,right:10.0),
            child: Center(
              child: Text(
                'Hey Baburao, Your friend Raju has given you 50 coins that you '
                    'can use to avail exclusive rewards in the app.',
                style: TextStyle(fontFamily: 'Montserrat',
                    fontSize: 13.0 ),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left:120, top:600, right: 120),
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.deepOrange,
                color: Color(0xffCC7871),
                elevation: 5.0,
                child: GestureDetector(
                  onTap: () {
                    print("proceed tapped");
                    Navigator.of(context).pushNamed('/home_screen');
                  },
                  child: Center(
                    heightFactor: 3.0,
                    child: Text(
                      'PROCEED',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              )),
          SizedBox(width: 20.0),
          Container(
            padding: EdgeInsets.only(top: 690),
            child: Center(
              child: Text('Terms And Conditions',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat')),
            ),
          ),
     ],
    ),
    )],),
    ),
    );
  }
}
