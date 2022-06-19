import 'package:helathy_care/main.dart';
import 'package:helathy_care/screens/dokter.dart';
import 'package:helathy_care/screens/obat.dart';
import 'package:helathy_care/screens/artikel.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:helathy_care/screens/profile.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

Widget build(BuildContext context) {
  return new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyBottomBar(),
  );
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> imgList = ['assets/images/2.png', 'assets/images/4.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF00F6CA),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            );
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Healthy Care',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Icon(
              Icons.chat_bubble_outline,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: 100,
                        height: 1000,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                constraints: BoxConstraints(
                                  maxWidth: double.infinity,
                                  maxHeight: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-0.6, 0),
                                  child: Text(
                                    'Promo',
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                              child: CarouselSlider(
                                options: CarouselOptions(
                                  autoPlay: true,
                                  autoPlayInterval: Duration(seconds: 10),
                                  aspectRatio: 2.0,
                                  enlargeCenterPage: true,
                                ),
                                items: imgList
                                    .map((item) => Container(
                                          child: Container(
                                            margin: EdgeInsets.all(5.0),
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.0)),
                                                child: Stack(
                                                  children: <Widget>[
                                                    Image.asset(item,
                                                        fit: BoxFit.cover,
                                                        width: 1000.0),
                                                    Positioned(
                                                      bottom: 0.0,
                                                      left: 0.0,
                                                      right: 0.0,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color.fromARGB(
                                                                  0, 0, 0, 0),
                                                              Color.fromARGB(
                                                                  0, 0, 0, 0)
                                                            ],
                                                            begin: Alignment
                                                                .bottomCenter,
                                                            end: Alignment
                                                                .topCenter,
                                                          ),
                                                        ),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 10.0,
                                                                horizontal:
                                                                    20.0),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                child: Container(
                                  width: 100,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: Text(
                                      ' Layanan',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(0, 0, 246, 201),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 0, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                DokterWidget(),
                                          ),
                                        );
                                      },
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: Color(0xFFF5F5F5),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 10, 15, 10),
                                              child: Image.asset(
                                                'assets/images/Dokter.png',
                                                width: 40,
                                                height: 40,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 5, 0),
                                              child: Text(
                                                'Dokter',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                DokterWidget(),
                                          ),
                                        );
                                      },
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: Color(0xFFF5F5F5),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 10, 15, 10),
                                              child: Image.asset(
                                                'assets/images/obat.png',
                                                width: 40,
                                                height: 40,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Text(
                                              'Obat',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ArtikelWidget(),
                                          ),
                                        );
                                      },
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: Color(0xFFF5F5F5),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 10, 15, 10),
                                              child: Image.asset(
                                                'assets/images/buku_kesehatan.png',
                                                width: 40,
                                                height: 40,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 10, 0),
                                              child: Text(
                                                'Artikel',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: InkWell(
                                      onTap: () async {},
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: Color(0xFFF5F5F5),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 10, 0),
                                              child: Image.asset(
                                                'assets/images/icon-park-outline_hospital-two.png',
                                                width: 40,
                                                height: 40,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 5, 10, 0),
                                              child: Text(
                                                '    Klinik\nTerdekat',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                child: Container(
                                  width: 100,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: Text(
                                      'Dokter',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 500,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
