import 'package:flutter/material.dart';
import 'package:untitled3/VIEW/KH_Componants.dart';
import 'package:untitled3/imageassets.dart';

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
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(ImageAsset.kolmall),
              ),
            ),

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@// TYPE COUNTACTS
            //@@@@@@@@//@@@@@@@@@//

            Container(
              height: 600,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: contentsCountact.length,
                itemBuilder: (context, index) {
                  return KH_ShadowCard(
                      outsideMarginvertical: 30,
                      borderRadius: 30,
                      height: double.infinity,
                      innerPaddingvertical: 30,
                      child: Column(
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
      )),
    );
  }
}
