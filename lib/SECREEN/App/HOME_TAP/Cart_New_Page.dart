import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/VIEW/KH_Componants.dart';
import 'package:flutter/src/cupertino/sliding_segmented_control.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@           CartPage              @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _StateCart();
}
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@           CartPage              @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class _StateCart extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
          centerTitle: true,
          title: const Text(" Cart ",
              style: TextStyle(
                  color: Colors.pinkAccent, fontWeight: FontWeight.bold))),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//  NamePrudectAndPriceInCart
              //@@@@@@@@//@@@@@@@@@//

              const NamePrudectAndPriceInCart(
                numberproducts: "Shawrma",
                priceproducts: "900",
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//  OrderDetailsCart
              //@@@@@@@@//@@@@@@@@@//

              const OrderDetailsCart(
                  Price: "200", TyepEat: "shawrma", Count: "8"),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// Expansion Tile In Cart
              //@@@@@@@@//@@@@@@@@@//

              const ExpansionTileInCart(),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              KH_Filled_Bottun(
                onPressed: () {},
                width: double.infinity,
                bgColor: Colors.pink,
                child: const Text(
                  "continue to finish orders",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@   NamePrudectAndPriceInCart     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class NamePrudectAndPriceInCart extends StatelessWidget {
  final String numberproducts;
  final String priceproducts;

  const NamePrudectAndPriceInCart({
    super.key,
    required this.numberproducts,
    required this.priceproducts,
  });

  @override
  Widget build(BuildContext context) {
    return KH_ShadowCard(
      outsideMarginvertical: 10,
      innerPaddingvertical: 20,
      innerPadding: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Image.asset(
                ImageAsset.cart,
                height: 30,
              ),
              const SizedBox(width: 20),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              const Text(
                "Prudacts quantity : ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 20),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Text(numberproducts),
            ],
          ),
          const SizedBox(height: 15),

          //@@@@@@@@//@@@@@@@@@//

          const Divider(
            color: Colors.grey,
            height: 5,
          ),

          //@@@@@@@@//@@@@@@@@@//
          const SizedBox(height: 15),

          Row(
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Image.asset(
                ImageAsset.money,
                height: 30,
              ),
              const SizedBox(width: 20),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              const Text(
                "Prudacts Price :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 20),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Text(priceproducts),
            ],
          ),
        ],
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      OrderDetailsCart      @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class OrderDetailsCart extends StatelessWidget {
  final String Price;
  final String TyepEat;
  final String Count;

  const OrderDetailsCart(
      {super.key,
      required this.Price,
      required this.TyepEat,
      required this.Count});

  @override
  Widget build(BuildContext context) {
    return KH_ShadowCard(
      outsideMarginvertical: 20,
      child: Column(
        children: [
          Row(
            children: [
              KH_ShadowCard(
                width: 150,
                bgColor: Colors.pink[50],
                outsideMarginvertical: 10,
                innerPadding: 0,
                innerPaddingvertical: 8,
                child:
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//

                    const Text(
                  "Peudect name",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    width: 1,
                    height: 25,
                  ),

                  //@@@@@@@@//@@@@@@@@@//

                  SizedBox(
                    width: 10,
                  ),

                  //@@@@@@@@//@@@@@@@@@//

                  Text(
                    TyepEat,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),

          //@@@@@@@@//@@@@@@@@@//

          const Divider(height: 2, color: Colors.grey),

          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//

          Row(
            children: [
              KH_ShadowCard(
                width: 150,
                bgColor: Colors.pink[50],
                outsideMarginvertical: 10,
                innerPadding: 0,
                innerPaddingvertical: 8,
                child: const Text(
                  " price and Quantity ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    width: 1,
                    height: 25,
                  ),

                  //@@@@@@@@//@@@@@@@@@//

                  SizedBox(
                    width: 10,
                  ),

                  //@@@@@@@@//@@@@@@@@@//

                  Text(
                    Price,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  KH_ShadowCard(
                    height: 40,
                    width: 40,
                    bgColor: Colors.pink[50],
                    borderRadius: 10,
                    outsideMarginvertical: 10,
                    innerPaddingvertical: 8,
                    child: Text(
                      Count,
                      textAlign: TextAlign.center,
                    ),
                  ),

                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//

                  KH_ShadowCard(
                    bgColor: Colors.pink[50],
                    borderRadius: 10,
                    height: 40,
                    width: 40,
                    innerPaddingvertical: 0,
                    outsideMargin: 10,
                    child: Image.asset(
                      ImageAsset.recycleBin,
                    ),
                  ),
                ],
              )
            ],
          ),

          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//

          const Divider(height: 2, color: Colors.grey),

          Row(
            children: [
              KH_ShadowCard(
                width: 150,
                bgColor: Colors.pink[50],
                outsideMarginvertical: 10,
                innerPaddingvertical: 5,
                child: const Text(
                  " Options ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.bold),
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    width: 1,
                    height: 25,
                  ),

                  //@@@@@@@@//@@@@@@@@@//

                  SizedBox(
                    width: 10,
                  ),

                  //@@@@@@@@//@@@@@@@@@//

                  const Text(
                    "  _ _ _ _ _  ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     ExpansionTileInCart    @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class ExpansionTileInCart extends StatefulWidget {
  const ExpansionTileInCart({super.key, s});

  @override
  State<ExpansionTileInCart> createState() => _StateExpansionTileInCart();
}

class _StateExpansionTileInCart extends State<ExpansionTileInCart> {
  //@@@@@@@@//@@@@@@@@@//

  Map<Object, Widget> children = {
    0: const Text("توصيل"),
    1: const Text("استلام"),
  };

  //@@@@@@@@//@@@@@@@@@//

  Map<Object, Widget> children2 = {
    0: const Text("بطاقة"),
    1: const Text("كاش"),
    2: const Text("تحويل بنك "),
  };

  //@@@@@@@@//@@@@@@@@@//

  int? setectcontroller = 0;
  int? setectcontroller2 = 0;

  //@@@@@@@@//@@@@@@@@@//

  @override
  Widget build(BuildContext context) {
    return KH_ShadowCard(
      child: Column(
        children: [
          ExpansionTile(
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//   ExpansionTile Payment and delivery settings
            //@@@@@@@@//@@@@@@@@@//

            leading: Image.asset(
              ImageAsset.basketShoppimg,
              height: 35,
            ),
            title: const Text(
              "Payment and delivery settings",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//

            children: [
              const Text("نوع الطلب "),
              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                child: CupertinoSlidingSegmentedControl(
                  // padding: EdgeInsets.all(10),

                  children: children,
                  groupValue: setectcontroller,
                  onValueChanged: (newvalue) {
                    setState(() {
                      setectcontroller = newvalue as int?;
                    });
                  },
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              const Text(" طريقة الدفع "),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                child: CupertinoSlidingSegmentedControl(
                  groupValue: setectcontroller2,
                  children: children2,
                  onValueChanged: (value) {
                    setState(
                      () {
                        setectcontroller2 = value as int?;
                      },
                    );
                  },
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              KH_Filled_Bottun(
                onPressed: () {},
                textColor: Colors.pink,
                borderColor: Colors.pink[50],
                bgColor: Colors.pink[50],
                width: double.infinity,
                title: "وقف التوصيل المتوقع : 30 دقيقة ",
              ),
            ],
          ),

          const Divider(color: Colors.grey, height: 5),

          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//ExpansionTile address
          //@@@@@@@@//@@@@@@@@@//

          ExpansionTile(
              leading: Image.asset(
                ImageAsset.location,
                height: 35,
              ),

              //@@@@@@@@//@@@@@@@@@//

              title: const Text(
                "Select the delivery address",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//

              children: [
                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: KH_Filled_Bottun(
                        margin: EdgeInsets.all(5),
                        onPressed: () {},
                        borderColor: Colors.pink[50],
                        bgColor: Colors.pink[50],
                        child: const Text(
                          "اضف عنوان جديد",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//

                    Expanded(
                      child: KH_Filled_Bottun(
                        margin: const EdgeInsets.all(5),
                        onPressed: () {},
                        borderColor: Colors.pink[50],
                        bgColor: Colors.pink[50],
                        child: const Text(
                          "ادارة عنوانك",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ]),

          const Divider(color: Colors.grey, height: 5),

          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@// ExpansionTile from add coupon
          //@@@@@@@@//@@@@@@@@@//

          ExpansionTile(
            leading: Image.asset(
              ImageAsset.card,
              height: 35,
            ),
            title: const Text(
              "Do you have a coupon ?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  children: [
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//

                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      width: 250,
                      child: KH_FormTextField(
                        borderWidth: 0,
                        horizontalPadding: 0,
                        virticalHeight: 15,
                        padding: EdgeInsets.all(10),
                        leadingInnerPrefixIconOrWidget:
                            Icon(Icons.add_outlined),
                        placeHolder: "Enter Coupon",
                        fillColor: Colors.grey[200],
                        isFilled: true,
                      ),
                    ),

                    //@@@@@@@@//@@@@@@@@@//

                    KH_Filled_Bottun(
                      margin: EdgeInsets.all(7),
                      onPressed: () {},
                      borderColor: Colors.pink,
                      bgColor: Colors.white,
                      borderWidth: 2,
                      child: const Text(
                        "Apply",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
            ],
          ),
          const Divider(color: Colors.grey, height: 3),

          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//  ExpansionTile from add note
          //@@@@@@@@//@@@@@@@@@//

          ExpansionTile(
            leading: Image.asset(
              ImageAsset.note,
              height: 35,
            ),

            //@@@@@@@@//@@@@@@@@@//

            title: const Text(
              "do you want to add any notes ?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            //@@@@@@@@//@@@@@@@@@//

            children: [
              KH_FormTextField(
                horizontalPadding: 0,
                virticalHeight: 100,
                padding: EdgeInsets.all(10),
                placeHolder: "do you want to add note ?",
                fillColor: Colors.grey[200],
                isFilled: true,
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              KH_Filled_Bottun(
                onPressed: () {},
                margin: EdgeInsets.all(10),
                borderColor: Colors.pink,
                borderWidth: 2,
                bgColor: Colors.white,
                child: const Text(
                  "Add",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
