import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController enterMobileNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: const Color(0xffff8906),
        child: InkWell(
          onTap: () {
            //print('called on tap');
          },
          child: const SizedBox(
            height: kToolbarHeight,
            width: double.infinity,
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 316,
            ),
            Image.asset(
              "asset/images/appicon.png",
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "DataKart Trace",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(246, 2, 11, 80)),
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  height: 454,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            ExactAssetImage("asset/images/img_sidepanel.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 50, 5, 5),
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: enterMobileNumberController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Enter Mobile Number ',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            width: 0,
                            color: Colors.black,
                            // style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        contentPadding: const EdgeInsets.all(16),
                        fillColor: const Color.fromARGB(255, 255, 254, 252),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
