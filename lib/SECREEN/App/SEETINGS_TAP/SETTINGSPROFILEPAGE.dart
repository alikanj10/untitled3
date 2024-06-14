import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/VIEW/KH_Componants.dart';

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
      bottomNavigationBar: BottomNavigatiomBarProfile(
        deletAcconut: () {},
        editData: () {},
      ),
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Profile",
            style: TextStyle(fontSize: 18, color: Colors.pink),
          )),
      body: SafeArea(
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
                  fillColor: const Color(0xffF3F3F3),
                  isFilled: true,
                  leadingInnerPrefixIconOrWidget: contentstextform[index]
                      ["icon"],
                  lablTitleText: contentstextform[index]["lablTitleText"],
                  placeHolder: contentstextform[index]["placeHolder"],
                ),
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
        Container(

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//

            decoration: BoxDecoration(
                color: const Color(0xffDF3480),
                borderRadius: BorderRadius.circular(20)),
            width: 400,
            child: MaterialButton(
              onPressed: editData,
              textColor: Colors.white,
              child: const Text("تعديل البيانات",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            )),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        const SizedBox(height: 30),
        Container(
          width: 400,
          decoration: BoxDecoration(
              color: const Color(0xffe1366a),
              borderRadius: BorderRadius.circular(20)),
          child: MaterialButton(
            onPressed: deletAcconut,
            textColor: Colors.white,
            child: const Text(
              " حذف الحساب  ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
