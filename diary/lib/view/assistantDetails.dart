import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer';
import '../networking/ApiServices.dart';

var token = "";

class AssistantDetails extends StatefulWidget {
  const AssistantDetails({Key? key}) : super(key: key);

  @override
  State<AssistantDetails> createState() => _AssistantDetailsState();
}

class _AssistantDetailsState extends State<AssistantDetails> {
  final user = FirebaseAuth.instance.currentUser!;
  final assistantNameController = TextEditingController();
  final emailIdController = TextEditingController();
  final mobileNoController = TextEditingController();
  void getUserInfo() {
    user.getIdToken(true).then((value) {
      log("newToken: ${value.toString()}");
      token = value.toString();
    });
  }

  ApiServices service = new ApiServices();
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: (Center(
                child: (Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
          TextField(
            controller: assistantNameController,
          ),
          TextField(controller: emailIdController),
          TextField(controller: mobileNoController),
          InkWell(
              onTap: () {
                service.updateAssistant(
                  emailIdController.text,int.parse(mobileNoController.text),assistantNameController.text
                );
              },
              child: Container(child: Center(child: Text("Save and Continue"))))
        ]))))));
  }
}
