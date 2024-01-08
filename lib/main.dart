import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'IC_database.dart';
import 'ScanPage.dart';
import 'HomePage.dart';
import 'datas.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chatscreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of  application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,
      backgroundColor: gradientStartColor,
      appBar: AppBar(
        title: const Text('My App'),
        backgroundColor: gradientStartColor,

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
            //  child: Text('Drawer Header'),
              child: Image.asset(
                'Assets/images/IC1.jpg',
                height: 100,
                width: 400,
              ),
              decoration: BoxDecoration(
                color: gradientStartColor,
              ),
            ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          title: Container(
            color: gradientStartColor,
            child: Text('Home', style: TextStyle(color: Colors.white)),
          ),
        ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ICPage()),
                );
              },
              title: Container(
                color: gradientStartColor,
                child: Text('IC DataBase', style: TextStyle(color: Colors.white)),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              title: Container(
                color: gradientStartColor,
                child: Text('Chat Screen', style: TextStyle(color: Colors.white)),
              ),
            ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        title: Container(
          color: gradientEndColor,
          child: Text('About Us', style: TextStyle(color: Colors.white)),
        ),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScanPage()),
          );
        },
        title: Container(
          color: gradientEndColor,
          child: Text('IC Scanner', style: TextStyle(color: Colors.white)),
        ),
      ),
          ],
        ),
      ),
      body: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [gradientStartColor, gradientEndColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter)),
      child:
      SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "          IC    " "\nINFOMANIA",
                  style: GoogleFonts.openSans(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),
                ),
                Lottie.asset(
                  'Assets/16651-cpu-chip.json',
                  height: 500,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 250.0,
                    height: 100.0,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScanPage()),
                        );
                      },
                      child: Text(
                        'Scan IC',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        side:
                        MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.pressed)) {
                            return BorderSide(
                              color: Colors.white,
                              width: 8.0,
                            );
                          }
                          return BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    ),
    );
  }
}
