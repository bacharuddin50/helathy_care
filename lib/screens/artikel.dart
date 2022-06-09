import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArtikelWidget extends StatefulWidget {
  @override
  _ArtikelWidgetState createState() => _ArtikelWidgetState();
}

class _ArtikelWidgetState extends State<ArtikelWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF00F6CA),
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 25,
        ),
        title: Align(
          alignment: AlignmentDirectional(-0.3, 0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
            child: Text(
              'Artikel',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
        ),
        actions: [],
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
                child: ListView(
                  padding: EdgeInsets.all(10),
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 1000,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(0, 255, 255, 255),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onTap: () async {
                              String url = 'https://covid19.go.id/';
                              if (await canLaunch(url)) {
                                await launch(
                                  url,
                                  forceSafariVC: true,
                                  forceWebView: true,
                                  enableJavaScript: true,
                                  webOnlyWindowName: '_self',
                                );
                              } else {
                                print("aksi tidak mendukung");
                              }
                            },
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.asset(
                                    'assets/images/slider.png',
                                    width: 350,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    'Berita Covid Terkini',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                String url =
                                    'https://www.alodokter.com/delapan-langkah-menuju-pola-hidup-sehat';
                                if (await canLaunch(url)) {
                                  await launch(
                                    url,
                                    forceSafariVC: true,
                                    forceWebView: true,
                                    enableJavaScript: true,
                                    webOnlyWindowName: '_self',
                                  );
                                } else {
                                  print("aksi tidak mendukung");
                                }
                              },
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      'assets/images/23.png',
                                      width: 350,
                                      height: 200,
                                      fit: BoxFit.contain,
                                    ),
                                    Text(
                                      'Pola Hidup Sehat',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                String url =
                                    'https://krakataumedika.com/info-media/artikel/cara-diet-yang-aman-untuk-turunkan-berat-badan-tanpa-bahayakan-kesehatan';
                                if (await canLaunch(url)) {
                                  await launch(
                                    url,
                                    forceSafariVC: true,
                                    forceWebView: true,
                                    enableJavaScript: true,
                                    webOnlyWindowName: '_self',
                                  );
                                } else {
                                  print("aksi tidak mendukung");
                                }
                              },
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      'assets/images/23.png',
                                      width: 350,
                                      height: 200,
                                      fit: BoxFit.contain,
                                    ),
                                    Text(
                                      'Tips Diet Sehat',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
