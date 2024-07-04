import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    SettingsProfilePage     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class SettingsProfilePage extends StatelessWidget {
  const SettingsProfilePage({super.key});

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    SettingsProfilePage     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  @override
  Widget build(BuildContext context) {
    List contentstextform = [
      {
        "icon": const Icon(Icons.person),
        "lablTitleText": "Name",
        "placeHolder": "Name"
      },
      {
        "icon": const Icon(Icons.phone),
        "lablTitleText": "Phone",
        "placeHolder": "Phone"
      },
      {
        "icon": const Icon(Icons.alternate_email_outlined),
        "lablTitleText": "E-Mail",
        "placeHolder": "E-Mail"
      },
      {
        "icon": const Icon(Icons.lock_outline_sharp),
        "lablTitleText": "Password",
        "placeHolder": "Password"
      },
    ];

    return Scaffold(
      //@@@@@@@@@@@@@@@@@//

      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 18, color: Colors.pink),
        ),
      ),

      //@@@@@@@@@@@@@@@@@//

      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// LOGOO PAGE
              //@@@@@@@@//@@@@@@@@@//

              Container(
                alignment: Alignment.center,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(ImageAsset.kolmall),
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// CONTENTS PAGE FROM TEXT FORM FILESED
              //@@@@@@@@//@@@@@@@@@//

              ...List.generate(
                contentstextform.length,
                (index) => KH_FormTextField(
                  fillColor: Colors.grey[100],
                  isFilled: true,
                  leadingInnerPrefixIconOrWidget: contentstextform[index]
                      ["icon"],
                  lablTitleText: contentstextform[index]["lablTitleText"],
                  placeHolder: contentstextform[index]["placeHolder"],
                ),
              ),

              BottomNavigatiomBarProfile(
                deletAcconut: () {},
                editData: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavigatiomBarProfile extends StatelessWidget {
  final void Function()? editData;
  final void Function()? deletAcconut;
  const BottomNavigatiomBarProfile(
      {super.key, this.editData, this.deletAcconut});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        KH_Filled_Bottun(
          margin: EdgeInsets.only(top: 30, bottom: 20),
          width: double.infinity,
          onPressed: () {},
          bgColor: const Color(0xffe1366a),
          child: const Text(
            "Edit",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        KH_Filled_Bottun(
          margin: EdgeInsets.only(bottom: 20),
          width: double.infinity,
          onPressed: () {},
          bgColor: const Color(0xffe1366a),
          child: const Text(
            "delete account ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
