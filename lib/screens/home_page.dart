// ignore_for_file: deprecated_member_use

import 'package:dibofome/constants/colors.dart';
import 'package:dibofome/localizations/app_localizations.dart';
import 'package:dibofome/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: butonColor,
        title: const Text(
          'DiBoFoMe',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      drawer: const DrawerWidget(),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(flex: 12, child: buildHomeListView(context)),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0, top: 6.0),
                  child: Container(
                    width: 370,
                    margin: const EdgeInsets.only(right: 80.0, left: 80.0),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        context.translate('recommend'),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      color: butonColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
