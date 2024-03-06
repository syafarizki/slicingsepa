import 'package:flutter/material.dart';
import 'package:flutter_application_3/regisration.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Spsh",
      home: LandingPageView(),
    );
  }
}

class LandingPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Transform.translate(
       offset: Offset(-100, 0), 
        child: Image.asset('images/shape.png',width: 100,), 
),
           SizedBox(height: 15), 
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('images/gmbr.png', width: 200,), 
              ],
            ),
            SizedBox(height: 50), 
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Gets things with TODs',
                  style: TextStyle(
                    fontFamily: "Ibarra",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 0),
                Container(
                  width: 225,
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 50),
                    backgroundColor:  Color.fromRGBO(92, 203, 241, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                  onPressed: () {
                     Navigator.push(context,
                      MaterialPageRoute(builder:(context)=> registration()
                      ),
                     );
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: "Ibarra",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(254, 254, 254, 1),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}