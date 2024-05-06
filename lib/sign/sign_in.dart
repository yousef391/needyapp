import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sign_in/sign/forget_pass.dart';
import 'package:sign_in/sign/sign_up.dart';
import 'package:sign_in/home/home.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  void navigatenextpage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return sign_up();
    }));
  }

  void navigatenextpage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return forget_pass();
    }));
  }

  bool b = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFF0097B2),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height:35,
                ),
//needy
                Center(
                  child: Text(
                    "Needy",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Pacifico",
                      fontSize: 35,
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 370,
                  height: 650,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal :10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 5),
                        //text1
                        Text(
                          "Login account",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),                  //text2
                        Padding(
                          padding: const EdgeInsets.only(left :20.0),
                          child: Text(
                            "Hello, you should login first to be able to use the  application and enjoy all the features in Needy.",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(height : 3 ),
                        
                        //email textfield
                        TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail_rounded,
                                  color: Colors.grey, size: 20),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Color(0XFFE8ECF4)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Color(0XFFE8ECF4)),
                              ),
                              fillColor: Color(0xFFF7F8F9),
                              filled: true,
                              labelText: '  Email'),
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        
                        //password textfield
                        TextField(
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  b = !b;
                                });
                              },
                              icon: Icon(
                                b ? Icons.visibility_off : Icons.visibility,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ),
                            prefixIcon:
                                Icon(Icons.lock, color: Colors.grey, size: 20),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0XFFE8ECF4)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0XFFE8ECF4)),
                            ),
                            fillColor: Color(0xFFF7F8F9),
                            filled: true,
                            labelText: '  Password',
                            hintText: '  Enter Your password',
                          ),
                          obscureText: b,
                        ),

                        //forget password
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                navigatenextpage2(context);
                              },
                              child: Text(
                                "Forget Password?",
                                style: TextStyle(
                                    color: Color(0xFF0097B2), fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),

                        //sign in button
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  NeedyApp()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10), // <-- Radius
                              ),
                              backgroundColor: Color(0xFF0097B2),
                              padding: EdgeInsets.symmetric(vertical: 17)),
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height :0 ),

//devider

                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Or Sign In With"),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height : 0 ),
//

//google or facebok sign in
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
//google button

                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(100), // <-- Radius
                                  ),
                                  backgroundColor: Color(0xFFF2F2F2),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 13, horizontal: 10)),
                              child: Image.asset(
                                "images/google.png",
                                height: 18,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
//facebook button

                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(100), // <-- Radius
                                ),
                                backgroundColor: Color(0xFFF2F2F2),
                                padding: EdgeInsets.symmetric(
                                    vertical: 13, horizontal: 10),
                              ),
                              child: Image.asset(
                                "images/facebook.png",
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                        
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don’t have an account?", style: TextStyle(
                                     fontSize: 15),),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: TextButton(
                                onPressed: () {
                                  navigatenextpage(context);
                                },
                                child: Text(
                                  "Join Us",
                                  style: TextStyle(
                                      color: Color(0xFF0097B2), fontSize: 15,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
