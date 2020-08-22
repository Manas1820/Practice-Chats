import 'package:Ranbhumi/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();

  TextEditingController userNameTextEditingController =
      new TextEditingController();
  TextEditingController emailTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();

  signMeUP() {
    if (formKey.currentState.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarMain(context),
        body: Container(
          child: Container(
              height: MediaQuery.of(context).size.height - 50,
              padding: EdgeInsets.symmetric(horizontal: 24),
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (val) {
                            return val.isEmpty || val.length < 5
                                ? "Please Provide Username"
                                : null;
                          },
                          controller: userNameTextEditingController,
                          decoration: textFieldInputDecoration("Username"),
                          style: textFieldStyle(),
                        ),
                        TextFormField(
                          validator: (val) {
                            return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(val)
                                ? null
                                : "Please Provide a valid email id ";
                          },
                          controller: emailTextEditingController,
                          decoration: textFieldInputDecoration("email"),
                          style: textFieldStyle(),
                        ),
                        TextFormField(
                          obscureText: true,
                          validator: (val) {
                            return val.length > 4
                                ? null
                                : "Please Enter a password Greater 4 charachter";
                          },
                          controller: passwordTextEditingController,
                          decoration: textFieldInputDecoration("password"),
                          style: textFieldStyle(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text(
                        "Forgot Password ?",
                        style: textFieldStyle(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      signMeUP();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            const Color(0xff007EF4),
                            const Color(0xff2A75BC)
                          ]),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Sign Up",
                        style: textFieldStyle1(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      "Sign Up with Google",
                      style: textFieldStyle2(),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have a account?",
                        style: textFieldStyle1(),
                      ),
                      Text(
                        "Sign In now",
                        style: textFieldStyle1(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              )),
        ));
  }
}
