import 'package:flutter/material.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Order             @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Order             @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),

      //@@@@@@@@@@@@@@@@@//

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Orders",
          style: _theme.textTheme.bodyMedium?.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.refresh,
              color: Colors.pink,
              size: 25,
            ),
          ),
        ],
      ),

      //@@@@@@@@@@@@@@@@@//

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              KH_ShadowCard(
                width: double.infinity,
                outsideMarginvertical: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        //@@@@@@@@@@@@@@@@@//

                        Expanded(
                          child: KH_ShadowCard(
                            height: 35,
                            outsideMarginvertical: 8,
                            bgColor: Colors.pink[50],
                            borderRadius: 8,
                            innerPadding: 8,
                            outsideMargin: 8,
                            innerPaddingvertical: 8,
                            child: Text(
                              "Name Ecommerce",
                              textAlign: TextAlign.center,
                              style: _theme.textTheme.bodyMedium?.copyWith(
                                color: Colors.pink,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        //@@@@@@@@@@@@@@@@@//

                        Container(
                          color: Colors.grey[400],
                          height: 30,
                          width: 2,
                        ),

                        //@@@@@@@@@@@@@@@@@//

                        Expanded(
                          child: Text(
                            "Ecommerce",
                            textAlign: TextAlign.center,
                            style: _theme.textTheme.bodyMedium?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),

                    //@@@@@@@@@@@@@@@@@//

                    Divider(
                      color: Colors.grey[400],
                      height: 2,
                    ),

                    //@@@@@@@@@@@@@@@@@//
                    //@@@@@@@@@@@@@@@@@//
                    //@@@@@@@@@@@@@@@@@//

                    Row(
                      children: [
                        //@@@@@@@@@@@@@@@@@//

                        Expanded(
                          child: KH_ShadowCard(
                            height: 35,
                            outsideMarginvertical: 8,
                            bgColor: Colors.pink[50],
                            borderRadius: 8,
                            innerPadding: 8,
                            outsideMargin: 8,
                            innerPaddingvertical: 8,
                            child: Text(
                              "Price",
                              textAlign: TextAlign.center,
                              style: _theme.textTheme.bodyMedium?.copyWith(
                                color: Colors.pink,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        //@@@@@@@@@@@@@@@@@//

                        Container(
                          color: Colors.grey[400],
                          height: 30,
                          width: 2,
                        ),

                        //@@@@@@@@@@@@@@@@@//

                        Expanded(
                          child: Text(
                            "200",
                            textAlign: TextAlign.center,
                            style: _theme.textTheme.bodyMedium?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),

                    //@@@@@@@@@@@@@@@@@//

                    Divider(
                      color: Colors.grey[400],
                      height: 2,
                    ),

                    //@@@@@@@@@@@@@@@@@//
                    //@@@@@@@@@@@@@@@@@//
                    //@@@@@@@@@@@@@@@@@//

                    Row(
                      children: [
                        //@@@@@@@@@@@@@@@@@//

                        Expanded(
                          child: KH_ShadowCard(
                            height: 35,
                            outsideMarginvertical: 8,
                            bgColor: Colors.pink[50],
                            borderRadius: 8,
                            innerPadding: 8,
                            outsideMargin: 8,
                            innerPaddingvertical: 8,
                            child: Text(
                              "Status Order",
                              textAlign: TextAlign.center,
                              style: _theme.textTheme.bodyMedium?.copyWith(
                                color: Colors.pink,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        //@@@@@@@@@@@@@@@@@//

                        Container(
                          color: Colors.grey[400],
                          height: 30,
                          width: 2,
                        ),

                        //@@@@@@@@@@@@@@@@@//

                        Expanded(
                          child: KH_ShadowCard(
                            borderRadius: 8,
                            height: 30,
                            innerPaddingvertical: 3,
                            bgColor: Colors.pink[50],
                            child: Text(
                              "Status Order",
                              textAlign: TextAlign.center,
                              style: _theme.textTheme.bodyMedium?.copyWith(
                                color: Colors.pink,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                    //@@@@@@@@@@@@@@@@@//
                    //@@@@@@@@@@@@@@@@@//
                    //@@@@@@@@@@@@@@@@@//
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
