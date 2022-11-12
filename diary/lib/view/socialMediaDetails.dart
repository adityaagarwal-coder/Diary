import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer';
import '../networking/ApiServices.dart';

var token = "";

class SocialMediaDetails extends StatefulWidget {
  const SocialMediaDetails({Key? key}) : super(key: key);

  @override
  State<SocialMediaDetails> createState() => _SocialMediaDetailsState();
}

class _SocialMediaDetailsState extends State<SocialMediaDetails> {
  final user = FirebaseAuth.instance.currentUser!;
  final instaLinkController = TextEditingController();
  final fbLinkController = TextEditingController();
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
            controller: instaLinkController,
          ),
          TextField(controller: fbLinkController),
          InkWell(
              onTap: () {
                service.updateSocialLinks(
                  instaLinkController.text,fbLinkController.text
                );
              },
              child: Container(child: Center(child: Text("Save and Continue"))))
        ]))))));
  }
}
