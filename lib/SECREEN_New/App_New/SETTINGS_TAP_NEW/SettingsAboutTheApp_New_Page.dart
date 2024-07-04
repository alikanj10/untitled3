import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';

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
      // backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "About The App",
          style: TextStyle(fontSize: 18, color: Colors.pink),
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  ImageAsset.dozo,
                  height: 200,
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// Introductory text
              //@@@@@@@@//@@@@@@@@@//

              KH_App_Title(
                virticalPadding: 0,
                fontSize: 18,
                text: "This app was developed in Dozo labs",
                titleColor: Colors.pink,
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 20,
              ),
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// Introductory text
              //@@@@@@@@//@@@@@@@@@//

              Text(
                "if you have a suggestion or isea that you want to develop , contact us through the follleing means",
                textAlign: TextAlign.center,
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// TYPE COUNTACT
              //@@@@@@@@//@@@@@@@@@//

              SizedBox(height: 20),

              Divider(
                height: 2,
                color: Colors.grey[400],
              ),

              SizedBox(height: 20),

              //@@@@@@@@//@@@@@@@@@//

              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  mainAxisExtent: 140,
                ),
                itemCount: contentsCountact.length,
                itemBuilder: (context, index) {
                  return KH_ShadowCard(
                      borderRadius: 30,
                      innerPaddingvertical: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //@@@@@@@@//@@@@@@@@@//

                          Image.asset(
                            "${contentsCountact[index]["image"]}",
                            height: 30,
                          ),

                          //@@@@@@@@//@@@@@@@@@//

                          Text('${contentsCountact[index]["text"]}')
                        ],
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
