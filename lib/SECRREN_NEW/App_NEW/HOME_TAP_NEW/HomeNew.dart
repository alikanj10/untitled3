import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/MODELS/CLASESS/KH_Languages.dart';
import 'package:untitled3/MODELS/CLASESS/KH_Themes.dart';
import 'package:untitled3/VIEW/KH_Componants.dart';
import 'package:untitled3/generated/l10n.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          HomeNew           @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class HomeNew extends StatefulWidget {
  const HomeNew({super.key});

  @override
  State<HomeNew> createState() => _HomeNewState();
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          HomeNew           @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class _HomeNewState extends State<HomeNew> {
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
    final _languageProvider =
        Provider.of<LanguageProvider>(context, listen: false);
    final _ss = S.of(context);
    final _theme = Theme.of(context);
    final _KH_Colors = _theme.extension<KH_Colors>()!;
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      body: isloading == false
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.pink,
              ),
            )
          : SafeArea(
              minimum: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@// AppBarHomeNew
                    //@@@@@@@@//@@@@@@@@@//

                    AppBarHomeNew(
                      onPressdbell: () {},
                      onPressdlocation: () {},
                      onPressdref: () {},
                    ),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@// HomeNewAdvetismentsSliderCourser
                    //@@@@@@@@//@@@@@@@@@//

                    HomeNewAdvetismentsSliderCourser(),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@// KH_App_Title
                    //@@@@@@@@//@@@@@@@@@//

                    KH_App_Title(
                      text: _ss.HungryWannaShope,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      virticalPadding: 8,
                    ),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@// EcommrceAndResHomeNew
                    //@@@@@@@@//@@@@@@@@@//

                    const EcommrceAndResHomeNew(),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@// KH_App_Title
                    //@@@@@@@@//@@@@@@@@@//

                    KH_App_Title(
                      text: _ss.ToplistHeader,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@// AdvetismentSliderNew
                    //@@@@@@@@//@@@@@@@@@//

                    const AdvetismentSliderNew(),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@// KH_App_Title
                    //@@@@@@@@//@@@@@@@@@//

                    KH_App_Title(
                      text: "Latest we received header",
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),

                    //@@@@@@@@//@@@@@@@@@//
                    //@@@@@@@@//@@@@@@@@@// AdvetismentSliderNew2
                    //@@@@@@@@//@@@@@@@@@//

                    AdvetismentSliderNew2()
                  ],
                ),
              )),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      AppBarHomeNew         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      AppBarHomeNew         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class AppBarHomeNew extends StatelessWidget {
  final void Function()? onPressdref;
  final void Function()? onPressdbell;
  final void Function()? onPressdlocation;
  const AppBarHomeNew(
      {super.key, this.onPressdref, this.onPressdbell, this.onPressdlocation});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        Expanded(
          flex: 1,
          child: KH_ShadowCard(
            innerPaddingvertical: 5,
            outsideMarginvertical: 15,
            outsideMargin: 4,
            child: MaterialButton(
              onPressed: onPressdbell,
              child: Image.asset(
                ImageAsset.bell,
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
          ),
        ),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        Expanded(
          flex: 4,
          child: KH_ShadowCard(
            innerPaddingvertical: 5,
            outsideMargin: 13,
            child: MaterialButton(
              onPressed: onPressdlocation,
              child: KH_App_Title(
                text: "Reyhania",
                textAlign: TextAlign.center,
                titleColor: Colors.pink,
                virticalPadding: 0,
                fontSize: 18,
              ),
            ),
          ),
        ),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        Expanded(
          flex: 1,
          child: KH_ShadowCard(
            outsideMargin: 4,
            innerPaddingvertical: 5,
            child: MaterialButton(
              onPressed: onPressdref,
              child: Image.asset(
                ImageAsset.ref,
                height: 35,
                width: 35,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     AdvetismentsSlider     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     AdvetismentsSlider     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class HomeNewAdvetismentsSliderCourser extends StatefulWidget {
  // final List<AdvertisementsObject> addvertismentsArray;
  // final bool isPageSnapping;
  // final StoreObject? theStore;
  // final ProductObject? theProduct;
  // HomePageAdvetismentsSliderCourser({
  //   // required this.addvertismentsArray,
  //   // required this.isPageSnapping,
  //   // required this.theStore,
  //   // required this.theProduct,
  // });
  @override
  _HomeNewAdvetismentsSliderCourserState createState() =>
      _HomeNewAdvetismentsSliderCourserState();
}

class _HomeNewAdvetismentsSliderCourserState
    extends State<HomeNewAdvetismentsSliderCourser> {
  //@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@//
  List<Container> indicators = [];
  int currentPage = 0;
  //@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@//
  @override
  Widget build(BuildContext context) {
    // final _theme = Theme.of(context);
    // final _KH_Colors = _theme.extension<KH_Colors>()!;
    //@@@@@@@@@@@@@@@@@@@@@//
    //@@@@@@@@@@@@@@@@@@@@@//
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      height: 215,
      width: double.infinity,
      // color: Colors.black87,
      //@@@@@@@@@@@@@@@@@@@@@//
      //@@@@@@@@@@@@@@@@@@@@@//
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //@@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@@//
          Container(
            // color: Colors.cyanAccent,
            constraints: const BoxConstraints(
              maxHeight: 180,
              maxWidth: double.infinity,
            ),
            // color: Colors.black12,
            //@@@@@@@@@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@@@@@@@@@//
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: 180,
                aspectRatio: 16 / 9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                viewportFraction: 1,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.4,
                onPageChanged: (index, reson) {
                  setState(() {
                    currentPage = index;
                  });
                },
                scrollDirection: Axis.horizontal,
              ),
              itemCount: 2,
              itemBuilder: (
                BuildContext context,
                int index,
                int realIndex,
              ) {
                // final item = widget.addvertismentsArray[index];
                return const KH_ShadowCard(
                  width: double.infinity,
                  child: Center(
                    child: Text("hellow"),
                  ),
                );
              },
            ),
          ),

          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: currentPage,
              count: 2,
              effect: const WormEffect(
                dotHeight: 7,
                spacing: 12,
                dotWidth: 7,
                dotColor: Colors.grey,
                activeDotColor: Colors.pink,
              ),
            ),
          ),

          // updateIndicators(context: context),
        ],
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     EcommrceAndResHome     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     EcommrceAndResHome     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class EcommrceAndResHomeNew extends StatefulWidget {
  const EcommrceAndResHomeNew({super.key});

  @override
  State<EcommrceAndResHomeNew> createState() => _StateEcommrceAndResHomeNew();
}

class _StateEcommrceAndResHomeNew extends State<EcommrceAndResHomeNew> {
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
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {},
              child: KH_ShadowCard(
                height: 130,
                outsideMargin: 0,
                child: isloading == false
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: Colors.pink,
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          fit: BoxFit.cover,
                          ImageAsset.ecommerce,
                        ),
                      ),
              ),
            ),
          ),

          //==========================================
          const SizedBox(width: 20),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: KH_ShadowCard(
                height: 130,
                outsideMargin: 0,
                child: isloading == false
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: Colors.pink,
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          ImageAsset.matam,
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      AdvetismentSlider     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      AdvetismentSlider     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class AdvetismentSliderNew extends StatelessWidget {
  const AdvetismentSliderNew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List imagename = [ImageAsset.eat, ImageAsset.ecommerce];
    Map<dynamic, dynamic> name = {0: "AVON", 1: "PEITZA"};
    return Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagename.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Image.asset(ImageAsset.imageeat,
                        width: 300, fit: BoxFit.cover),
                    Column(
                      children: [
                        KH_ShadowCard(
                          outsideMarginvertical: 5,
                          outsideMargin: 5,
                          height: 60,
                          width: 60,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(ImageAsset.logorest)),
                        ),
                      ],
                    ),
                    KH_ShadowCard(
                        outsideMargin: 0,
                        width: 300,
                        bgColor: Colors.grey.withOpacity(0.8),
                        child: KH_App_Title(
                          virticalPadding: 6,
                          text: "${name[index]}",
                          titleColor: Colors.white,
                        )),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     AdvetismentSlider2     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     AdvetismentSlider2     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class AdvetismentSliderNew2 extends StatelessWidget {
  const AdvetismentSliderNew2({super.key});

  @override
  Widget build(BuildContext context) {
    List imagename = [ImageAsset.eat, ImageAsset.ecommerce];
    Map<dynamic, dynamic> name = {0: "AVON", 1: "PEITZA"};
    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagename.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Image.asset(ImageAsset.imageeat,
                        height: 350, width: 240, fit: BoxFit.cover),
                    Column(
                      children: [
                        KH_ShadowCard(
                          outsideMarginvertical: 5,
                          outsideMargin: 5,
                          height: 60,
                          width: 60,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(ImageAsset.logorest)),
                        ),
                      ],
                    ),
                    KH_ShadowCard(
                        outsideMargin: 0,
                        width: 240,
                        bgColor: Colors.grey.withOpacity(0.8),
                        child: KH_App_Title(
                          virticalPadding: 6,
                          text: "${name[index]}",
                          titleColor: Colors.white,
                        )),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
