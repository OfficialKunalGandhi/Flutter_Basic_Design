import 'package:flutter/material.dart';
import 'package:flutter_basic_designs/TextFeild/text.field1.dart';

class SignupScreen1 extends StatefulWidget {
  const SignupScreen1({Key? key}) : super(key: key);

  @override
  _SignupScreen1State createState() => _SignupScreen1State();
}

class _SignupScreen1State extends State<SignupScreen1> {
  TextEditingController nameController = TextEditingController();
  TextEditingController reEnterPasswordController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(-0.7, -0.7),
                stops: [0.0, 0.4, 0.4],
                tileMode: TileMode.repeated,
                colors: [
                  Colors.green.shade200,
                  Colors.green.shade500,
                  Colors.green.shade100
                ])),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.07,
                height: MediaQuery.of(context).size.height / 1.5,
                child: Card(
                  elevation: 9.0,
                  shadowColor: Colors.white,
                  color: Colors.white60,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 40),
                        child: const Text(
                          "Welcome ",
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                      TextField1(
                        controller: nameController,
                        hint: "Name",
                        visble: false,
                      ),
                      TextField1(
                        controller: emailController,
                        hint: "Email",
                        visble: false,
                      ),
                      TextField1(
                          controller: passwordController,
                          hint: "Password",
                          visble: true),
                      TextField1(
                        controller: reEnterPasswordController,
                        hint: "Re-enter Password",
                        visble: false,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextButton(
                          onPressed: null,
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
