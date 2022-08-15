import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/image_assets.dart';
import 'package:learning_flutter/styles/thick_divider.dart';

class FlexDemoPage extends StatelessWidget {
  const FlexDemoPage({Key? key}) : super(key: key);
  static String routeName = "FlexDemoPage";

  @override
  Widget build(BuildContext context) {
    String title = 'Flex Demo - CodeFresher';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FlexBanner(
                title: 'Lập trình Flutter',
                subTitle: 'Thực chiến dự án app mobile 2022',
                image: Image.asset(ImageAssets.flutterBanner),
              ),
              const ThickDivider(),
              FlexBanner(
                title: 'Lập trình Android',
                subTitle: 'Java + Kotlin',
                image: Image.asset(ImageAssets.androidBanner),
                rightImage: true,
              ),
              const ThickDivider(),
              FlexBanner(
                title: 'Lập trình Java cơ bản',
                subTitle: 'Cho người mới bắt đầu',
                image: Image.asset(ImageAssets.javaBanner),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FlexBanner extends StatelessWidget {
  const FlexBanner({
    Key? key,
    required this.title,
    this.titleSize = 32,
    required this.subTitle,
    this.subTitleSize = 24,
    required this.image,
    this.rightImage = false,
    this.flex = 1,
  }) : super(key: key);

  final String title;
  final double titleSize;
  final String subTitle;
  final double subTitleSize;
  final Image image;
  final bool rightImage;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (!rightImage)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: image,
            ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: titleSize,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: subTitleSize,
                  ),
                ),
              ],
            ),
          ),
          if (rightImage)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: image,
            ),
        ],
      ),
    );
  }
}
