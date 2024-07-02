import 'package:flutter/material.dart';
import 'package:untitled3/ImageAseets.dart';
import 'package:untitled3/SECREEN_New/AUTH_New/VerifiyCodePage.dart';
import 'package:untitled3/SECREEN_New/App_New/HOME_TAP_New/TapBarController.dart';
import 'package:untitled3/VIEW_New/KH_Componants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    ImageAsset.kolmall,
                    height: 150,
                  ),
                ),
              ),

              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@

              KH_App_Title(
                text: "WELCOME",
                textAlign: TextAlign.center,
                virticalPadding: 00,
                fontSize: 25,
              ),
              KH_App_Title(
                text:
                    "To Log In , please choose country code first , then enter your phone number and password",
                textAlign: TextAlign.center,
                virticalPadding: 0,
                fontSize: 18,
                titleColor: Colors.grey,
              ),

              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@

              const SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: KH_FormTextField(
                        borderRadius: 30,
                        padding: const EdgeInsets.all(10),
                        placeHolder: "Code country",
                      )),
                  Expanded(
                    flex: 2,
                    child: KH_FormTextField(
                      borderRadius: 30,
                      padding: const EdgeInsets.all(10),
                      placeHolder: "Enter your mobile number",
                    ),
                  ),
                ],
              ),

              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@

              Container(
                height: 170,
                child: Column(
                  children: [
                    Expanded(
                      child: KH_FormTextField(
                        leadingInnerPrefixIconOrWidget: const Icon(Icons.lock),
                        trailingInnerPrefixIconOrWidget: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye_outlined)),
                        placeHolder: "Enter your password",
                        borderRadius: 30,
                        padding: const EdgeInsets.all(10),
                      ),
                    ),
                    Expanded(
                      child: KH_FormTextField(
                        onValidating: (val) {},
                        leadingInnerPrefixIconOrWidget:
                            const Icon(Icons.person),
                        placeHolder: "Enter your name",
                        borderRadius: 30,
                        padding: const EdgeInsets.all(10),
                      ),
                    ),
                  ],
                ),
              ),

              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@

              KH_App_Title(
                titleColor: Colors.pink,
                fontSize: 17,
                text:
                    "By reglistering with as , you automatically agree to the terms and condition of our app",
                textAlign: TextAlign.center,
              ),

              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@

              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20)),
                child: KH_Bordered_Bottun(
                  title: "Log In",
                  height: 25,
                  width: double.infinity,
                  borderColor: Colors.pink,
                  textColor: Colors.white,
                  backGroundColor: Colors.pink,
                  onPressed: () {},
                ),
              ),

              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@

              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (contxet) => VerifiyCode()));
                },
                child: KH_App_Title(
                  titleColor: Colors.grey,
                  text: "Did you forgetyour password ? ",
                  textAlign: TextAlign.center,
                  fontSize: 16,
                ),
              ),

              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@

              KH_Filled_Bottun(
                title: "Continue as guest ",
                width: 250,
                borderColor: Colors.pink[50],
                bgColor: Colors.pink[50],
                textColor: Colors.pink,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TabBarController(),
                    ),
                  );
                },
              ),

              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@
              //@@@@@@@@@@@@@@@@@@
            ],
          ),
        ),
      ),
    );
  }
}
