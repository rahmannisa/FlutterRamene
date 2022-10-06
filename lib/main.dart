import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const SizedBox(
              height: 25,
            ),
            Image.asset('assets/images/Group 5.png'),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: 250,
              height: 250,
              child: Image.asset('assets/images/Group 9.png'),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              'All your\nfavorite ramen',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Delicious as is or tossed with your\nfavorite ingredients',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black26,
                height: 1.5
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 335,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 166, 0, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    ),
                ),
                onPressed: () {},
              child: Text(
                "Sign in",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 335,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.black26,
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                ),
                onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => LoginPage());
                    Navigator.push(context, route);
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    color: Colors.black26,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
