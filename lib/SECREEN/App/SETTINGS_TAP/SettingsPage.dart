import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/MODELS/CLASESS/KH_BottomSheet.dart';
import 'package:untitled3/MODELS/CLASESS/KH_Helper.dart';
import 'package:untitled3/MODELS/CLASESS/KH_Languages.dart';
import 'package:untitled3/MODELS/CLASESS/KH_Themes.dart';
import 'package:untitled3/SECREEN/AUTH/LoginPage.dart';
import 'package:untitled3/SECREEN/App/HOME_TAP/TapBarController.dart';
import 'package:untitled3/SECREEN/App/SETTINGS_TAP/SettingsAboutTheAppPage.dart';

import 'package:untitled3/SECREEN/App/SETTINGS_TAP/SettingsCountactUsPage.dart';
import 'package:untitled3/SECREEN/App/SETTINGS_TAP/SettingsLocationPage.dart';
import 'package:untitled3/SECREEN/App/SETTINGS_TAP/SettingsOpenYourStorePage.dart';
import 'package:untitled3/SECREEN/App/SETTINGS_TAP/SettingsProfilePage.dart';
import 'package:untitled3/VIEW/KH_Componants.dart';
import 'package:untitled3/generated/l10n.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Settings          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class Settings extends StatelessWidget {
  const Settings({super.key});

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          Settings          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Settings",
            style: TextStyle(fontSize: 18, color: Colors.pink),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    ImageAsset.kolmall,
                    height: 200,
                  ),
                ),
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "Profile",
                image: ImageAsset.profile,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsProfilePage()));
                },
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "Location",
                image: ImageAsset.location,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsLocationPage()));
                },
              ),
              const BottomSheetLang(),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              const BottomSheetThemes(),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "Countact Us",
                image: ImageAsset.phone,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsCountactPage()));
                },
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "About The App",
                image: ImageAsset.info,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsAboutTheAppPage()));
                },
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "Upate notification token",
                image: ImageAsset.bell,
                onTap: () {},
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "Open your free store with us ",
                image: ImageAsset.store,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsOpenYourStorePage()));
                },
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@//

              SectionsOfTheSettingspage(
                text: "Log In",
                image: ImageAsset.login,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@         LANGUAGES          @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   void showLanguagesBottomSheat({required BuildContext context}) {
//     final _ss = S.of(context);
//     final _them = Theme.of(context);
//     final _isNormalIcons = KH_AppSettings.getIsUsingNormalIconsStatus;
//     final _languageProvider =
//         Provider.of<LanguageProvider>(context, listen: false);

//     KH_BottomSheet.show_KH_BottomSheet(
//       context: context,
//       //@@@@@@@@@@//@@@@@@@@@@//
//       child: WhiteBottomSheetCard(
//         bgColor: Theme.of(context).cardColor,
//         topCornerRadius: 41,
//         child: Padding(
//           padding: KH_Helper.getResponsivePadding(context: context),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               //@@@@@@@@@@//
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: TopLineOfBottomSheet(),
//               ),
//               //@@@@@@@@@@//
//               SizedBox(
//                 height: 6,
//               ),
//               //@@@@@@@@@@//
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Text(
//                   _ss.LanguageListTitle,
//                   style: _them.textTheme.titleSmall?.copyWith(
//                     fontSize: 18,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               //@@@@@@@@@@//
//               SizedBox(
//                 height: 1,
//               ),
//               //@@@@@@@@@@//
//               Material(
//                 child: FadeIn(
//                   child: Container(
//                     padding: const EdgeInsets.all(16),
//                     color: Colors.transparent,
//                     // height: 200,
//                     width: double.infinity,
//                     child: Theme(
//                       data: ThemeData(
//                         splashColor: _them.primaryColor.withOpacity(0.2),
//                         highlightColor: Colors.transparent,
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           //@@@@@@@@@@//@@@@@@@@@@//
//                           //@@@@@@@@@@//@@@@@@@@@@//
//                           //@@@@@@@@@@//@@@@@@@@@@//
//                           ListTile(
//                             title: Text(
//                               "اللغة العربية",
//                               style: _them.textTheme.bodyMedium?.copyWith(
//                                 color: _them.hintColor,
//                               ),
//                             ),
//                             leading: _isNormalIcons // K_IS_USING_NORMAL_ICONES
//                                 ?
//                                 // Icon(
//                                 //     Icons.translate,
//                                 //     color: _them.primaryColor,
//                                 //   )
//                                 SizedBox(
//                                     height: 30,
//                                     width: 30,
//                                     child: Image(
//                                       image: AssetImage(
//                                           "assets/icons/notColored/translate_ar.png"),
//                                       height: 30,
//                                       width: 30,
//                                       color: _them.primaryColor,
//                                     ),
//                                   )
//                                 : Image(
//                                     image: AssetImage(
//                                         "assets/icons/colored/icons8-united-arab-emirates-100.png"),
//                                     height: 30,
//                                     width: 30,
//                                   ),
//                             onTap: () {
//                               _languageProvider.setSellectedLocale(
//                                   newLocaleCode: "ar");
//                               //@@@@@//
//                               final themesProvider =
//                                   Provider.of<ThemesProvider>(
//                                 context,
//                                 listen: false,
//                               );
//                               themesProvider.reSetFonts();
//                               //@@@@@//
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                           Divider(),
//                           //@@@@@@@@@@//@@@@@@@@@@//
//                           //@@@@@@@@@@//@@@@@@@@@@//
//                           //@@@@@@@@@@//@@@@@@@@@@//
//                           ListTile(
//                             title: Text(
//                               "TÜRKÇE",
//                               style: _them.textTheme.bodyMedium?.copyWith(
//                                 color: _them.hintColor,
//                               ),
//                             ),
//                             leading: _isNormalIcons // K_IS_USING_NORMAL_ICONES
//                                 ?
//                                 // Icon(
//                                 //     Icons.translate,
//                                 //     color: _them.primaryColor,
//                                 //   )
//                                 SizedBox(
//                                     height: 30,
//                                     width: 30,
//                                     child: Image(
//                                       image: AssetImage(
//                                         "assets/icons/notColored/translate_ar.png",
//                                       ),
//                                       height: 30,
//                                       width: 30,
//                                       color: _them.primaryColor,
//                                     ),
//                                   )
//                                 : Image(
//                                     image: AssetImage(
//                                       "assets/icons/colored/icons8-turkey-96.png",
//                                     ),
//                                     height: 30,
//                                     width: 30,
//                                   ),
//                             onTap: () {
//                               _languageProvider.setSellectedLocale(
//                                 newLocaleCode: "tr",
//                               );
//                               //@@@@@//
//                               final themesProvider =
//                                   Provider.of<ThemesProvider>(
//                                 context,
//                                 listen: false,
//                               );
//                               themesProvider.reSetFonts();
//                               //@@@@@//
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                           Divider(),

//                           //@@@@@@@@@@//@@@@@@@@@@//
//                           //@@@@@@@@@@//@@@@@@@@@@//
//                           //@@@@@@@@@@//@@@@@@@@@@//
//                           ListTile(
//                             title: Text(
//                               "ENGLISH",
//                               style: _them.textTheme.bodyMedium?.copyWith(
//                                 color: _them.hintColor,
//                               ),
//                             ),
//                             leading: _isNormalIcons // K_IS_USING_NORMAL_ICONES
//                                 ?
//                                 // Icon(
//                                 //     Icons.translate_outlined,
//                                 //     // CupertinoIcons.book,
//                                 //     color: _them.primaryColor,
//                                 //   )
//                                 SizedBox(
//                                     height: 30,
//                                     width: 30,
//                                     child: Image(
//                                       image: AssetImage(
//                                           "assets/icons/notColored/translate.png"),
//                                       height: 30,
//                                       width: 30,
//                                       color: _them.primaryColor,
//                                     ),
//                                   )
//                                 : Image(
//                                     image: AssetImage(
//                                         "assets/icons/colored/icons8-usa-100.png"),
//                                     height: 33,
//                                     width: 33,
//                                   ),
//                             onTap: () {
//                               _languageProvider.setSellectedLocale(
//                                   newLocaleCode: "en");
//                               //@@@@@//
//                               final themesProvider =
//                                   Provider.of<ThemesProvider>(
//                                 context,
//                                 listen: false,
//                               );
//                               themesProvider.reSetFonts();
//                               //@@@@@//
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                           Divider(),
//                           //@@@@@@@@@@//@@@@@@@@@@//
//                           //@@@@@@@@@@//@@@@@@@@@@//
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               //@@@@@@@@@@//
//               SizedBox(
//                 height: 55,
//               ),
//               //@@@@@@@@@@//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@     BottomSheetLang         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class BottomSheetLang extends StatefulWidget {
  const BottomSheetLang({super.key});

  @override
  State<BottomSheetLang> createState() => _StateBottomSheetLang();
}

class _StateBottomSheetLang extends State<BottomSheetLang> {
  @override
  Widget build(BuildContext context) {
    // final _languageProvider =
    //     Provider.of<LanguageProvider>(context, listen: true);
    return Column(
      children: [
        MaterialButton(
          padding: const EdgeInsets.all(18),
          onPressed: () {
            showLanguagesBottomSheat(context: context);

            // KH_BottomSheet.show_KH_BottomSheet(
            //   context: context,
            //   //@@@@@@@@//@@@@@@@@@//
            //   //@@@@@@@@//@@@@@@@@@//
            //   child: SectionsLangSettings(
            //     changetoArabic: () {
            //       _languageProvider.setSellectedLocale(newLocaleCode: "ar");
            //       // Navigator.pop(context);
            //       Navigator.of(context).push(MaterialPageRoute(
            //           builder: (context) => TabBarController()));
            //     },
            //     changetoEnglish: () {
            //       _languageProvider.setSellectedLocale(newLocaleCode: "en");
            //       // Navigator.pop(context);

            //       Navigator.of(context).push(MaterialPageRoute(
            //           builder: (context) => TabBarController()));
            //     },
            //     changetoturka: () {
            //       _languageProvider.setSellectedLocale(newLocaleCode: "tr");
            //       // Navigator.pop(context);

            //       Navigator.of(context).push(MaterialPageRoute(
            //           builder: (context) => TabBarController()));
            //     },
            //   ),
            // );
          },
          child: Row(children: [
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            Image.asset(
              ImageAsset.lang,
              height: 30,
              width: 30,
            ),
            const SizedBox(width: 20),
            const Text(
              "Choose language",
              style: TextStyle(fontSize: 16),
            ),
          ]),
        ),
        Divider(
          height: 2,
          color: Colors.grey[400],
        ),
      ],
    );
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         LANGUAGES          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  void showLanguagesBottomSheat({required BuildContext context}) {
    final _them = Theme.of(context);
    final _isNormalIcons = false;
    final _languageProvider =
        Provider.of<LanguageProvider>(context, listen: false);
    // final _homeProvider = Provider.of<HomePageProvider>(context, listen: false);

    KH_BottomSheet.show_KH_BottomSheet(
      context: context,
      //@@@@@@@@@@//@@@@@@@@@@//
      child: Padding(
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        padding: KH_Helper.getResponsivePadding(context: context),
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        child: KH_ResponsiveCard_2(
          desktopPadding: 222,
          child: WhiteBottomSheetCard(
            // height: MediaQuery.of(context).size.height * 0.8,
            bgColor: Theme.of(context).cardColor,
            topCornerRadius: 41,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //@@@@@@@@@@//
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TopLineOfBottomSheet(),
                ),
                //@@@@@@@@@@//
                SizedBox(
                  height: 6,
                ),
                //@@@@@@@@@@//
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "_ss.LanguageListTitle",
                    style: _them.textTheme.titleSmall?.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                //@@@@@@@@@@//
                SizedBox(
                  height: 1,
                ),
                //@@@@@@@@@@//
                Material(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.transparent,
                    // height: 200,
                    width: double.infinity,
                    child: Theme(
                      data: ThemeData(
                        splashColor: _them.primaryColor.withOpacity(0.2),
                        highlightColor: Colors.transparent,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //@@@@@@@@@@//@@@@@@@@@@//
                          //@@@@@@@@@@//@@@@@@@@@@//
                          ListTile(
                            title: Text(
                              "اللغة العربية",
                              style: _them.textTheme.bodyMedium?.copyWith(
                                color: _them.hintColor,
                              ),
                            ),
                            leading: _isNormalIcons // K_IS_USING_NORMAL_ICONES
                                ?
                                // Icon(
                                //     Icons.translate,
                                //     color: _them.primaryColor,
                                //   )
                                SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/icons/notColored/translate_ar.png"),
                                      height: 30,
                                      width: 30,
                                      color: _them.primaryColor,
                                    ),
                                  )
                                : Image.asset(
                                    ImageAsset.emirates,
                                    height: 30,
                                    width: 30,
                                  ),
                            onTap: () {
                              // _homeProvider.clearProvider();
                              _languageProvider.setSellectedLocale(
                                newLocaleCode: "ar",
                              );
                              //@@@@@//
                              final themesProvider =
                                  Provider.of<ThemesProvider>(
                                context,
                                listen: false,
                              );
                              themesProvider.reSetFonts();
                              //@@@@@//
                              Navigator.of(context).pop();
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                // TempAppScreen.routName,
                                TabBarController.routName,
                                (route) => false,
                              );
                            },
                          ),
                          Divider(),
                          //@@@@@@@@@@//@@@@@@@@@@//
                          //@@@@@@@@@@//@@@@@@@@@@//
                          ListTile(
                            title: Text(
                              "TÜRKÇE",
                              style: _them.textTheme.bodyMedium?.copyWith(
                                color: _them.hintColor,
                              ),
                            ),
                            leading: _isNormalIcons // K_IS_USING_NORMAL_ICONES
                                ?
                                // Icon(
                                //     Icons.translate,
                                //     color: _them.primaryColor,
                                //   )
                                SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image(
                                      image: AssetImage(
                                        "assets/icons/notColored/translate_ar.png",
                                      ),
                                      height: 30,
                                      width: 30,
                                      color: _them.primaryColor,
                                    ),
                                  )
                                : Image.asset(
                                    ImageAsset.turkia,
                                    height: 30,
                                    width: 30,
                                  ),
                            onTap: () {
                              // _homeProvider.clearProvider();
                              _languageProvider.setSellectedLocale(
                                newLocaleCode: "tr",
                              );
                              //@@@@@//
                              final themesProvider =
                                  Provider.of<ThemesProvider>(
                                context,
                                listen: false,
                              );
                              themesProvider.reSetFonts();
                              //@@@@@//
                              Navigator.of(context).pop();
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                // TempAppScreen.routName,
                                TabBarController.routName,
                                (route) => false,
                              );
                            },
                          ),
                          Divider(),

                          //@@@@@@@@@@//@@@@@@@@@@//
                          //@@@@@@@@@@//@@@@@@@@@@//
                          ListTile(
                            title: Text(
                              "ENGLISH",
                              style: _them.textTheme.bodyMedium?.copyWith(
                                color: _them.hintColor,
                              ),
                            ),
                            leading: _isNormalIcons // K_IS_USING_NORMAL_ICONES
                                ?
                                // Icon(
                                //     Icons.translate_outlined,
                                //     // CupertinoIcons.book,
                                //     color: _them.primaryColor,
                                //   )
                                SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/icons/notColored/translate.png"),
                                      height: 30,
                                      width: 30,
                                      color: _them.primaryColor,
                                    ),
                                  )
                                : Image(
                                    image: AssetImage(
                                        "assets/icons/colored/icons8-usa-100.png"),
                                    height: 33,
                                    width: 33,
                                  ),
                            onTap: () {
                              // _homeProvider.clearProvider();
                              _languageProvider.setSellectedLocale(
                                  newLocaleCode: "en");
                              //@@@@@//
                              final themesProvider =
                                  Provider.of<ThemesProvider>(
                                context,
                                listen: false,
                              );
                              themesProvider.reSetFonts();
                              //@@@@@//
                              Navigator.of(context).pop();
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                // TempAppScreen.routName,
                                TabBarController.routName,
                                (route) => false,
                              );
                            },
                          ),
                          Divider(),
                          //@@@@@@@@@@//@@@@@@@@@@//
                          //@@@@@@@@@@//@@@@@@@@@@//
                        ],
                      ),
                    ),
                  ),
                ),
                //@@@@@@@@@@//
                SizedBox(
                  height: 55,
                ),
                //@@@@@@@@@@//
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@     BottomSheetThemes       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class BottomSheetThemes extends StatefulWidget {
  const BottomSheetThemes({super.key});

  @override
  State<BottomSheetThemes> createState() => _StateBottomSheetThemes();
}

class _StateBottomSheetThemes extends State<BottomSheetThemes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
            padding: const EdgeInsets.all(18),
            onPressed: () {
              KH_BottomSheet.show_KH_BottomSheet(
                  context: context,

                  //@@@@@@@@//@@@@@@@@@//
                  //@@@@@@@@//@@@@@@@@@//

                  child: SectionsThemeSettings(
                    changetodark: () {},
                    changetoligth: () {},
                    changetosystem: () {},
                  ));
            },
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            child: Row(children: [
              Image.asset(ImageAsset.themesystem, height: 30, width: 30),
              const SizedBox(width: 20),
              const Text(
                "Choose Themes",
                style: TextStyle(fontSize: 16),
              ),
            ])),
        Divider(
          height: 2,
          color: Colors.grey[400],
        )
      ],
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     SectionsLangSettings   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class SectionsLangSettings extends StatelessWidget {
  final void Function()? changetoArabic;
  final void Function()? changetoEnglish;
  final void Function()? changetoturka;
  const SectionsLangSettings(
      {super.key,
      required this.changetoArabic,
      required this.changetoEnglish,
      required this.changetoturka});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        Container(
            margin: const EdgeInsets.only(top: 15),
            height: 5,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(5))),
        const SizedBox(height: 20),
        const Text("تغير اللغة", style: TextStyle(fontSize: 20)),
        const SizedBox(height: 20),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        DetilsBottomSheet(
            text: "اللغة العربية ",
            image: ImageAsset.emirates,
            onTap: changetoArabic),

        const Divider(height: 3, color: Colors.grey),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        DetilsBottomSheet(
            text: "Turkea", image: ImageAsset.turkia, onTap: changetoturka),

        const Divider(height: 3, color: Colors.grey),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        DetilsBottomSheet(
            text: "English", image: ImageAsset.usa, onTap: changetoEnglish),
        const Divider(height: 3, color: Colors.grey),
      ],
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     SectionsThemeSettings  @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class SectionsThemeSettings extends StatelessWidget {
  final void Function()? changetodark;
  final void Function()? changetoligth;
  final void Function()? changetosystem;
  const SectionsThemeSettings(
      {super.key, this.changetodark, this.changetoligth, this.changetosystem});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        Container(
            margin: const EdgeInsets.only(top: 15),
            height: 5,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(5))),
        const SizedBox(height: 20),
        const Text("Change Themes", style: TextStyle(fontSize: 20)),
        const SizedBox(height: 20),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        DetilsBottomSheet(
            text: "System Themes",
            image: ImageAsset.themesystem,
            onTap: changetosystem),

        const Divider(height: 3, color: Colors.grey),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        DetilsBottomSheet(
            text: "Ligth Themes",
            image: ImageAsset.themeligth,
            onTap: changetoligth),

        const Divider(height: 3, color: Colors.grey),

        //@@@@@@@@//@@@@@@@@@//
        //@@@@@@@@//@@@@@@@@@//

        DetilsBottomSheet(
            text: "Dark Themes",
            image: ImageAsset.themedark,
            onTap: changetodark),

        const Divider(
          height: 3,
          color: Colors.grey,
        ),
      ],
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     DetilsBottomSheet      @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class DetilsBottomSheet extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final String image;
  const DetilsBottomSheet(
      {super.key, this.onTap, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //@@@@@@@@//@@@@@@@@@//
      //@@@@@@@@//@@@@@@@@@//
      onTap: onTap,
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            Image.asset(image, height: 30),
            const SizedBox(width: 20),
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@  SectionsOfTheSettingspage  @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class SectionsOfTheSettingspage extends StatelessWidget {
  final String text;
  final String image;
  final Function()? onTap;
  const SectionsOfTheSettingspage(
      {super.key,
      required this.text,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          padding: const EdgeInsets.all(18),
          //@@@@@@@@//@@@@@@@@@//
          //@@@@@@@@//@@@@@@@@@//
          onPressed: onTap,
          child: Row(children: [
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            Image.asset(image, height: 30, width: 30),
            const SizedBox(width: 20),
            //@@@@@@@@//@@@@@@@@@//
            //@@@@@@@@//@@@@@@@@@//
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ]),
        ),
        Divider(
          height: 2,
          color: Colors.grey[400],
        )
      ],
    );
  }
}
