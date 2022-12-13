import 'package:dibofome/constants/colors.dart';
import 'package:flutter/material.dart';

class ReadbookScreen extends StatefulWidget {
  const ReadbookScreen({Key? key}) : super(key: key);

  @override
  State<ReadbookScreen> createState() => _ReadbookScreenState();
}

class _ReadbookScreenState extends State<ReadbookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DiBoFoMe',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: butonColor,
      ),
    );
  }
}
