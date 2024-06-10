import 'package:flutter/material.dart';
import 'package:untitled3/VIEW/KH_Componants.dart';
import 'package:flutter/src/cupertino/sliding_segmented_control.dart';
import 'package:untitled3/imageassets.dart';

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

            KH_Bordered_Bottun(
              onPressed: () {},
              textColor: Colors.pink,
              backGroundColor: Colors.pink,
              borderColor: Colors.white,
              child: const Text(
                "continue to finish orders",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      )),
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
            Row(children: [
              Expanded(
                child: KH_ShadowCard(
                  height: 40,
                  bgColor: Colors.pink[200],
                  borderRadius: 10,
                  outsideMarginvertical: 10,
                  innerPadding: 0,
                  innerPaddingvertical: 8,
                  child:
                      //@@@@@@@@//@@@@@@@@@//
                      //@@@@@@@@//@@@@@@@@@//
                      //@@@@@@@@//@@@@@@@@@//

                      Text("Name Peudect : ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(width: 20),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Expanded(
                  child: Text(TyepEat, style: const TextStyle(fontSize: 16))),
            ]),

            //===================================================================

            const Divider(height: 2, color: Colors.grey),

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//

            Row(children: [
              Expanded(
                flex: 3,
                child: KH_ShadowCard(
                    height: 40,
                    bgColor: Colors.pink[200],
                    borderRadius: 10,
                    innerPadding: 5,
                    innerPaddingvertical: 8,
                    child: const Text("Quantity and price",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Expanded(
                child: Text(Price,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Expanded(
                child: KH_ShadowCard(
                    height: 40,
                    bgColor: Colors.pink[200],
                    borderRadius: 10,
                    outsideMarginvertical: 10,
                    innerPaddingvertical: 8,
                    child: Text(
                      Count,
                      textAlign: TextAlign.center,
                    )),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Expanded(
                child: KH_ShadowCard(
                  bgColor: Colors.pink[200],
                  borderRadius: 10,
                  height: 40,
                  innerPaddingvertical: 0,
                  outsideMargin: 10,
                  child: const Icon(Icons.delete_outline_outlined),
                ),
              ),
            ]),

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//

            const Divider(height: 2, color: Colors.grey),

            Row(children: [
              Expanded(
                child: KH_ShadowCard(
                    bgColor: Colors.pink[200],
                    borderRadius: 10,
                    outsideMarginvertical: 10,
                    innerPaddingvertical: 5,
                    child: const Text(
                      " Options ",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              const Expanded(
                child: Text("  _ _ _ _ _  ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ])

            //===================================================================
          ],
        ));
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
                  "Number the Prudact : ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 20),

                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//

                Text(numberproducts),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(
              color: Colors.black,
              height: 5,
            ),
            const SizedBox(height: 20),
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
                  "Price the Prudact :",
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
        ));
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
  @override
  Widget build(BuildContext context) {
    //@@@@@@@@//@@@@@@@@@//
    //@@@@@@@@//@@@@@@@@@//

    Map<Object, Widget> children = {
      0: const Text("توصيل"),
      1: const Text("استلام"),
    };

    //@@@@@@@@//@@@@@@@@@//
    //@@@@@@@@//@@@@@@@@@//

    int? setectcontroller = 0;

    //@@@@@@@@//@@@@@@@@@//
    //@@@@@@@@//@@@@@@@@@//

    Map<Object, Widget> children2 = {
      0: const Text("بطاقة"),
      1: const Text("كاش"),
      2: const Text("تحويل بنك "),
    };
    //@@@@@@@@//@@@@@@@@@//
    //@@@@@@@@//@@@@@@@@@//

    int? setectcontroller2 = 0;

    //@@@@@@@@//@@@@@@@@@//

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
            title: const Text("Payment and delivery settings",
                style: TextStyle(fontSize: 16)),

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//

            children: [
              const Text("نوع الطلب "),
              Container(
                  margin: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: CupertinoSlidingSegmentedControl(
                      groupValue: setectcontroller,
                      children: children,
                      onValueChanged: (value) {
                        setState(() {
                          setectcontroller = value as int?;
                        });
                      })),

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
                        setState(() {
                          setectcontroller2 = value as int?;
                        });
                      })),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.pink[100],
                  child: const Text(
                    "وقف التوصيل المتوقع : 30 دقيقة ",
                    style: TextStyle(color: Colors.pink, fontSize: 16),
                  ))
            ]),

        Divider(color: Colors.grey, height: 5),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//ExpansionTile address
        //@@@@@@@@//@@@@@@@@@//

        ExpansionTile(
            leading: Image.asset(
              ImageAsset.location,
              height: 35,
            ),
            title: const Text("Select the delivery address",
                style: TextStyle(fontSize: 16)),
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textColor: Colors.pink,
                      color: Colors.pink[100],
                      child: const Text("اضف عنوان جديد",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold))),
                ),
                SizedBox(
                  width: 10,
                ),

                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//

                Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textColor: Colors.pink,
                      color: Colors.pink[100],
                      child: const Text("  ادارة عنوانك",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold))),
                )
              ])
            ]),

        Divider(color: Colors.grey, height: 5),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@// ExpansionTile from add coupon
        //@@@@@@@@//@@@@@@@@@//

        ExpansionTile(
            leading: Image.asset(
              ImageAsset.card,
              height: 35,
            ),
            title: const Text("Do you have a coupon ?",
                style: TextStyle(fontSize: 16)),
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        width: 220,
                        child: KH_TextField(
                          placeHolder: "Enter Code",
                          fillColor: Colors.grey[200],
                          isFilled: true,
                          leftPadding: 0,
                          rightPadding: 0,
                        )),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@//

                    Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2, color: Colors.pink)),
                        width: 100,
                        height: 65,
                        child: MaterialButton(
                            onPressed: () {},
                            textColor: Colors.pink,
                            child: const Text("تطبيق",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)))),
                  ]))
            ]),
        const Divider(color: Colors.grey, height: 3),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//  ExpansionTile from add note
        //@@@@@@@@//@@@@@@@@@//

        ExpansionTile(
            leading: Image.asset(
              ImageAsset.note,
              height: 35,
            ),
            title: const Text("do you want to add any notes ?",
                style: TextStyle(fontSize: 16)),
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Row(children: [
                Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 2, color: Colors.pink)),
                    child: MaterialButton(
                        onPressed: () {},
                        textColor: Colors.pink,
                        child: const Text("Add",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)))),
                const SizedBox(width: 15),

                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//

                Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    width: 230,
                    child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "do you want to add any notes ?",
                            fillColor: Colors.grey[200],
                            filled: true)))

                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//
              ])
            ]),
      ],
    ));
  }
}
