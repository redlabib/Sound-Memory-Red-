import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:test/settingspage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
W
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class CustomePageRoute extends PageRouteBuilder {
  final Widget child;

  CustomePageRoute({required this.child})
      : super(
            transitionDuration: Duration(seconds: 2),
            reverseTransitionDuration: Duration(seconds: 0),
            pageBuilder: (context, animation, secondaryAnimation) => child);
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(80),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFdaa3e3),
              Color(0xFFd4689a),
              Color(0xFFd49768),
              Color(0xFFf5ede6),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: AnimatedBackground(
          behaviour: BubblesBehaviour(),
          vsync: this,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink.withOpacity(0.1),
                      minimumSize: Size(150, 80),
                      elevation: 25,
                      shape: shape,
                    ),
                    onPressed: () {},
                    child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xFFff7575),
                            Color(0xFFf2cd83),
                          ]),
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
                        child: Text(
                          'Play Now',
                          style: TextStyle(fontSize: 35),
                        ))),
                const SizedBox(height: 16),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red.withOpacity(0.1),
                      minimumSize: Size(150, 80),
                      elevation: 25,
                      shape: shape,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, new CustomePageRoute(child: settingspage()));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xFFff7575),
                            Color(0xFFf2cd83),
                          ]),
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
                        child: Text(
                          'Settings ',
                          style:
                              TextStyle(fontSize: 35, color: Color(0xFFffffff)),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
