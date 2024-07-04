import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/SECREEN_New/App_New/HOME_TAP_New/Cart_New_Page.dart';
import 'package:untitled3/SECREEN_New/App_New/HOME_TAP_New/PrudactDetilesRestaurant_New_Page.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    PageProductItemPage     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       ForRestaurants       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class PageProductInfoPageForRestaurant extends StatefulWidget {
  const PageProductInfoPageForRestaurant({super.key});

  @override
  State<PageProductInfoPageForRestaurant> createState() =>
      _StatePageProductInfoPageForRestaurant();

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    PageProductItemPage     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       ForRestaurants       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
}

class _StatePageProductInfoPageForRestaurant
    extends State<PageProductInfoPageForRestaurant> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      body: isloading == false
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.pink,
              ),
            )
          : SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    KH_ShadowCard(
                      innerPadding: 10,
                      innerPaddingvertical: 8,
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
                                  bgColor: Colors.grey.withOpacity(0.6),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back_outlined,
                                      size: 30,
                                      color: Colors.pink,
                                    ),
                                  ),
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
                            fontSize: 15,
                            text:
                                "Shawemaa .  accessoies .  grilled chiken .  fish",
                            titleColor: Colors.grey,
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
                                    outsideMargin: 3,
                                    borderRadius: 5,
                                    child: DelivryAndStarAndOpenOrClose(
                                      colors: Colors.orange,
                                      text: "4.9",
                                      icons: ImageAsset.star,
                                      onTap: () {},
                                    ),
                                  ),
                                ),

                                //@@@@@@@@//@@@@@@@@@//
                                //@@@@@@@@//@@@@@@@@@//
                                //@@@@@@@@//@@@@@@@@@//

                                Expanded(
                                  child: KH_ShadowCard(
                                    bgColor: Colors.blue[100],
                                    outsideMargin: 3,
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

                                Expanded(
                                  child: KH_ShadowCard(
                                    outsideMarginvertical: 10,
                                    bgColor: Colors.green[100],
                                    outsideMargin: 3,
                                    borderRadius: 5,
                                    child: DelivryAndStarAndOpenOrClose(
                                        colors: Colors.green,
                                        onTap: () {},
                                        text: "مفتوح",
                                        icons: ImageAsset.checkbox),
                                  ),
                                )
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
                                  height: 72,
                                  bgColor: Colors.green[100],
                                  outsideMargin: 5,
                                  borderRadius: 10,
                                  child: CartAndInfoAndFavorite(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (contxet) =>
                                                    const Cart()));
                                      },
                                      text: "السلة ",
                                      icons: ImageAsset.cart),
                                ),
                              ),

                              //@@@@@@@@//@@@@@@@@@//
                              //@@@@@@@@//@@@@@@@@@//
                              //@@@@@@@@//@@@@@@@@@//

                              Container(
                                width: 2,
                                height: 65,
                                color: Colors.grey[300],
                              ),
                              Expanded(
                                child: KH_ShadowCard(
                                  height: 72,
                                  bgColor: Colors.orange[100],
                                  outsideMargin: 5,
                                  borderRadius: 10,
                                  child: CartAndInfoAndFavorite(
                                    onTap: () {},
                                    text: "معلومات ",
                                    icons: ImageAsset.info,
                                  ),
                                ),
                              ),

                              //@@@@@@@@//@@@@@@@@@//
                              //@@@@@@@@//@@@@@@@@@//  Favorite
                              //@@@@@@@@//@@@@@@@@@//

                              Container(
                                width: 2,
                                height: 65,
                                color: Colors.grey[300],
                              ),
                              Expanded(
                                child: Favorite(
                                  text: "المفصلة",
                                  addOrDeleteFavorite: () {},
                                ),
                              ),
                            ],
                          ),

                          //@@@@@@@@//@@@@@@@@@//
                          //@@@@@@@@//@@@@@@@@@//
                          //@@@@@@@@//@@@@@@@@@//

                          KH_Filled_Bottun(
                            margin: const EdgeInsets.all(5),
                            onPressed: () {},
                            title: "Free delivery for orders above 220 ",
                            width: double.infinity,
                            bgColor: const Color(0xffd9f1f1),
                            textColor: const Color(0xff08a598),
                            borderColor: Colors.pink[100],
                          ),

                          //@@@@@@@@//@@@@@@@@@//
                          //@@@@@@@@//@@@@@@@@@//
                          //@@@@@@@@//@@@@@@@@@//

                          KH_Filled_Bottun(
                            margin: const EdgeInsets.all(5),
                            onPressed: () {},
                            title: "Minimum oede amoint is 110",
                            width: double.infinity,
                            bgColor: const Color(0xfffce9da),
                            textColor: const Color(0xfffeb6d05),
                            borderColor: Colors.pink[100],
                          ),
                        ],
                      ),
                    ),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@// TEXT FORM FILED (SEACRH)
                    //@@@@@@@@//@@@@@@@@@//

                    ExpansionTile(
                      title: const Text("search options",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      children: [
                        KH_ShadowCard(
                          child: Column(
                            children: [
                              //@@@@@@@@@@@@@@@@@@@
                              //@@@@@@@@@@@@@@@@@@@
                              //@@@@@@@@@@@@@@@@@@@

                              KH_FormTextField(
                                borderWidth: 0,
                                borderColor: Colors.grey[50],
                                virticalHeight: 0,
                                borderRadius: 10,
                                isFilled: true,
                                padding: const EdgeInsets.all(10),
                                placeHolder: "search",
                                leadingInnerPrefixIconOrWidget:
                                    const Icon(Icons.search),
                                trailingInnerPrefixIconOrWidget: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add_circle_outline_outlined,
                                    size: 20,
                                  ),
                                ),
                              ),

                              //@@@@@@@@@@@@@@@@@@@
                              //@@@@@@@@@@@@@@@@@@@
                              //@@@@@@@@@@@@@@@@@@@

                              ClipRRect(
                                borderRadius: BorderRadius.circular(200),
                                child: Image.asset(
                                  ImageAsset.matam,
                                  width: 80,
                                  height: 80,
                                ),
                              ),

                              const Text("data"),

                              //@@@@@@@@@@@@@@@@@@@
                              //@@@@@@@@@@@@@@@@@@@
                              //@@@@@@@@@@@@@@@@@@@

                              KH_Filled_Bottun(
                                onPressed: () {},
                                title: "Serach",
                                width: double.infinity,
                                bgColor: Colors.pink[50],
                                textColor: Colors.pink,
                                borderColor: Colors.pink[100],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//  CardForDetilseResturant
                    //@@@@@@@@//@@@@@@@@@//

                    CardForDetilseResturant(
                      nameresturantorecommers: "ssss",
                      contentRestOrEcomm: "avon",
                      image: ImageAsset.eat,
                      price: "3100 \$",
                      onTapAddToCart: () {},
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (contxet) => const ProductDetailsResPage(),
                          ),
                        );
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//

            Image.asset(
              icons,
              height: 30,
            ),
            SizedBox(
              width: 5,
            ),
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//

            Text(
              text,
              style: TextStyle(
                fontSize: 17,
                color: colors,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
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

            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
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
  const Favorite({
    super.key,
    required this.text,
    required this.addOrDeleteFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return KH_ShadowCard(
      bgColor: Colors.grey[300],
      borderRadius: 10,
      outsideMargin: 5,
      outsideMarginvertical: 10,
      child: Column(children: [
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        IconButton(
            onPressed: addOrDeleteFavorite,
            icon: const Icon(
              Icons.favorite_border_outlined,
              size: 30,
              color: Colors.grey,
            )),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
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
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      contentRestOrEcomm,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 6,
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      height: 8,
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
                                  const Text("Add Cart")
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
