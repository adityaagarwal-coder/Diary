import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer';
import '../networking/ApiServices.dart';

var token = "";

class BankDetails extends StatefulWidget {
  const BankDetails({Key? key}) : super(key: key);

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  final user = FirebaseAuth.instance.currentUser!;
  final bankNameController = TextEditingController();
  final accNoController = TextEditingController();
  final accNameController = TextEditingController();
  final ifscController = TextEditingController();
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
            controller: bankNameController,
          ),
          TextField(controller: accNoController),
          TextField(controller: accNameController),
          TextField(controller: ifscController),
          InkWell(
              onTap: () {
                service.updatePaymentOption(
                  bankNameController.text,accNoController.text,accNameController.text,ifscController.text
                );
              },
              child: Container(child: Center(child: Text("Save and Continue"))))
        ]))))));
  }
}
