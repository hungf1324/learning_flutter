import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/colors.dart';

class GoToPageButton extends StatelessWidget {
  const GoToPageButton({
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
