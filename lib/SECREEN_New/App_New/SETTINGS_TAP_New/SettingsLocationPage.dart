import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    SettingsLocationPage    @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class SettingsLocationPage extends StatelessWidget {
  const SettingsLocationPage({super.key});

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    SettingsLocationPage    @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),

      //@@@@@@@@//@@@@@@@@@//

      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Location",
          style: TextStyle(fontSize: 18, color: Colors.pink),
        ),

        //@@@@@@@@//@@@@@@@@@//

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.pink,
            ),
          ),
        ],
      ),

      //@@@@@@@@//@@@@@@@@@//

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// LOGOO PAGE
              //@@@@@@@@//@@@@@@@@@//

              Center(
                child: ClipRRect(
                  child: Lottie.asset(ImageAsset.locationLottie, height: 200),
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//

              KH_App_Title(
                text: "Looks like you have not added any delivery address yet",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
