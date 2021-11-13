import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
class settingspage extends StatelessWidget{

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const SizedBox(height: 16),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red.withOpacity(0.1),
                    minimumSize: Size(150, 80),
                    elevation: 25,

                  ),
                  onPressed: () {Navigator.pop(context);},
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
                        'Back ',
                        style:
                            TextStyle(fontSize: 35, color: Color(0xFFffffff)),
                      )))
            ],
          ),
        ),
      ),
    );
}

}