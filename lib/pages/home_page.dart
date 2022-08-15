import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/image_assets.dart';
import 'package:learning_flutter/pages/auth/sign_up_page.dart';
import 'package:learning_flutter/pages/calculator_page.dart';
import 'package:learning_flutter/pages/flexdemo_page.dart';
import 'package:learning_flutter/pages/whatapp_page.dart';
import 'package:learning_flutter/widgets/buttons/goto_page_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = "HomePage";
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
            GoToPageButton(
              text: 'Calculator',
              routeName: CalculatorPage.routeName,
            ),
            GoToPageButton(
              text: 'SignUp Form',
              routeName: SignUpPage.routeName,
            ),
            GoToPageButton(
              text: 'WhatApp Clone',
              routeName: WhatAppPage.routeName,
            ),
            GoToPageButton(
              text: 'Flex Demo',
              routeName: FlexDemoPage.routeName,
            ),
          ],
        ),
      ),
    );
  }
}
