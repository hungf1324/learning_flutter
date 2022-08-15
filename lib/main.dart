import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/auth/sign_up_page.dart';
import 'package:learning_flutter/pages/calculator_page.dart';
import 'package:learning_flutter/pages/flexdemo_page.dart';
import 'package:learning_flutter/pages/home_page.dart';
import 'package:learning_flutter/pages/whatsapp_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: routesList,
    ),
  );
}

Map<String, WidgetBuilder> get routesList => {
      HomePage.routeName: (context) => const HomePage(),
      CalculatorPage.routeName: (context) => const CalculatorPage(),
      SignUpPage.routeName: (context) => const SignUpPage(),
      WhatsAppPage.routeName: (context) => const WhatsAppPage(),
      FlexDemoPage.routeName: (context) => const FlexDemoPage(),
    };
