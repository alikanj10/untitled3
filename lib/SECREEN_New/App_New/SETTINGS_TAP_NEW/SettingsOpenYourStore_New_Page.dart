import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';
import 'package:lottie/lottie.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@ SettingsOpenYourStorePage  @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class SettingsOpenYourStorePage extends StatelessWidget {
  const SettingsOpenYourStorePage({super.key});

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@ SettingsOpenYourStorePage  @@@@@@@@@@@@@@@@@@@@@@@@//
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
      {"image": ImageAsset.faesbook, "text": "Fasebook "},
      {"image": ImageAsset.shanpshat, "text": "Snapchat "},
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Open Your Store",
          style: TextStyle(fontSize: 18, color: Colors.pink),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// LOGOO PAGE
              //@@@@@@@@//@@@@@@@@@//
              Lottie.asset(ImageAsset.office, height: 200),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// TYPE COUNTACTS
              //@@@@@@@@//@@@@@@@@@//

              GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
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
                        children: [
                          //@@@@@@@@@@@@@@@@@//

                          Image.asset(
                            "${contentsCountact[index]["image"]}",
                            height: 40,
                          ),

                          //@@@@@@@@@@@@@@@@@//

                          Text('${contentsCountact[index]["text"]}'),
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
