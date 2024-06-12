import 'package:flutter/material.dart';
import 'package:untitled3/IMAGEASSETS.dart';
import 'package:untitled3/SECREEN/AUTH/RESERTPASSWORD.dart';
import 'package:untitled3/VIEW/KH_Componants.dart';

class VerifiyCode extends StatefulWidget {
  const VerifiyCode({super.key});

  @override
  State<VerifiyCode> createState() => _StateVerifiyCode();
}

class _StateVerifiyCode extends State<VerifiyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),

            //@@@@@@@@@@@@@@@@@@@@
            //@@@@@@@@@@@@@@@@@@@@
            //@@@@@@@@@@@@@@@@@@@@

            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
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
              text: "Phone verification",
              fontSize: 25,
              textAlign: TextAlign.center,
            ),
            KH_App_Title(
              text:
                  "We sent a verification code to phone number     please enter the code to continue ",
              titleColor: Colors.grey,
              fontSize: 16,
              textAlign: TextAlign.center,
            ),

            //@@@@@@@@@@@@@@@@@@@@
            //@@@@@@@@@@@@@@@@@@@@
            //@@@@@@@@@@@@@@@@@@@@

            KH_TextField(
              borderRadius: 30,
              placeHolder: "******",
            ),

            //@@@@@@@@@@@@@@@@@@@@
            //@@@@@@@@@@@@@@@@@@@@
            //@@@@@@@@@@@@@@@@@@@@

            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(20)),
              child: KH_Bordered_Bottun(
                title: "Verifiy",
                height: 25,
                width: double.infinity,
                borderColor: Colors.pink,
                textColor: Colors.white,
                backGroundColor: Colors.pink,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ResertPasword(),
                  ));
                },
              ),
            ),

            //@@@@@@@@@@@@@@@@@
            //@@@@@@@@@@@@@@@@@
            //@@@@@@@@@@@@@@@@@

            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(20)),
              child: KH_Bordered_Bottun(
                title: "100 ",
                height: 25,
                width: 200,
                borderColor: Colors.pink[50],
                textColor: Colors.pink,
                backGroundColor: Colors.pink,
                onPressed: () {},
              ),
            ),
          ],
        ),
      )),
    );
  }
}
