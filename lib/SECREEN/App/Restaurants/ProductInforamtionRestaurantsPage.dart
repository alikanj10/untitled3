import 'package:flutter/material.dart';
import 'package:untitled3/SECREEN/App/CartPage.dart';
import 'package:untitled3/SECREEN/App/Restaurants/PrudactdDetilseRestPgae.dart';
import 'package:untitled3/VIEW/KH_Componants.dart';
import 'package:untitled3/imageassets.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    PageProductItemPage     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       ForRestaurants       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class PageProductInfoPageForRestaurant extends StatelessWidget {
  const PageProductInfoPageForRestaurant({super.key});

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    PageProductItemPage     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       ForRestaurants       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            KH_ShadowCard(
                innerPadding: 10,
                innerPaddingvertical: 8,
                bgColor: Colors.white,
                outsideMarginvertical: 10,
                child: Column(
                  children: [
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Image.asset(ImageAsset.eat),
                          KH_ShadowCard(
                            outsideMarginvertical: 8,
                            outsideMargin: 8,
                            bgColor: Colors.grey.withOpacity(0.8),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.arrow_back_outlined,
                                  size: 30,
                                  color: Colors.pink,
                                )),
                          )
                        ],
                      ),
                    ),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//

                    KH_App_Title(
                      virticalPadding: 8,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      text: "Eat",
                      textAlign: TextAlign.center,
                    ),
                    KH_App_Title(
                      virticalPadding: 0,
                      fontSize: 16,
                      text: "Shawemaa . accessoies",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                              child: KH_ShadowCard(
                                  bgColor: Colors.orange[100],
                                  outsideMargin: 10,
                                  borderRadius: 5,
                                  child: DelivryAndStarAndOpenOrClose(
                                    colors: Colors.brown,
                                    text: "5",
                                    icons: ImageAsset.star,
                                    onTap: () {},
                                  ))),

                          //@@@@@@@@//@@@@@@@@@//
                          //@@@@@@@@//@@@@@@@@@//
                          //@@@@@@@@//@@@@@@@@@//

                          Container(width: 2, height: 30, color: Colors.grey),
                          Expanded(
                            child: KH_ShadowCard(
                              bgColor: Colors.blue[100],
                              outsideMargin: 10,
                              borderRadius: 5,
                              child: DelivryAndStarAndOpenOrClose(
                                  colors: Colors.blue,
                                  onTap: () {},
                                  text: "Free",
                                  icons: ImageAsset.delivery),
                            ),
                          ),

                          //@@@@@@@@//@@@@@@@@@//
                          //@@@@@@@@//@@@@@@@@@//
                          //@@@@@@@@//@@@@@@@@@//

                          Container(width: 2, height: 30, color: Colors.grey),
                          Expanded(
                              child: KH_ShadowCard(
                            outsideMarginvertical: 10,
                            bgColor: Colors.green[100],
                            outsideMargin: 10,
                            borderRadius: 5,
                            child: DelivryAndStarAndOpenOrClose(
                                colors: Colors.green,
                                onTap: () {},
                                text: "مفتوح",
                                icons: ImageAsset.checkbox),
                          ))
                        ]),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//

                    const Divider(height: 10, color: Colors.grey),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: KH_ShadowCard(
                              bgColor: Colors.green[100],
                              outsideMargin: 10,
                              borderRadius: 10,
                              child: CartAndInfoAndFavorite(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (contxet) => Cart()));
                                  },
                                  text: "السلة ",
                                  icons: ImageAsset.cart),
                            ),
                          ),

                          //@@@@@@@@//@@@@@@@@@//
                          //@@@@@@@@//@@@@@@@@@//
                          //@@@@@@@@//@@@@@@@@@//

                          Container(width: 2, height: 80, color: Colors.grey),
                          Expanded(
                            child: KH_ShadowCard(
                                bgColor: Colors.orange[100],
                                outsideMargin: 10,
                                borderRadius: 10,
                                child: CartAndInfoAndFavorite(
                                    onTap: () {},
                                    text: "معلومات ",
                                    icons: ImageAsset.info)),
                          ),

                          //@@@@@@@@//@@@@@@@@@//
                          //@@@@@@@@//@@@@@@@@@//  Favorite
                          //@@@@@@@@//@@@@@@@@@//

                          Container(width: 2, height: 80, color: Colors.grey),
                          Expanded(
                            child: Favorite(
                              text: "المفصلة",
                              addOrDeleteFavorite: () {},
                            ),
                          )
                        ]),
                  ],
                )),

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@// TEXT FORM FILED (SEACRH)
            //@@@@@@@@//@@@@@@@@@//

            ExpansionTile(
                title: const Text(" خيارات البحث  ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                children: [
                  KH_TextField(
                    leadingInnerPrefixIconOrWidget: Icon(Icons.search_rounded),
                    placeHolder: "Search",
                    fillColor: Colors.grey[200],
                    isFilled: true,
                    trailingInnerPrefixIconOrWidget: Icon(Icons.close_rounded),
                  )
                ]),

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//  CardForDetilseResturant
            //@@@@@@@@//@@@@@@@@@//

            CardForDetilseResturant(
                nameresturantorecommers: "ssss",
                contentRestOrEcomm: "avon",
                image: ImageAsset.eat,
                price: "3100 \$",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (contxet) => ProductDetailsResPage()));
                }),
          ],
        ),
      )),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    DelivryAndStarAndOpen   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@            OrClose         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class DelivryAndStarAndOpenOrClose extends StatelessWidget {
  final String text;
  final String icons;
  final Color colors;
  final void Function()? onTap;
  const DelivryAndStarAndOpenOrClose(
      {super.key,
      required this.text,
      required this.icons,
      this.onTap,
      required this.colors});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            alignment: Alignment.center,
            height: 35,
            width: 100,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//

                  Image.asset(
                    icons,
                    height: 30,
                  ),

                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//

                  Text(text, style: TextStyle(fontSize: 16, color: colors))
                ])));
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@   CartAndInfoAndFavorite   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class CartAndInfoAndFavorite extends StatelessWidget {
  final String text;
  final String icons;
  final void Function()? onTap;

  const CartAndInfoAndFavorite(
      {super.key, required this.text, required this.icons, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.all(8),
            height: 80,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//

                  Image.asset(icons, height: 30),

                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//

                  Text(text,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))
                ])));
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Favorite          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class Favorite extends StatelessWidget {
  final String text;
  final void Function()? addOrDeleteFavorite;
  const Favorite(
      {super.key, required this.text, required this.addOrDeleteFavorite});

  @override
  Widget build(BuildContext context) {
    return KH_ShadowCard(
        bgColor: Colors.grey[300],
        borderRadius: 10,
        outsideMargin: 10,
        outsideMarginvertical: 10,
        child: Column(children: [
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//

          IconButton(
              onPressed: addOrDeleteFavorite,
              icon: const Icon(Icons.favorite_border, size: 35)),

          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//

          Text(text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
        ]));
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@  CardForDetilseResturant   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class CardForDetilseResturant extends StatelessWidget {
  final String nameresturantorecommers;
  final String contentRestOrEcomm;
  final String image;
  final String price;
  final Function()? onTap;
  final Function()? onTapAddToCart;
  const CardForDetilseResturant(
      {super.key,
      required this.nameresturantorecommers,
      required this.contentRestOrEcomm,
      required this.image,
      required this.price,
      required this.onTap,
      this.onTapAddToCart});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: KH_ShadowCard(
        innerPadding: 10,
        innerPaddingvertical: 10,
        height: 120,
        width: double.infinity,
        child: Row(
          children: [
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//

            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                height: 110,
                width: 95,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//

            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      nameresturantorecommers,
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      contentRestOrEcomm,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 2,
                    ),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//

                    Row(
                      children: [
                        Expanded(
                          child: KH_SplashedCard(
                            borderRadius: 8,
                            height: 30,
                            bgColor: Colors.green[100],
                            outsideMargin: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(ImageAsset.money),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(price)
                              ],
                            ),
                          ),
                        ),

                        //@@@@@@@@//@@@@@@@@@//
                        //@@@@@@@@//@@@@@@@@@//
                        //@@@@@@@@//@@@@@@@@@//
                        Expanded(
                          child: InkWell(
                            onTap: onTapAddToCart,
                            child: KH_SplashedCard(
                              borderRadius: 8,
                              bgColor: Colors.green[100],
                              outsideMargin: 5,
                              height: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      child: Image.asset(ImageAsset.cart)),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text("Add Cart")
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
