import 'package:dibofome/constants/colors.dart';
import 'package:dibofome/widgets.dart';
import 'package:flutter/material.dart';

class DibofomeScreen extends StatefulWidget {
  const DibofomeScreen({Key? key}) : super(key: key);

  @override
  State<DibofomeScreen> createState() => _DibofomeScreenState();
}

class _DibofomeScreenState extends State<DibofomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DiBoFoMe',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        backgroundColor: butonColor,
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                child: bookInformationDibofome(),
              ),
              SizedBox(
                child: clickButton(context),
              ),
              SizedBox(
                child: textFormfieldDibofome(),
              ),
              SizedBox(
                child: commentButon(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
