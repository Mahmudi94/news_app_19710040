import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app_19710040/main.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    //TODO: implement iniState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    var durasiSplash = const Duration(seconds: 2);

    return Timer(durasiSplash, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
          ),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/Mahmudi.jpg'),
          ),
          Text(
            '19710040',
            style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Nama: Noor Mahmudi',
            style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Alamat: Desa Lokpaikat, Rt.09/Rw.04',
            style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'TTL: Tapin, 29 April 2001',
            style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Kelas: Si 5A Banjarbaru ',
            style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
