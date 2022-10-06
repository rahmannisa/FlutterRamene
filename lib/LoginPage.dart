import 'package:coba_widget/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coba_widget/my_flutter_app_icons.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 18, top: 80, bottom: 40),
              child: IconButton(
                iconSize: 25.0,
                icon: Icon(
                  MyFlutterApp.arrow_left,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop(context);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 28, top: 0),
              alignment: AlignmentDirectional.topStart,
              child :Text(
                'Welcome Back',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 28, top: 0),
              child : Text(
                'Login to your account',

                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black26,
                    height: 1.5
                ),
                textAlign: TextAlign.end,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 28, top: 0),
              child : Text(
                'Email',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    height: 1.5
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 28, top: 10),
              width: 335,
              alignment: AlignmentDirectional.center,
              child : TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black26),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  hintText: 'Email',
                ),

              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 28, top: 20),
              child : Text(
                'Password',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    height: 1.5
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 28, top: 10),
              width: 335,
              alignment: AlignmentDirectional.center,
              child : TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black26),
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  hintText: 'Password',
                ),

              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 28, top: 25),
              width: 335,
              child: Text(
                'Forget Password?',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 166, 0, 1),
                    height: 1.5
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 335,
              height: 50,
              margin: EdgeInsets.only(left: 28, top: 170),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(255, 166, 0, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => HomePage());
                  Navigator.push(context, route);
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 0, top: 10),
                child: Text(
                  "Don't have an account yet? ",
                  style: GoogleFonts.poppins(
                  color: Colors.black26,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 0, top: 10),
                child: Text(
                  "Sign Up ",
                  style: GoogleFonts.poppins(
                    color: Color.fromRGBO(255, 166, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
            ),
          ],
        ),
    );
  }
}
