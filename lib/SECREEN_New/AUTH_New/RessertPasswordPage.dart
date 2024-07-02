import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
// import 'package:untitled3/MODELS/CLASESS/KH_Themes.dart';
import 'package:untitled3/SECREEN_New/AUTH_New/LoginPage.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';
// import 'package:untitled3/generated/l10n.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       ResertPasword        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class ResertPasword extends StatefulWidget {
  const ResertPasword({super.key});

  @override
  State<ResertPasword> createState() => _StateResertPasword();
}

class _StateResertPasword extends State<ResertPasword> {
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       ResertPasword        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  @override
  Widget build(BuildContext context) {
    // final _ss = S.of(context);
    // final _theme = Theme.of(context);
    // final _KH_Colors = _theme.extension<KH_Colors>()!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),

              //@@@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@@@

              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.pink,
                    )),
              ),

              //@@@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@@@

              Image.asset(ImageAsset.bell),

              //@@@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@@@
              KH_App_Title(
                text: "Reset Password",
                textAlign: TextAlign.center,
                fontSize: 25,
              ),
              KH_App_Title(
                text: "Please enter the new password",
                textAlign: TextAlign.center,
                titleColor: Colors.grey,
              ),

              //@@@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@@@

              KH_TextField(
                borderRadius: 30,
                placeHolder: "Enter your Password ",
              ),
              KH_TextField(
                borderRadius: 30,
                placeHolder: "Re Enter your Password ",
              ),

              //@@@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@@@

              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20)),
                child: KH_Bordered_Bottun(
                  title: "Confirm",
                  height: 25,
                  width: double.infinity,
                  borderColor: Colors.pink,
                  textColor: Colors.white,
                  backGroundColor: Colors.pink,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
                  },
                ),
              ),

              //@@@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@@@
            ],
          ),
        ),
      ),
    );
  }
}
