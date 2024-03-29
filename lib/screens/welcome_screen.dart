import 'package:flutter/material.dart';
import 'package:medical/screens/login_screen.dart';
import 'package:medical/widgets/navbar_roots.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children:[
            SizedBox(height:15),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => NavBarRoots(),
                  ));
                },
                child: Text(
                  "SKIP",
                  style: TextStyle(
                    color: Color.fromARGB(255, 126, 199, 247),
                    fontSize: 20,
                  )
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(80),
              child: Image.asset("images/doctors.png")
            ),
            SizedBox(height: 30),
            Text("Doctors Appointments",
            style: TextStyle(
              color: Color.fromARGB(255, 126, 199, 247),
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2,
              ),
              ),
              SizedBox(height: 10),
                Text("Appoint Your Doctor",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              ),
              ),
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Material(
                            color: Color.fromARGB(255, 126, 199, 247),
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                  ));
                              },
                            
                            child: Padding(
                              padding:
                                EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                                child: Text("Log In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                                  ),
                            ),
                          ),
                          ),
                            Material(
                            color: Color.fromARGB(255, 126, 199, 247),
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: (){
                                 //Navigator.push(context, MaterialPageRoute(
                                 //  builder: (context) => 
                                 // ));
                              },
                            
                            child: Padding(
                              padding:
                                EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                                child: Text("Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                                  ),
                            ),
                          ),
                          ),
                        ],
                        ),

          ],
        ),
      ),
    );
  }
}