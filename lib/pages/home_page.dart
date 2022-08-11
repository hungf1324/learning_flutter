import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/colors.dart';
import 'package:learning_flutter/constants/image_assets.dart';
import 'package:learning_flutter/pages/auth/sign_up_page.dart';
import 'package:learning_flutter/pages/calculator_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset(ImageAssets.catImg),
            ),
            const ChangePageButton(
              text: 'Calculator',
              page: CalculatorPage(),
            ),
            const ChangePageButton(
              text: 'SignUp Form',
              page: SignUpPage(),
            )
          ],
        ),
      ),
    );
  }
}

class ChangePageButton extends StatelessWidget {
  const ChangePageButton({
    Key? key,
    required this.text,
    required this.page,
  }) : super(key: key);
  final String text;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: CustomColors.orageColor,
          padding: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
