import 'package:flutter/material.dart';
import 'package:test/main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => MyHomePage(title: 'title')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Logo.png'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            child: Text('Splash Screen',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
        ]),
      ),
    );
  }
}
