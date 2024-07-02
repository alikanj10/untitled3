// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/MODELS/CLASESS/KH_Themes.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       CardForDetilse       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     EcommersAndResturant   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class CardForDetilseEcommersAndResturant extends StatelessWidget {
  final String nameresturantorecommers;
  final String contentRestOrEcomm;
  final String openOrClosed;
  final String image;
  final String evaluationNumber;
  final String pricedelivry;
  final Function()? onTap;
  const CardForDetilseEcommersAndResturant({
    super.key,
    required this.nameresturantorecommers,
    required this.contentRestOrEcomm,
    required this.openOrClosed,
    required this.image,
    required this.evaluationNumber,
    required this.pricedelivry,
    required this.onTap,
  });

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       CardForDetilse       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     EcommersAndResturant   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _KH_Colors = _theme.extension<KH_Colors>()!;
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //@@@@@@@@@@@@@@@@@

                  Text(
                    nameresturantorecommers,
                    style: _theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //@@@@@@@@@@@@@@@@@

                  const SizedBox(
                    height: 5,
                  ),

                  //@@@@@@@@@@@@@@@@@

                  Text(
                    contentRestOrEcomm,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),

                  //@@@@@@@@@@@@@@@@@

                  const SizedBox(
                    height: 6,
                  ),

                  //@@@@@@@@@@@@@@@@@

                  Divider(
                    height: 5,
                    color: Colors.grey[400],
                  ),

                  //@@@@@@@@@@@@@@@@@

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
                          bgColor: Colors.orange[50],
                          outsideMargin: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //@@@@@@@@@@@@@@@@@

                              Image.asset(
                                ImageAsset.star,
                                height: 25,
                              ),
                              const SizedBox(
                                width: 2,
                              ),

                              //@@@@@@@@@@@@@@@@@

                              Text(
                                evaluationNumber,
                                style: _theme.textTheme.bodyMedium?.copyWith(
                                  color: Colors.orange,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      //@@@@@@@@//@@@@@@@@@//
                      //@@@@@@@@//@@@@@@@@@//
                      //@@@@@@@@//@@@@@@@@@//
                      Expanded(
                        child: KH_SplashedCard(
                          borderRadius: 8,
                          bgColor: _KH_Colors.RedColor.withOpacity(0.1),
                          outsideMargin: 5,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //@@@@@@@@@@@@@@@@@

                              Image.asset(
                                ImageAsset.delivery,
                                height: 25,
                              ),
                              const SizedBox(
                                width: 2,
                              ),

                              //@@@@@@@@@@@@@@@@@

                              Text(
                                pricedelivry,
                                style: _theme.textTheme.bodyMedium?.copyWith(
                                  color: _KH_Colors.RedColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      //@@@@@@@@//@@@@@@@@@//
                      //@@@@@@@@//@@@@@@@@@//
                      //@@@@@@@@//@@@@@@@@@//
                      Expanded(
                        child: KH_SplashedCard(
                          borderRadius: 8,
                          bgColor: _KH_Colors.GreenColor.withOpacity(0.1),
                          outsideMargin: 5,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //@@@@@@@@@@@@@@@@@

                              Image.asset(
                                ImageAsset.checkbox,
                                height: 25,
                              ),
                              const SizedBox(
                                width: 2,
                              ),

                              //@@@@@@@@@@@@@@@@@

                              Text(
                                openOrClosed,
                                style: _theme.textTheme.bodyMedium?.copyWith(
                                  color: _KH_Colors.GreenColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
