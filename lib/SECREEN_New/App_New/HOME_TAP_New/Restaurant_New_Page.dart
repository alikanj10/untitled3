// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/SECREEN_New/App_NEW/HOME_TAP_NEW/ProdactInforamtionRestaurants_New_Page.dart';
import 'package:untitled3/VIEW_New/AdvetismentsSliderCourser.dart';
import 'package:untitled3/VIEW_New/CardForDetilesShopeAndRestarant.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Restutant         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class RestutantNew extends StatefulWidget {
  const RestutantNew({super.key});

  @override
  State<RestutantNew> createState() => _StateRestutantNew();
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Restutant         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class _StateRestutantNew extends State<RestutantNew> {
  bool isloading = true;

  @override
  void initState() {
    isloading = false;
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isloading = true;
      });
    });

    super.initState();
  }

  bool selected = false;
  int? defaultchioseindex;
  List name = [
    "شاورما",
    "غربي",
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
    // final _theme = Theme.of(context);
    // final _KH_Colors = _theme.extension<KH_Colors>()!;

    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "نتائج البحث ",
          style: TextStyle(
              color: Colors.pinkAccent,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      body: isloading == false
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.pink,
              ),
            )
          : SafeArea(
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
                          return Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              const SizedBox(width: 3),
                              ChoiceChip(
                                padding: EdgeInsets.all(10),
                                selectedColor: Colors.pink[50],
                                selected: defaultchioseindex == index,
                                onSelected: (nowSelcted) {
                                  setState(() {
                                    defaultchioseindex =
                                        nowSelcted ? index : null;
                                  });
                                },
                                label: Text(
                                  "${name[index]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: selected == true
                                          ? Colors.pink
                                          : Colors.black),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@// TEXT FORM FILED (SEARCH) RESTURANT
                    //@@@@@@@@//@@@@@@@@@//

                    KH_FormTextField(
                      borderWidth: 0,
                      virticalHeight: 0,
                      borderColor: Colors.grey[50],
                      borderRadius: 10,
                      isFilled: true,
                      padding: const EdgeInsets.all(10),
                      placeHolder: "search",
                      leadingInnerPrefixIconOrWidget: const Icon(Icons.search),
                      trailingInnerPrefixIconOrWidget: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle_outline_outlined,
                          size: 20,
                        ),
                      ),
                    ),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@// AdvetismentsSliderCourser
                    //@@@@@@@@//@@@@@@@@@//

                    const AdvetismentsSliderCourser(),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//CardForDetilseEcommersAndResturant
                    //@@@@@@@@//@@@@@@@@@//

                    CardForDetilseEcommersAndResturant(
                      nameresturantorecommers: "Hatay Kaptan",
                      contentRestOrEcomm: "Shawrma . western .",
                      openOrClosed: "open",
                      image: ImageAsset.eat,
                      evaluationNumber: " 4.99",
                      pricedelivry: "100",
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (contxet) =>
                                PageProductInfoPageForRestaurant(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@        clean loading       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class ShimmerView extends StatelessWidget {
  const ShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ShimmerBox(flex: 6, widthFactor: 1),
            SizedBox(height: 10),
            ShimmerBox(flex: 1, widthFactor: 1),
            SizedBox(height: 10),
            ShimmerBox(flex: 1, widthFactor: 0.75),
            SizedBox(height: 20),
            ShimmerBox(flex: 6, widthFactor: 1),
            SizedBox(height: 10),
            ShimmerBox(flex: 1, widthFactor: 1),
            SizedBox(height: 10),
            ShimmerBox(flex: 1, widthFactor: 0.75),
            SizedBox(height: 20),
            ShimmerBox(flex: 6, widthFactor: 1),
            SizedBox(height: 10),
            ShimmerBox(flex: 1, widthFactor: 1),
            SizedBox(height: 10),
            ShimmerBox(flex: 1, widthFactor: 0.75),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class ShimmerBox extends StatelessWidget {
  const ShimmerBox({
    super.key,
    required this.flex,
    required this.widthFactor,
  });
  final int flex;
  final double widthFactor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: FractionallySizedBox(
        widthFactor: widthFactor,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.05),
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
