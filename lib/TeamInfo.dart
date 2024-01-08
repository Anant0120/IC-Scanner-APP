import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';



// Add info in this



class TeamInfo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TeamInfoState();
  }

}

class TeamInfoState extends State<TeamInfo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      //backgroundColor: gradientStartColor, gradientEndColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [gradientStartColor, gradientEndColor],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              const SizedBox(height: 30,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: ()=>Navigator.pop(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Our Team',style: GoogleFonts.poppins(fontSize: 24,color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                //  onTap: () => launch(''),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.purple,
                          backgroundImage: NetworkImage(''),
                        ),
                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Anant Gangwal',
                                style: GoogleFonts.poppins(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),
                              ),
                              // Text('Tech Lead',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),),
                              Text(
                                'Know More >',
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch(''),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.purple,
                          backgroundImage: NetworkImage(''),
                        ),
                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Ameesh Katariya',
                                style: GoogleFonts.poppins(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),
                              ),
                              // Text('Tech Lead',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),),
                              Text(
                                'Know More >',
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch(''),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.purple,
                          backgroundImage: NetworkImage(''),
                        ),
                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Aniket Ingle',
                                style: GoogleFonts.poppins(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),
                              ),
                              // Text('Tech Lead',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),),
                              Text(
                                'Know More >',
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ],
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
      ),
    );
  }
}