import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/custom_colors.dart';
import 'package:learning_flutter/styles/textbox_decoration.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);
  static String routeName = "CalculatorPage";

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  late double firstNumber;
  late double secondNumber;
  double resultNumber = 0;
  getValue() {
    firstNumber = double.tryParse(_firstController.text) ?? 0;
    secondNumber = double.tryParse(_secondController.text) ?? 0;
  }

  sumCalculator() {
    setState(() {
      getValue();
      resultNumber = firstNumber + secondNumber;
    });
  }

  minusCalculator() {
    setState(() {
      getValue();
      resultNumber = firstNumber - secondNumber;
    });
  }

  multiCalculator() {
    setState(() {
      getValue();
      resultNumber = firstNumber * secondNumber;
    });
  }

  divideCalculator() {
    setState(() {
      getValue();
      resultNumber = firstNumber / secondNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.orageColor,
      appBar: AppBar(
        title: const Text('Calculator 2 number'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 70),
          const Text(
            'Số thứ nhất',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _firstController,
              decoration: TextBoxDecoration(hintText: 'Nhập số thứ nhất'),
            ),
          ),
          const SizedBox(height: 70),
          const Text(
            'Số thứ hai',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _secondController,
              decoration: TextBoxDecoration(hintText: 'Nhập số thứ hai'),
            ),
          ),
          const SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: sumCalculator,
                child: const Text('Cộng'),
              ),
              ElevatedButton(
                onPressed: minusCalculator,
                child: const Text('Trừ'),
              ),
              ElevatedButton(
                onPressed: multiCalculator,
                child: const Text('Nhân'),
              ),
              ElevatedButton(
                onPressed: divideCalculator,
                child: const Text('Chia'),
              ),
            ],
          ),
          const SizedBox(height: 70),
          Text(
            'Kết quả: $resultNumber',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
