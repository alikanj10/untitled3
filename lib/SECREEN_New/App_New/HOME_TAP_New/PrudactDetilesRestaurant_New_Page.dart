import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    ProductDetailsResPage   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class ProductDetailsResPage extends StatefulWidget {
  const ProductDetailsResPage({super.key});

  @override
  State<ProductDetailsResPage> createState() => _StateProductDetailsResPage();

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@   ProductDetailsResPage    @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
}

class _StateProductDetailsResPage extends State<ProductDetailsResPage> {
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
      //@@@@@@@@//@@@@@@@@@//
      //@@@@@@@@//@@@@@@@@@// bottomNavigationBar
      //@@@@@@@@//@@@@@@@@@//

      bottomNavigationBar: NavigatorBarToPrudactdetilesRest(
        priceEnd: '300',
        onadd: () {},
        onremove: () {},
        count: "2",
      ),

      //@@@@@@@@//@@@@@@@@@//
      //@@@@@@@@//@@@@@@@@@//
      //@@@@@@@@//@@@@@@@@@//

      backgroundColor: const Color(0xffF3F6FF),
      body: isloading == false
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.pink,
              ),
            )
          : SafeArea(
              minimum: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    KH_ShadowCard(
                      outsideMargin: 0,
                      outsideMarginvertical: 18,
                      innerPaddingvertical: 16,
                      innerPadding: 10,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 160,
                                  color: Colors.blueGrey,
                                ),
                                KH_ShadowCard(
                                  outsideMarginvertical: 8,
                                  outsideMargin: 8,
                                  bgColor: Colors.grey.withOpacity(0.8),
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

                          const SizedBox(height: 20),
                          KH_App_Title(
                            text: "Eat",
                            virticalPadding: 0,
                            textAlign: TextAlign.center,
                          ),

                          const SizedBox(
                            height: 8,
                          ),
                          KH_App_Title(
                            virticalPadding: 0,
                            text: "Borst",
                            titleColor: Colors.grey,
                            textAlign: TextAlign.center,
                          ),

                          const SizedBox(
                            height: 8,
                          ),

                          //@@@@@@@@//@@@@@@@@@//
                          //@@@@@@@@//@@@@@@@@@// ContainerPriceAndCart
                          //@@@@@@@@//@@@@@@@@@//

                          ContainerPriceAndCartRest(
                            price: '200 ',
                            addtocart: () {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 340,
                    ),
                  ],
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
            ),
    );
  }
}
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@   NavigatorBarToPrudactdetiles  @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class NavigatorBarToPrudactdetilesRest extends StatelessWidget {
  final String priceEnd;
  final String count;
  final void Function()? onadd;
  final void Function()? onremove;
  const NavigatorBarToPrudactdetilesRest({
    super.key,
    required this.priceEnd,
    this.onadd,
    this.onremove,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return KH_ShadowCard(
      outsideMarginvertical: 20,
      outsideMargin: 20,
      innerPaddingvertical: 10,
      innerPadding: 10,
      child: Row(
        children: [
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          Row(
            children: [
              KH_ShadowCard(
                outsideMargin: 10,
                borderRadius: 10,
                bgColor: Colors.pink,
                child: IconButton(
                  onPressed: onadd,
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Text(
                count,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              KH_ShadowCard(
                borderRadius: 10,
                outsideMargin: 10,
                bgColor: Colors.pink,
                child: IconButton(
                  onPressed: onremove,
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: KH_ShadowCard(
              outsideMargin: 5,
              borderRadius: 10,
              bgColor: Colors.pink,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    priceEnd,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  Container(
                    color: Colors.white,
                    height: 20,
                    width: 2,
                  ),

                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//

                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: onadd,
                    child: const Text(
                      "Add ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
        ],
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       ContainerPriceAndCart     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                                 @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class ContainerPriceAndCartRest extends StatelessWidget {
  final String price;
  final Function()? addtocart;
  const ContainerPriceAndCartRest(
      {super.key, required this.price, required this.addtocart});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: KH_ShadowCard(
            bgColor: const Color(0xffE3F6F4),
            innerPaddingvertical: 8,
            outsideMargin: 0,
            borderRadius: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//

                Image.asset(
                  ImageAsset.money,
                  height: 25,
                  width: 25,
                ),
                const SizedBox(width: 10),

                Text(
                  price,
                  style: const TextStyle(
                      color: Colors.teal,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        Expanded(
          child: InkWell(
            onTap: addtocart,
            child: KH_ShadowCard(
              outsideMargin: 0,
              bgColor: const Color(0xffE3F6F4),
              innerPaddingvertical: 8,
              borderRadius: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//

                  Image.asset(
                    ImageAsset.cart,
                    height: 25,
                    width: 25,
                  ),

                  const SizedBox(width: 10),

                  const Text(
                    "add to cart",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
