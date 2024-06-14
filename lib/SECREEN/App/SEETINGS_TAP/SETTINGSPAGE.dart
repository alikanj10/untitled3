import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/MODELS/CLASESS/KH_BottomSheet.dart';
import 'package:untitled3/SECREEN/AUTH/LoginPage.dart';
import 'package:untitled3/SECREEN/App/SEETINGS_TAP/SETTINGSABOUTTHEAPPPAGE.dart';
import 'package:untitled3/SECREEN/App/SEETINGS_TAP/SETTINGSCOUNTACTUSPAGE.dart';
import 'package:untitled3/SECREEN/App/SEETINGS_TAP/SETTINGSLOCATIONPAGE.dart';
import 'package:untitled3/SECREEN/App/SEETINGS_TAP/SETTINGSOPENYOURSTOREPAGE.dart';
import 'package:untitled3/SECREEN/App/SEETINGS_TAP/SETTINGSPROFILEPAGE.dart';


//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Settings          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class Settings extends StatelessWidget {
  const Settings({super.key});

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Settings          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Settings",
            style: TextStyle(fontSize: 18, color: Colors.pink),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    ImageAsset.kolmall,
                    height: 200,
                  ),
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "Profile",
                image: ImageAsset.profile,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsProfilePage()));
                },
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "Location",
                image: ImageAsset.location,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsLocationPage()));
                },
              ),
              const BottomSheetLang(),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              const BottomSheetThemes(),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "Countact Us",
                image: ImageAsset.phone,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsCountactPage()));
                },
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "About The App",
                image: ImageAsset.info,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsAboutTheAppPage()));
                },
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "Upate notification token",
                image: ImageAsset.bell,
                onTap: () {},
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "Open your free store with us ",
                image: ImageAsset.store,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsOpenYourStorePage()));
                },
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "Log In",
                image: ImageAsset.login,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@     BottomSheetLang         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class BottomSheetLang extends StatefulWidget {
  const BottomSheetLang({super.key});

  @override
  State<BottomSheetLang> createState() => _StateBottomSheetLang();
}

class _StateBottomSheetLang extends State<BottomSheetLang> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          padding: const EdgeInsets.all(18),
          onPressed: () {
            KH_BottomSheet.show_KH_BottomSheet(
                context: context,
                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//
                child: SectionsLangSettings(
                  changetoArabic: () {},
                  changetoEnglish: () {},
                  changetoturka: () {},
                ));
          },
          child: Row(children: [
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            Image.asset(
              ImageAsset.lang,
              height: 30,
              width: 30,
            ),
            const SizedBox(width: 20),
            const Text(
              "Choose language",
              style: TextStyle(fontSize: 16),
            ),
          ]),
        ),
        Divider(
          height: 2,
          color: Colors.grey[400],
        ),
      ],
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@     BottomSheetThemes       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class BottomSheetThemes extends StatefulWidget {
  const BottomSheetThemes({super.key});

  @override
  State<BottomSheetThemes> createState() => _StateBottomSheetThemes();
}

class _StateBottomSheetThemes extends State<BottomSheetThemes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
            padding: const EdgeInsets.all(18),
            onPressed: () {
              KH_BottomSheet.show_KH_BottomSheet(
                  context: context,

                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//

                  child: SectionsThemeSettings(
                    changetodark: () {},
                    changetoligth: () {},
                    changetosystem: () {},
                  ));
            },
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            child: Row(children: [
              Image.asset(ImageAsset.themesystem, height: 30, width: 30),
              const SizedBox(width: 20),
              const Text(
                "Choose Themes",
                style: TextStyle(fontSize: 16),
              ),
            ])),
        Divider(
          height: 2,
          color: Colors.grey[400],
        )
      ],
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     SectionsLangSettings   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class SectionsLangSettings extends StatelessWidget {
  final void Function()? changetoArabic;
  final void Function()? changetoEnglish;
  final void Function()? changetoturka;
  const SectionsLangSettings(
      {super.key,
      required this.changetoArabic,
      required this.changetoEnglish,
      required this.changetoturka});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        Container(
            margin: const EdgeInsets.only(top: 15),
            height: 5,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(5))),
        const SizedBox(height: 20),
        const Text("تغير اللغة", style: TextStyle(fontSize: 20)),
        const SizedBox(height: 20),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        DetilsBottomSheet(
            text: "اللغة العربية ",
            image: ImageAsset.emirates,
            onTap: changetoArabic),

        const Divider(height: 3, color: Colors.grey),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        DetilsBottomSheet(
            text: "Turkea", image: ImageAsset.turkia, onTap: changetoturka),

        const Divider(height: 3, color: Colors.grey),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        DetilsBottomSheet(
            text: "English", image: ImageAsset.usa, onTap: changetoEnglish),
        const Divider(height: 3, color: Colors.grey),
      ],
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     SectionsThemeSettings  @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class SectionsThemeSettings extends StatelessWidget {
  final void Function()? changetodark;
  final void Function()? changetoligth;
  final void Function()? changetosystem;
  const SectionsThemeSettings(
      {super.key, this.changetodark, this.changetoligth, this.changetosystem});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        Container(
            margin: const EdgeInsets.only(top: 15),
            height: 5,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(5))),
        const SizedBox(height: 20),
        const Text("Change Themes", style: TextStyle(fontSize: 20)),
        const SizedBox(height: 20),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        DetilsBottomSheet(
            text: "System Themes",
            image: ImageAsset.themesystem,
            onTap: changetosystem),

        const Divider(height: 3, color: Colors.grey),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        DetilsBottomSheet(
            text: "Ligth Themes",
            image: ImageAsset.themeligth,
            onTap: changetoligth),

        const Divider(height: 3, color: Colors.grey),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        DetilsBottomSheet(
            text: "Dark Themes",
            image: ImageAsset.themedark,
            onTap: changetodark),

        const Divider(
          height: 3,
          color: Colors.grey,
        ),
      ],
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     DetilsBottomSheet      @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class DetilsBottomSheet extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final String image;
  const DetilsBottomSheet(
      {super.key, this.onTap, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //@@@@@@@@//@@@@@@@@@//
      //@@@@@@@@//@@@@@@@@@//
      onTap: onTap,
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            Image.asset(image, height: 30),
            const SizedBox(width: 20),
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@  SectionsOfTheSettingspage  @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class SectionsOfTheSettingspage extends StatelessWidget {
  final String text;
  final String image;
  final Function()? onTap;
  const SectionsOfTheSettingspage(
      {super.key,
      required this.text,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          padding: const EdgeInsets.all(18),
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          onPressed: onTap,
          child: Row(children: [
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            Image.asset(image, height: 30, width: 30),
            const SizedBox(width: 20),
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ]),
        ),
        Divider(
          height: 2,
          color: Colors.grey[400],
        )
      ],
    );
  }
}
