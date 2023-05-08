import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:out_caster4/view/stapper_screen.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class Stapper_3 extends StatefulWidget {
  const Stapper_3({Key? key}) : super(key: key);

  @override
  _Stapper_3State createState() => _Stapper_3State();
}

class _Stapper_3State extends State<Stapper_3> {
  @override
  Widget build(BuildContext context) {
    prof = Provider.of<stepper_provider>(context, listen: false);
    prot = Provider.of<stepper_provider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Edit Your Profile",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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
              Step(title: Text("Login"),
                  content: Text("")),
              Step(
                  title: Text("Contry"),
                  content: Text(
                    "Enter your Contry",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text("Phone"),
                  content: Text(
                    "",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text("Gender"),
                  content: Text(
                    "",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text("Language"),
                  content: Text(
                    "",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text("Current Location"),
                  content: Text(
                    "",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text("Name"),
                  content: Text(
                    "",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text("DOB"),
                  content: Text(
                    "",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text("Email"),
                  content: Text(
                    "",
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
