import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/SECREEN/App/HOME_TAP/ProdactInforamtionRestaurants_New_Page.dart';
import 'package:untitled3/VIEW/AdvetismentsSliderCourser.dart';
import 'package:untitled3/VIEW/CardForDetilesShopeAndRestarant.dart';
import 'package:untitled3/VIEW/KH_Componants.dart';

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
          style:
              TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold),
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
                                  setState(
                                    () {
                                      defaultchioseindex =
                                          nowSelcted ? index : null;
                                    },
                                  );
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
                              )
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
                      nameresturantorecommers: "القبطان",
                      contentRestOrEcomm: "شاورما , كربسيي",
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
