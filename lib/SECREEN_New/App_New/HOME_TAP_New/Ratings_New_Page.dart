import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';

class Ratings extends StatefulWidget {
  const Ratings({super.key});

  @override
  State<Ratings> createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    // final _KH_Colors = _theme.extension<KH_Colors>()!;

    //@@@@@@@@@@@@

    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
        title: Text(
          "Ratings",
          style: _theme.textTheme.bodyMedium?.copyWith(
            fontSize: 16,
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: KH_ShadowCard(
                    outsideMarginvertical: 20,
                    height: 120,
                    width: double.infinity,
                    borderRadius: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //@@@@@@@@//@@@@@@@@@//

                        Image.asset(
                          ImageAsset.groupPeople,
                          height: 30,
                        ),

                        //@@@@@@@@//@@@@@@@@@//

                        const Text("Ratings Number"),

                        //@@@@@@@@//@@@@@@@@@//

                        Text(
                          "19",
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//
                //@@@@@@@@//@@@@@@@@@//

                Expanded(
                  child: KH_ShadowCard(
                    outsideMarginvertical: 20,
                    height: 120,
                    borderRadius: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //@@@@@@@@//@@@@@@@@@//

                        Image.asset(
                          ImageAsset.star,
                          height: 35,
                        ),

                        //@@@@@@@@//@@@@@@@@@//

                        const Text("Total Rate"),

                        //@@@@@@@@//@@@@@@@@@//

                        Text(
                          "4.9",
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//

            KH_ShadowCard(
              outsideMargin: 20,
              innerPadding: 20,
              innerPaddingvertical: 20,
              height: 180,
              width: double.infinity,
              borderRadius: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //@@@@@@@@//@@@@@@@@@//

                  Text(
                    "Mohammad Kanj ",
                    style: _theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //@@@@@@@@//@@@@@@@@@//

                  const Icon(
                    Icons.star,
                  ),

                  //@@@@@@@@//@@@@@@@@@//

                  Text(
                    "2024/8/8",
                    style: _theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),

                  //@@@@@@@@//@@@@@@@@@//

                  const Text("good"),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
