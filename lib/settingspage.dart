import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';

class settingspage extends StatelessWidget {
  bool isLight = true;
  bool isDark = false;

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
              Expanded(
                
                child: ListView(
                  children: <Widget>[
                    const SizedBox(height: 100),
                    Container(
                      height: 50,
                      color: Color(0xFFffffff).withOpacity(0.3),
                      child: Row(
                        children: [
                          Container(
                              padding:
                                  const EdgeInsets.fromLTRB(50, 10, 20, 10),
                              child: Text(
                                'Light Theme',
                                style: TextStyle(
                                    fontSize: 25, color: Color(0xFF000000)),
                              )),
                          const SizedBox(width: 90),
                          Checkbox(
                              value: isLight,
                              onChanged: (bool? value) {
                                setState(() {
                                  isLight = value!;
                                });
                              }),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      color: Color(0xFF000000).withOpacity(0.3),
                      child: Row(
                        children: [
                          Container(
                              padding:
                                  const EdgeInsets.fromLTRB(50, 10, 20, 10),
                              child: Text(
                                'Dark Theme ',
                                style: TextStyle(
                                    fontSize: 25,  color: Color(0xFFffffff)),
                              )),
                          const SizedBox(width: 90),
                          Checkbox(
                              value: isDark,
                              onChanged: (bool? value) {
                                setState(() {
                                  isDark = value!;
                                });
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red.withOpacity(0.1),
                    minimumSize: Size(150, 80),
                    elevation: 25,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
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
                        'Back ',
                        style:
                            TextStyle(fontSize: 35, color: Color(0xFFffffff)),
                      ))),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
