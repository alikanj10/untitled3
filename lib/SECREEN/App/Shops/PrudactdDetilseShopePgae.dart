import 'package:flutter/material.dart';
import 'package:untitled3/VIEW/KH_Componants.dart';
import 'package:untitled3/imageassets.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    ProductDetailsResPage   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class ProductDetailShopePage extends StatefulWidget {
  const ProductDetailShopePage({super.key});

  @override
  State<ProductDetailShopePage> createState() => _StateProductDetailShopePage();

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@   ProductDetailsResPage    @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
}

class _StateProductDetailShopePage extends State<ProductDetailShopePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@// bottomNavigationBar
        //@@@@@@@@//@@@@@@@@@//

        bottomNavigationBar: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(15),

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//

            child: NavigatorBarToPrudactdetilesShope(
              priceEnd: '100',
              onadd: () {},
              onremove: () {},
              count: "20",
            )),
        backgroundColor: const Color(0xffF3F6FF),
        body: ListView(children: [
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//

          Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.asset(ImageAsset.avonnn),
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

                const SizedBox(height: 20),
                KH_App_Title(
                  text: " AVON",
                  virticalPadding: 0,
                  textAlign: TextAlign.center,
                ),
                KH_App_Title(
                  virticalPadding: 10,
                  text: " Parfan",
                  textAlign: TextAlign.center,
                ),

                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@// ContainerPriceAndCart
                //@@@@@@@@//@@@@@@@@@//

                ContainerPriceAndCartShope(
                  price: '300 \$',
                  addtocart: () {},
                )
              ])),
        ]));
  }
}
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@   NavigatorBarToPrudactdetiles  @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class NavigatorBarToPrudactdetilesShope extends StatelessWidget {
  final String priceEnd;
  final String count;
  final void Function()? onadd;
  final void Function()? onremove;
  const NavigatorBarToPrudactdetilesShope({
    super.key,
    required this.priceEnd,
    this.onadd,
    this.onremove,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return KH_ShadowCard(
        outsideMargin: 0,
        innerPaddingvertical: 10,
        innerPadding: 10,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//

          Expanded(
            child: KH_ShadowCard(
                bgColor: Colors.pink,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //@@@@@@@@//@@@@@@@@@//
                      //@@@@@@@@//@@@@@@@@@//
                      //@@@@@@@@//@@@@@@@@@//

                      Text(
                        priceEnd,
                        style: TextStyle(color: Colors.white),
                      ),

                      //@@@@@@@@//@@@@@@@@@//
                      //@@@@@@@@//@@@@@@@@@//
                      //@@@@@@@@//@@@@@@@@@//

                      MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: onadd,
                          child: const Text("اضافة ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)))
                    ])),
          ),

          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//

          Expanded(
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: onadd,
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ))),
                  ),
                  const SizedBox(width: 5),

                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//

                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child:
                            Text(count, style: const TextStyle(height: 1.1))),
                  ),

                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//

                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: onremove,
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ))),
                  )
                ])),
          )
        ]));
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       ContainerPriceAndCart     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class ContainerPriceAndCartShope extends StatelessWidget {
  final String price;
  final Function()? addtocart;
  const ContainerPriceAndCartShope(
      {super.key, required this.price, required this.addtocart});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Expanded(
          child: KH_ShadowCard(
              bgColor: Colors.green[100],
              innerPaddingvertical: 8,
              borderRadius: 10,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//

                    Text(price)
                  ]))),
      const SizedBox(width: 15),

      //@@@@@@@@//@@@@@@@@@//
      //@@@@@@@@//@@@@@@@@@//
      //@@@@@@@@//@@@@@@@@@//

      Expanded(
        child: InkWell(
          onTap: addtocart,
          child: KH_ShadowCard(
              bgColor: Colors.green[100],
              innerPaddingvertical: 8,
              borderRadius: 10,
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//

                    Text("أضف للسلة "),
                    Icon(Icons.shopping_cart_outlined)
                  ])),
        ),
      ),
    ]);
  }
}
