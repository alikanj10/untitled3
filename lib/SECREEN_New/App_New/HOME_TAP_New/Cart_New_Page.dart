import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';
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
          title: const Text("Cart",
              style: TextStyle(
                  color: Colors.pinkAccent, fontWeight: FontWeight.bold) ,),),
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

              SizedBox(
                height: 10,
              ),

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
    final _theme = Theme.of(context);
    // final _KH_Colors = _theme.extension<KH_Colors>()!;

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

                    Text(
                  "Peudect name",
                  textAlign: TextAlign.center,
                  style: _theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
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

                  const SizedBox(
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
                borderRadius: 8,
                width: 150,
                bgColor: Colors.pink[50],
                outsideMarginvertical: 10,
                innerPadding: 3,
                innerPaddingvertical: 8,
                child: Text(
                  "price and Quantity",
                  textAlign: TextAlign.center,
                  style: _theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Container(
                color: Colors.grey,
                width: 1,
                height: 25,
              ),

              //@@@@@@@@//@@@@@@@@@//

              const SizedBox(
                width: 30,
              ),

              //@@@@@@@@//@@@@@@@@@//

              Text(
                Price,
                textAlign: TextAlign.center,
                style: _theme.textTheme.bodyMedium?.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              KH_ShadowCard(
                height: 35,
                width: 35,
                bgColor: Colors.pink[50],
                borderRadius: 10,
                outsideMarginvertical: 10,
                innerPaddingvertical: 4,
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
                borderRadius: 8,
                innerPadding: 0,
                outsideMargin: 0,
                child: Image.asset(
                  ImageAsset.recycleBin,
                  height: 35,
                ),
              ),
            ],
          ),

          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//

          const Divider(height: 2, color: Colors.grey),

          Row(
            children: [
              KH_ShadowCard(
                borderRadius: 8,
                width: 150,
                bgColor: Colors.pink[50],
                outsideMarginvertical: 10,
                innerPaddingvertical: 5,
                child: Text(
                  " Options ",
                  textAlign: TextAlign.center,
                  style: _theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
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

                  const SizedBox(
                    width: 10,
                  ),

                  //@@@@@@@@//@@@@@@@@@//

                  Text(
                    "  _ _ _ _ _  ",
                    style: _theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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
    0: Container(
      padding: const EdgeInsets.all(8),
      child: const Text(
        "deliveriy",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    1: Container(
      padding: const EdgeInsets.all(8),
      child: const Text(
        "pick-up",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  };

  //@@@@@@@@//@@@@@@@@@//

  Map<Object, Widget> children2 = {
    0: Container(
      padding: const EdgeInsets.all(8),
      child: const Text(
        " card",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    1: Container(
      padding: const EdgeInsets.all(8),
      child: const Text(
        "cash",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    2: Container(
      padding: const EdgeInsets.all(8),
      child: const Text(
        "bank transfe",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  };

  //@@@@@@@@//@@@@@@@@@//

  int? setectcontroller = 0;
  int? setectcontroller2 = 0;

  //@@@@@@@@//@@@@@@@@@//

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    // final _KH_Colors = _theme.extension<KH_Colors>()!;

    return KH_ShadowCard(
      child: Column(
        children: [
          ExpansionTile(
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//   ExpansionTile Payment and delivery settings
            //@@@@@@@@//@@@@@@@@@//
            leading: Image.asset(
              ImageAsset.basketShoppimg,
              height: 30,
            ),
            title: Text(
              "Payment and delivery settings",
              style: _theme.textTheme.bodyMedium?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            iconColor: Colors.pink,
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//

            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(8),
                child: Text(
                  "order type",
                  style: _theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

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

              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(8),
                child: Text(
                  " paymebt method",
                  style: _theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

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
                title: "expected delivrey time : 30 minutes",
              ),
            ],
          ),

          const Divider(color: Colors.grey, height: 5),

          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//ExpansionTile address
          //@@@@@@@@//@@@@@@@@@//

          ExpansionTile(
            iconColor: Colors.pink,

            leading: Image.asset(
              ImageAsset.location,
              height: 30,
            ),

            //@@@@@@@@//@@@@@@@@@//

            title: Text(
              "Select the delivery address",
              style: _theme.textTheme.bodyMedium?.copyWith(
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
                children: [
                  Expanded(
                    child: KH_SplashedCard(
                      height: 40,
                      outsideMargin: 5,
                      borderRadius: 8,
                      outsideMarginvertical: 8,
                      innerPaddingvertical: 6,
                      onTapping: () {},
                      bgColor: Colors.pink[50],
                      child: Text(
                        "add new address",
                        textAlign: TextAlign.center,
                        style: _theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 16,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),

                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//

                  Expanded(
                    child: KH_SplashedCard(
                      outsideMarginvertical: 8,
                      height: 40,
                      outsideMargin: 5,
                      borderRadius: 8,
                      innerPaddingvertical: 6,
                      onTapping: () {},
                      bgColor: Colors.pink[50],
                      child: Text(
                        "manage addresses",
                        textAlign: TextAlign.center,
                        style: _theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 16,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),

          const Divider(color: Colors.grey, height: 5),

          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@// ExpansionTile from add coupon
          //@@@@@@@@//@@@@@@@@@//

          ExpansionTile(
            iconColor: Colors.pink,

            leading: Image.asset(
              ImageAsset.card,
              height: 30,
            ),
            title: Text(
              "Do you have a coupon ?",
              style: _theme.textTheme.bodyMedium?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            //@@@@@@@@//@@@@@@@@@//

            children: [
              Row(
                children: [
                  //@@@@@@@@//@@@@@@@@@//

                  Expanded(
                    child: KH_FormTextField(
                      borderWidth: 0,
                      horizontalPadding: 0,
                      borderRadius: 16,
                      virticalHeight: 15,
                      padding: const EdgeInsets.all(10),
                      leadingInnerPrefixIconOrWidget:
                          const Icon(Icons.add_outlined),
                      placeHolder: "Enter Coupon",
                      fillColor: Colors.grey[200],
                      isFilled: true,
                    ),
                  ),

                  //@@@@@@@@//@@@@@@@@@//

                  KH_Filled_Bottun(
                    margin: const EdgeInsets.all(7),
                    onPressed: () {},
                    borderColor: Colors.pink,
                    bgColor: Colors.white,
                    borderWidth: 2,
                    child: Text(
                      "Apply",
                      style: _theme.textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          //@@@@@@@@//@@@@@@@@@//

          const Divider(color: Colors.grey, height: 3),

          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//  ExpansionTile from add note
          //@@@@@@@@//@@@@@@@@@//

          ExpansionTile(
            iconColor: Colors.pink,

            leading: Image.asset(
              ImageAsset.note,
              height: 30,
            ),

            //@@@@@@@@//@@@@@@@@@//

            title: Text(
              "do you want to add any notes ?",
              style: _theme.textTheme.bodyMedium?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            //@@@@@@@@//@@@@@@@@@//

            children: [
              KH_FormTextField(
                borderRadius: 20,
                leftPadding: 10,
                borderWidth: 0,
                rightPadding: 10,
                virticalHeight: 50,
                padding: const EdgeInsets.all(10),
                placeHolder: "add your notes here",
                textAlignment: TextAlign.left,
                fillColor: Colors.grey[200],
                isFilled: true,
              ),
              SizedBox(
                height: 10,
              )
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
            ],
          ),
        ],
      ),
    );
  }
}
