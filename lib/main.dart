import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Stack';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                fit: StackFit.loose, //by default loose
                // overflow: Overflow.clip, // by default clip
                alignment: Alignment.topRight,
                children: <Widget>[
                  Container(
                    height: 175.0,
                    width: 175.0,
                    color: Color(0xFFC41A3B),
                  ),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    height: 75.0,
                    width: 75.0,
                    color: Color(0xFF1B1F32),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: <Widget>[
                  Container(
                    height: 175.0,
                    width: 175.0,
                    color: Color(0xFFC41A3B),
                  ),
                  Container(
                    height: 125.0,
                    width: 125.0,
                    color: Color(0xFF1B1F32),
                  ),
                  Container(
                    height: 75.0,
                    width: 75.0,
                    color: Color(0xFFFBE0E6),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 175.0,
                width: 175.0,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    Container(
                      height: 125.0,
                      width: 125.0,
                      color: Color(0xFFC41A3B),
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color(0xFF1B1F32).withAlpha(0),
                            Color(0xFF1B1F32),
                            Color(0xFF1B1F32),
                          ],
                        ),
                      ),
                      child: Text(
                        'The Tech Designer',
                        style:
                            TextStyle(color: Color(0xFFFBE0E6), fontSize: 16.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
