import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:google_fonts/google_fonts.dart';
void main() => runApp(MaterialApp(
  home: HostelpgPage(),
));


class HostelpgPage extends StatefulWidget {
  @override
  _HostelpgPageState createState() => _HostelpgPageState();
}
class _HostelpgPageState extends State<HostelpgPage> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight;
    return Scaffold(
      backgroundColor: Color(0xff121421),
      appBar: AppBar(
        title: Image.asset('assets/images/tietlogo3.png'),
        backgroundColor: Color(0xff1C2031),
        shadowColor: Colors.black,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          buildCoverImage(),
          Positioned(
            top: top,
            child: buildProfileImage(),
          ),
        ],
      ),
    );
  }

  Widget buildCoverImage() =>
      Container(
        color: Color(0xff121421),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: NetworkImage('https://i.imgur.com/jRzc5N1.png'),
          ),
        ),

        width: double.infinity,
        height: coverHeight,


      );

  Widget buildProfileImage() =>
      Container(

        child: Column(
          children: [
            Text(
              'HOSTEL PG',


              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.white54, letterSpacing: .5, fontSize: 20.0,),
              ),
            ),
            Text(
              'Warden: Dr. Rinkle Rani',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.white54, letterSpacing: .5, fontSize: 20.0,),
              ),
            ),
            Text('Email id:-wardenpg@thapar.edu',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.white54, letterSpacing: .5, fontSize: 20.0,),
              ),
            ),
            Text('Contact No.:9115611525',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.white54, letterSpacing: .5, fontSize: 20.0,),
              ),
            ),


            Text('Caretaker: Mr Jarnail Singh Malhi',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.white54, letterSpacing: .5, fontSize: 20.0,),
              ),
            ),

            Text('(Email id:-caretaker.pg@thapar.edu)',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.white54, letterSpacing: .5, fontSize: 18.0,),
              ),
            ),

          ],
        ),

      );
}



