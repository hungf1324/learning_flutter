import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/image_assets.dart';
import 'package:learning_flutter/pages/auth/sign_up_page.dart';
import 'package:learning_flutter/pages/calculator_page.dart';
import 'package:learning_flutter/widgets/buttons/goto_page_button.dart';

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
            const GoToPageButton(
              text: 'Calculator',
              page: CalculatorPage(),
            ),
            const GoToPageButton(
              text: 'SignUp Form',
              page: SignUpPage(),
            )
          ],
        ),
      ),
    );
  }
}
