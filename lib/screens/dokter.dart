import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DokterWidget extends StatefulWidget {
  @override
  _DokterWidgetState createState() => _DokterWidgetState();
}

class _DokterWidgetState extends State<DokterWidget> {
  final String url = "http://127.0.0.1:8000/api/dokter";

  Future<List<dynamic>> getDokter() async {
    var response = await http.get(Uri.parse(url));
    return json.decode(response.body)['data'];
  }

  // Future<List> getDokter() async {
  //   final response =
  //       await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
  //   return json.decode(response.body);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00F6CA),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 25,
          ),
        ),
        title: Align(
          alignment: AlignmentDirectional(-0.3, 0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
            child: Text(
              'Dokter',
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
      body: FutureBuilder<List<dynamic>>(
        future: getDokter(),
        builder: (Buildcontext, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Text('Data Oke');
          } else {
            return Text('data EROR');
          }
        },
      ),
    );
  }
}
