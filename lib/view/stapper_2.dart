import 'package:flutter/material.dart';
import 'package:out_caster4/view/stapper_screen.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class Stapper extends StatefulWidget {
  const Stapper({Key? key}) : super(key: key);

  @override
  _StapperState createState() => _StapperState();
}

class _StapperState extends State<Stapper> {
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
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Stepper(
            steps: [
              Step(title: Text("Sign up"), content: Text("")),
              Step(
                  title: Text("Login"),
                  content: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            hintText: "User Name",
                            prefixIcon: Icon(Icons.person_add)),
                      ),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "password",
                            prefixIcon: Icon(Icons.mail)),
                      )
                    ],
                  )),
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
