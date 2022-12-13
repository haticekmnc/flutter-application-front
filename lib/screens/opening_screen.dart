import 'package:dibofome/constants/colors.dart';
import 'package:dibofome/constants/text_strings.dart';

import 'package:dibofome/localizations/app_localizations.dart';

import 'package:dibofome/screens/informationpanel_screen.dart';
import 'package:flutter/material.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({Key? key}) : super(key: key);

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  String? value;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context)
        .size; //Bu boyut bize ekranımızın toplam yüksekliğini ve genişliğini sağlar.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40.0),
                      child: Text(
                        titleOpening,
                        style: TextStyle(
                          color: titleColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    /*Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: boxColor,
                          border: Border.all(color: cardButonColor),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              dropdownColor: backgroundColor,
                              borderRadius: BorderRadius.circular(45),
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                              value: value,
                              iconSize: 36,
                              icon: const Icon(Icons.arrow_drop_down,
                                  color: butonColor),
                              hint: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  context.translate('select_language'),
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              isExpanded: true,
                              items:
                                  menuLanguageList.map(buildMenuItem).toList(),
                              onChanged: (value) => setState(() {
                                this.value = value;
                              }),
                            ),
                          ),
                        ),
                      ),
                    ),*/
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: boxColor,
                          border: Border.all(color: cardButonColor),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: context.translate('e_mail'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: boxColor,
                          border: Border.all(color: cardButonColor),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: context.translate('school_number'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 189),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                            height: 42, width: 148.74),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const InformationpanelScreen()));
                          },
                          child: Text(
                            context.translate('entry'),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: butonColor,
                            onPrimary: backgroundColor,
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.translate('europa_project'),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(
            fontWeight: FontWeight.normal, fontSize: 15, color: Colors.black),
      ),
    );
