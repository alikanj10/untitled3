import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/SECREEN/App/HOME_TAP/ProdactInforamtionRestaurantsPage.dart';
import 'package:untitled3/VIEW/AdevtiseMntssliderCuosrer.dart';
import 'package:untitled3/VIEW/CardForDetilesShopeAndRestarant.dart';
import 'package:untitled3/VIEW/KH_Componants.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Restutant         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class Restutant extends StatefulWidget {
  const Restutant({super.key});

  @override
  State<Restutant> createState() => _StateRestutant();
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Restutant         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class _StateRestutant extends State<Restutant> {
  bool selected = false;
  int? defaultchioseindex;
  List name = [
    "شاورما",
    "غربي",
    "فروج مشوي ",
    "مشاوي",
    "صفيحة",
    "سمك",
    "بيتزا",
    "برجر",
    "فطور",
    "مناقيش",
    "مناسف",
    "مأكولات سورية",
    "مأكولات تركية",
    "كافيه",
    "حلويات",
    "ملحمة",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
          centerTitle: true,
          title: const Text("نتائج البحث ",
              style: TextStyle(
                  color: Colors.pinkAccent, fontWeight: FontWeight.bold))),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// CHOISE CHIP RESTURANT
              //@@@@@@@@//@@@@@@@@@//
              Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: name.length,
                      itemBuilder: (context, index) {
                        return Wrap(spacing: 8, runSpacing: 8, children: [
                          const SizedBox(width: 3),
                          ChoiceChip(
                              showCheckmark: false,
                              selectedColor: Colors.pink[50],
                              selected: defaultchioseindex == index,
                              onSelected: (nowSelcted) {
                                setState(() {
                                  defaultchioseindex =
                                      nowSelcted ? index : null;
                                });
                              },
                              label: Text("${name[index]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: selected == true
                                          ? Colors.pink
                                          : Colors.black)))
                        ]);
                      })),

              //=======================

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// TEXT FORM FILED (SEARCH) RESTURANT
              //@@@@@@@@//@@@@@@@@@//
              KH_FormTextField(
                  borderWidth: 0,
                  virticalHeight: 15,
                  borderColor: Colors.grey[100],
                  fillColor: Colors.grey[200],
                  isFilled: true,
                  padding: const EdgeInsets.all(10),
                  placeHolder: "search",
                  leadingInnerPrefixIconOrWidget: const Icon(Icons.search),
                  trailingInnerPrefixIconOrWidget: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.close_sharp,
                        size: 20,
                      ))),

              const SizedBox(height: 20),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// AdvetismentsSliderCourser
              //@@@@@@@@//@@@@@@@@@//
              const AdvetismentsSliderCourser(),
              const SizedBox(height: 20),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//CardForDetilseEcommersAndResturant
              //@@@@@@@@//@@@@@@@@@//
              CardForDetilseEcommersAndResturant(
                nameresturantorecommers: "القبطان",
                contentRestOrEcomm: "شاورما , كربسيي",
                openOrClosed: "open",
                image: ImageAsset.eat,
                evaluationNumber: " 4.99",
                pricedelivry: "100",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (contxet) =>
                          PageProductInfoPageForRestaurant()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
