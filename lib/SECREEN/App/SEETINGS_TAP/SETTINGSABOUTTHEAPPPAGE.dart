import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/VIEW/KH_Componants.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@  SettingsAboutTheAppPage   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class SettingsAboutTheAppPage extends StatelessWidget {
  const SettingsAboutTheAppPage({super.key});

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@  SettingsAboutTheAppPage   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  @override
  Widget build(BuildContext context) {
    List contentsCountact = [
      {"image": ImageAsset.phone, "text": "Phone Call"},
      {"image": ImageAsset.whatsapp, "text": "WhatsApp "},
      {"image": ImageAsset.email, "text": "E -Mail "},
      {"image": ImageAsset.web, "text": "Website "},
      {"image": ImageAsset.twiter, "text": "Twitter "},
      {"image": ImageAsset.insta, "text": "Instagram "},
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "About The App",
            style: TextStyle(fontSize: 18, color: Colors.pink),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Container(
                  height: 200,
                  alignment: Alignment.center,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(ImageAsset.dozo))),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//Introductory text
              //@@@@@@@@//@@@@@@@@@//

              const Center(
                  child: Text("تم تطوير هذا التطبيق في معامل دوزو ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold))),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// Introductory text
              //@@@@@@@@//@@@@@@@@@//

              KH_App_Title(
                  virticalPadding: 0,
                  text: "إذا كان لديك اقتراح او فكرة تريد تنفيذها فتواصل معنا"),
              KH_App_Title(
                  textAlign: TextAlign.center,
                  virticalPadding: 0,
                  text: "عبر الوسائل التالية "),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// TYPE COUNTACT
              //@@@@@@@@//@@@@@@@@@//

              SizedBox(height: 20),
              Container(
                height: 600,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: contentsCountact.length,
                  itemBuilder: (context, index) {
                    return KH_ShadowCard(
                        outsideMarginvertical: 20,
                        borderRadius: 30,
                        height: double.infinity,
                        innerPaddingvertical: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "${contentsCountact[index]["image"]}",
                              height: 40,
                            ),
                            Text('${contentsCountact[index]["text"]}')
                          ],
                        ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
