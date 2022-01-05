import 'package:flutter/material.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({Key? key}) : super(key: key);

  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                height: MediaQuery.of(context).size.height / 1.8,
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
                      CustomTextFeild(context, emailController, "Email", false),
                      CustomTextFeild(
                          context, passwordController, "Password", true),
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
                    Navigator.canPop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CustomTextFeild(BuildContext context, TextEditingController controller,
      String hint, bool visble) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: controller,
        obscureText: visble,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            labelText: hint),
      ),
    );
  }
}
