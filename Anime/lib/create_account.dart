import 'package:flutter/material.dart';

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                  height: 180,
                  width: 310,
                  child: Image.asset('assets/images/OTAKU 2.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: const Text(
                "Create Your Account",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                    color: Colors.black,
                    fontFamily: 'assets/font/OpenSans-Bold.ttf'),
              ),
            ),

            // Email
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 278,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailText,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email ID',
                    filled: true,
                    fillColor: Color(0xdcdcdcdc),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.redAccent,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                          color: Color(0xdcdcdcdc),
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        )),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 278,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passText,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      filled: true,
                      fillColor: Color(0xdcdcdcdc),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.redAccent,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                        ),
                        onPressed: () {},
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                            color: Color(0xdcdcdcdc),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                          )),
                    ),
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: isChecked,
                    activeColor: Colors.lightBlueAccent,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                      });
                    }),
                Text(
                  'Remember Me',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      fontFamily: 'OpenSans'),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                width: 250,
                height: 49,
                child: ElevatedButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39.32), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    String u_Email = emailText.text.toString();
                    String upass = passText.text;

                    print("Email: $u_Email, Password: $upass");
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 130,
                    height: 0.5,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Text(
                      'or',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'OpenSans',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    height: 0.5,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Image.asset('assets/images/facebook 2.png'),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, right: 20, left: 20),
                  child: Image.asset('assets/images/google 1.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Image.asset('assets/images/apple-logo 3.png'),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: 'OpenSans',
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (_) => const account()));
                    },
                    child: const Text(
                      ' Sign In',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          fontFamily: 'OpenSans'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
