import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

stepper_provider prof = stepper_provider();
stepper_provider prot = stepper_provider();

class Stepper_screen extends StatefulWidget {
  const Stepper_screen({Key? key}) : super(key: key);

  @override
  _Stepper_screenState createState() => _Stepper_screenState();
}

class _Stepper_screenState extends State<Stepper_screen> {
  @override
  Widget build(BuildContext context) {
    prof = Provider.of<stepper_provider>(context, listen: false);
    prot = Provider.of<stepper_provider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Stepper App",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Stepper(
            steps: [
              Step(
                  title: Text("Signup"),
                  content: Column(children: [
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_add, color: Colors.black),
                        hintText: "Full name",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail, color: Colors.black),
                        hintText: "Email-id",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: Colors.black),
                        hintText: "Password",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: Colors.black),
                        hintText: "Confirm Password",
                      ),
                    ),
                  ])),
              Step(title: Text("Login"), content: Text("")),
              Step(
                  title: Text("Done"),
                  content: Text(
                    "",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text("fees info"),
                  content: Text(
                    "please info",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ],
            currentStep: prot!.i,
            onStepContinue: () {
              prof!.Nextstep();
            },
            onStepCancel: () {
              prof!.prestep();
            },
          ),
        ),
      ),
    );
  }
}
