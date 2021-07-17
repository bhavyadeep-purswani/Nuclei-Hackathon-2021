import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'dart:core';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController controller;
  static const length = 4;
  final pageIndexNotifier = ValueNotifier<int>(0);
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    String assetName = 'images/banklogo.png';
    String points = "1000";
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color(0xff1873e8), //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: Color(0xffCC7871),
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Color(0xffCC7871),//Color(0xFF1873e8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    child: Text("Baburao Apte",
                                        style: const TextStyle(
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 16)),
                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 1),
                                  ),
                                  Padding(
                                    child: Text("AC NO: XXXXXXXXX732",
                                        style: const TextStyle(
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12.0)),
                                    padding: EdgeInsets.fromLTRB(5, 1, 5, 5),
                                  ),
                                ],
                              ),
                            ),
          Column(children: <Widget>[
            SizedBox(height: 32.0),
            // Text(
            //   points,
            //   style: TextStyle(fontSize: 15,
            //       fontWeight : FontWeight.bold,
            //       color: Colors.white
            //   ),
            // ),
            // Container(
            //   height: 3.0,
            // ),
            Container(
                padding: EdgeInsets.only(top:32, right: 20),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.deepOrange,
                  color: Color(0xffCC7871),
                  elevation: 5.0,


                  child: Container(

                    child: GestureDetector(
                      onTap: () {
                        print("proceed tapped");
                        Navigator.of(context).pushNamed('/home_screen');
                      },

                      child: Container(
                        height: 5.0,

                        child: Row(
                          children: [
                            Image.asset("images/cxgo.jpg",
                            height:30,
                            width:30
                            ),
                            Text(
                               points,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
            Container(
              height: 8.0,
            ),
            GestureDetector(
              onTap: () {
                print("view rewards tapped");
              },
              child: Text(
                "View Rewards",
                style : TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,

                )
              )
            ),
            SizedBox(
              height: 5.0
            )
             ],)
                            // CircleAvatar(
                            //     maxRadius: 26,
                            //     minRadius: 26,
                            //     backgroundColor: Colors.white,
                            //     child: Image.asset(
                            //       'images/coins.jpg',
                            //       height: 26,
                            //       width: 26,
                            //       fit: BoxFit.fitHeight,
                            //     ))
                          ],
                        ),
                      )
                    ],
                  ),
                  padding: EdgeInsets.all(15),
                ),
                Expanded(
                  child: getSingleChildScrollView(),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xffCC7871),//Color(0xff347591),
                ),
                title: Text('Home',
                    style: const TextStyle(color: const Color(0xffCC7871)))),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card, color: Colors.grey),
                title:
                    Text('Cards', style: const TextStyle(color: Colors.grey))),
            BottomNavigationBarItem(
                icon: Icon(Icons.table_chart, color: Colors.grey),
                title:
                    Text('Stock', style: const TextStyle(color: Colors.grey))),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, color: Colors.grey),
                title:
                    Text('Profile', style: const TextStyle(color: Colors.grey)))
          ],
          currentIndex: 0,
          iconSize: 18,
          type: BottomNavigationBarType.fixed,
          fixedColor: Color(0xffCC7871)//Colors.deepPurple,
        ));
  }

  PageViewIndicator _buildIndicator() {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      indicatorPadding: EdgeInsets.fromLTRB(3, 8, 3, 8),
      normalBuilder: (animationController) => Circle(
            size: 4.0,
            color: Colors.grey,
          ),
      highlightedBuilder: (animationController) => ScaleTransition(
            scale: CurvedAnimation(
              parent: animationController,
              curve: Curves.ease,
            ),
            child: Circle(
              size: 6.0,
              color: Colors.black45,
            ),
          ),
    );
  }

  Widget getSingleChildScrollView() {
    String assetElectricity = 'images/electricity.svg';
    String assetRecharge = 'images/recharge.svg';
    String assetSchoolFees = 'images/schoolfees.svg';
    String assetMovie = 'images/popcorn.svg';
    String assetBus = 'images/bus.svg';
    String assetTrain = 'images/train.svg';
    String assetFlight = 'images/airplane.svg';
    String assetRelief = 'images/relief.svg';
    String assetUPI = 'images/upi.svg';
    String assetQR = 'images/qr_code.svg';
    String assetBalance = 'images/balance.svg';
    String assetTransactions = 'images/transactions.svg';
    String assetLoan = 'images/loan.svg';
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                color: Color(0xffCC7871),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Container(
                //       margin: EdgeInsets.fromLTRB(10, 8, 10, 7),
                //       child: Text("Send Money",
                //           style: const TextStyle(
                //               color: Colors.white,
                //               fontWeight: FontWeight.w500,
                //               fontFamily: "Montserrat",
                //               fontStyle: FontStyle.normal,
                //               fontSize: 12.0)),
                //       decoration: new BoxDecoration(
                //           borderRadius:
                //               new BorderRadius.all(new Radius.circular(30.0)),
                //           color: Color(0xFF0a4fa8)),
                //       padding: new EdgeInsets.fromLTRB(18.0, 8.0, 18.0, 8.0),
                //     ),
                //     Container(
                //       margin: EdgeInsets.fromLTRB(10, 8, 10, 7),
                //       child: Text("Request Money",
                //           style: const TextStyle(
                //               color: Colors.white,
                //               fontWeight: FontWeight.w500,
                //               fontFamily: "Montserrat",
                //               fontStyle: FontStyle.normal,
                //               fontSize: 12.0)),
                //       decoration: new BoxDecoration(
                //           borderRadius:
                //               new BorderRadius.all(new Radius.circular(30.0)),
                //           color: Color(0xFF0a4fa8)),
                //       padding: new EdgeInsets.fromLTRB(18.0, 8.0, 18.0, 8.0),
                //     ),
                //   ],
                // ),
              ),
              Container(
                height: 100,
                padding: EdgeInsets.fromLTRB(5, 0, 16, 0),
                color: Color(0xffCC7871),
                child: ListView(
                  // This next line does the trick.
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                              maxRadius: 26,
                              minRadius: 26,
                              backgroundColor: Color(0xFF0a4fa8),
                              child: SvgPicture.asset(
                                assetUPI,
                                semanticsLabel: 'Logo',
                                width: 22,
                                height: 22,
                              )),
                          Padding(
                            child: Text("UPI",
                                style: const TextStyle(
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10)),
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                              maxRadius: 26,
                              minRadius: 26,
                              backgroundColor: Color(0xFF0a4fa8),
                              child: SvgPicture.asset(
                                assetQR,
                                color: Color(0xddffffff),
                                semanticsLabel: 'Logo',
                                width: 22,
                                height: 22,
                              )),
                          Padding(
                            child: Text("Scan",
                                style: const TextStyle(
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10)),
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                              maxRadius: 26,
                              minRadius: 26,
                              backgroundColor: Color(0xFF0a4fa8),
                              child: SvgPicture.asset(
                                assetBalance,
                                color: Color(0xddffffff),
                                width: 22,
                                height: 22,
                              )),
                          Padding(
                            child: Text("Balance",
                                style: const TextStyle(
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10)),
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                              maxRadius: 26,
                              minRadius: 26,
                              backgroundColor: Color(0xFF0a4fa8),
                              child: SvgPicture.asset(
                                assetTransactions,
                                semanticsLabel: 'Logo',
                                color: Color(0xddffffff),
                                width: 22,
                                height: 22,
                              )),
                          Padding(
                            child: Text("Transactions",
                                style: const TextStyle(
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10)),
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                              maxRadius: 26,
                              minRadius: 26,
                              backgroundColor: Color(0xFF0a4fa8),
                              child: SvgPicture.asset(
                                assetLoan,
                                semanticsLabel: 'Loan',
                                color: Color(0xddffffff),
                                width: 22,
                                height: 22,
                              )),
                          Padding(
                            child: Text("Quick Loan",
                                style: const TextStyle(
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10)),
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(5, 6, 5, 0),
                child: PageView(
                  onPageChanged: (index) => pageIndexNotifier.value = index,
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(6.0),
                        child: Image.network(
                          "https://www.indusind.com/content/dam/indusind-platform-images/carousal-banner-images/personal-banking/aadhaar-pan-link/Desktop.jpg",
                          height: 150.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 6, 10, 0),
                    ),
                    Padding(
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(6.0),
                        child: Image.network(
                          "https://www.indusind.com/content/dam/indusind-platform-images/carousal-banner-images/nri-banking/nri-sms/1920x694px_desktop.jpg",
                          height: 150.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 6, 10, 0),
                    ),
                    Padding(
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(6.0),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2017/08/07/19/45/ecommerce-2607114_640.jpg",
                          height: 150.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 6, 10, 0),
                    ),
                    Padding(
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(6.0),
                        child: Image.network(
                          "https://www.printstop.co.in/images/flashgallary/large/Web-banner.jpg",
                          height: 150.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 6, 10, 0),
                    ),
                  ],
                ),
                height: 150,
              ),
              _buildIndicator(),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  child: Text(" QUICK FEATURES",
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 12)),
                  padding: EdgeInsets.fromLTRB(15, 8, 8, 8),
                ),
              ),
              Padding(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: new CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    child: SvgPicture.asset(
                                      assetElectricity,
                                      semanticsLabel: 'Logo',
                                      width: 24,
                                      height: 24,
                                    ),
                                    backgroundColor: Colors.white),
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: new BoxDecoration(
                                  color:
                                      const Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                )),
                            Flexible(
                              child: Padding(
                                child: Text("Electricity",
                                    style: const TextStyle(
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: new CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    child: SvgPicture.asset(
                                      assetRecharge,
                                      semanticsLabel: 'Logo',
                                      width: 24,
                                      height: 24,
                                    ),
                                    backgroundColor: Colors.white),
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: new BoxDecoration(
                                  color:
                                      const Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                )),
                            Flexible(
                              child: Padding(
                                child: Text("Recharge",
                                    style: const TextStyle(
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: new CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    child: SvgPicture.asset(
                                      assetSchoolFees,
                                      semanticsLabel: 'Logo',
                                      width: 18,
                                      height: 18,
                                    ),
                                    backgroundColor: Colors.white),
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: new BoxDecoration(
                                  color:
                                      const Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                )),
                            Flexible(
                              child: Padding(
                                child: Text("School Fees",
                                    style: const TextStyle(
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: GestureDetector(
                                  onTap: () {
                                    print("redeem points");
                                  },
                                  child: new CircleAvatar(
                                      maxRadius: 28,
                                      minRadius: 28,
                                      child: Image.asset(
                                        'assets/redeemc.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                      backgroundColor: Colors.white),
                                ),
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: new BoxDecoration(
                                  color:
                                      const Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                )),
                            Flexible(
                              child: Padding(
                                child: Text("Claim Offers",
                                    style: const TextStyle(
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: new CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    child: SvgPicture.asset(
                                      assetBus,
                                      semanticsLabel: 'Logo',
                                      width: 24,
                                      height: 24,
                                    ),
                                    backgroundColor: Colors.white),
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: new BoxDecoration(
                                  color:
                                      const Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                )),
                            Flexible(
                              child: Padding(
                                child: Text("Bus",
                                    style: const TextStyle(
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: new CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    child: SvgPicture.asset(
                                      assetFlight,
                                      semanticsLabel: 'Logo',
                                      width: 24,
                                      height: 24,
                                    ),
                                    backgroundColor: Colors.white),
                                padding:
                                    const EdgeInsets.all(1.0), // border width
                                decoration: new BoxDecoration(
                                  color:
                                      const Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                )),
                            Flexible(
                              child: Padding(
                                child: Text("Flight",
                                    style: const TextStyle(
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: new CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    child: SvgPicture.asset(
                                      assetTrain,
                                      semanticsLabel: 'Logo',
                                      width: 24,
                                      height: 24,
                                    ),
                                    backgroundColor: Colors.white),
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: new BoxDecoration(
                                  color:
                                      const Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                )),
                            Flexible(
                              child: Padding(
                                child: Text("Train",
                                    style: const TextStyle(
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: GestureDetector(
                                  onTap: () {
                                    print("refer & Earn");
                                  },
                                  child: new CircleAvatar(
                                      maxRadius: 28,
                                      minRadius: 28,
                                      child: Image.asset(
                                        'assets/earn.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                      backgroundColor: Colors.white),
                                ),
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: new BoxDecoration(
                                  color:
                                      const Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                )),
                            Flexible(
                              child: Padding(
                                child: Text("Refer & Earn",
                                    style: const TextStyle(
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),

                padding: EdgeInsets.fromLTRB(22, 8, 22, 8),

              ),

              //my
            ],
          ),

        );
      },
    );
  }
}
