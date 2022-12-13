import 'package:dibofome/constants/colors.dart';
import 'package:dibofome/localizations/app_localizations.dart';
import 'package:dibofome/screens/home_page.dart';
import 'package:dibofome/screens/mylibrary_screen.dart';
import 'package:dibofome/screens/opening_screen.dart';
import 'package:flutter/material.dart';

class ReadinglevelScreen extends StatefulWidget {
  const ReadinglevelScreen({Key? key}) : super(key: key);

  @override
  State<ReadinglevelScreen> createState() => _ReadinglevelScreenState();
}

class Question {
  final String text;
  final List<Option> options;

  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.selectedOption,
  });
}

class Option {
  final String text;

  const Option({
    required this.text,
  });
}

final questions = [
  Question(
      text: 'What articles do you read most or prima in newspapers?',
      options: [
        const Option(text: 'Lorem Ipsum1'),
        const Option(text: 'Lorem Ipsum2'),
        const Option(text: 'Lorem Ipsum3'),
        const Option(text: 'Lorem Ipsum4'),
      ]),
  Question(text: 'Which one is taken regularly in your hom?', options: [
    const Option(text: 'Book'),
    const Option(text: 'Newspaper'),
    const Option(text: 'Magazine'),
    const Option(text: 'Other'),
  ]),
  Question(
      text: 'What articles do you read most or prima in newspapers?',
      options: [
        const Option(text: 'Lorem Ipsum'),
        const Option(text: 'Lorem Ipsum'),
        const Option(text: 'Lorem Ipsum'),
        const Option(text: 'Lorem Ipsum'),
      ]),
  Question(text: 'Which one is taken regularly in your hom?', options: [
    const Option(text: 'Book'),
    const Option(text: 'Newspaper'),
    const Option(text: 'Magazine'),
    const Option(text: 'Other'),
  ]),
];

class _ReadinglevelScreenState extends State<ReadinglevelScreen> {
  String? question;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: butonColor,
        title: Text(
          context.translate('reading_level_and_type'),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      drawer: Drawer(
        backgroundColor: butonColor,
        child: Column(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  ' DiBoFoMe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                context.translate('main_page'),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.library_add,
                color: Colors.white,
              ),
              title: Text(
                context.translate('my_library'),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyLibraryScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              title: Text(
                context.translate('exit'),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OpeningScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: const _RadioListTile2(),
    );
  }
}

//------------------------ANKET BÖLÜMÜ-----------------------
class _RadioListTile2 extends StatefulWidget {
  const _RadioListTile2({Key? key}) : super(key: key);

  @override
  State<_RadioListTile2> createState() => __RadioListTile2State();
}

class __RadioListTile2State extends State<_RadioListTile2> {
  String? question6;
  String? question7;
  String? question8;
  String? question9;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: screenSize.width,
            child: Text(
              context.translate('what_articles_do_you'),
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          RadioListTile(
              title: Text(
                context.translate('lorem_ipsum1'),
              ),
              value: 'lorem ipsum1',
              groupValue: question6,
              onChanged: (value) {
                setState(() {
                  question6 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(
                context.translate('lorem_ipsum2'),
              ),
              value: 'lorem ipsum2',
              groupValue: question6,
              onChanged: (value) {
                setState(() {
                  question6 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(
                context.translate('lorem_ipsum3'),
              ),
              value: 'lorem ipsum3',
              groupValue: question6,
              onChanged: (value) {
                setState(() {
                  question6 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(
                context.translate('lorem_ipsum4'),
              ),
              value: 'lorem ipsum4',
              groupValue: question6,
              onChanged: (value) {
                setState(() {
                  question6 = value.toString();
                });
              }),
          const Divider(
            thickness: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: screenSize.width,
            child: Text(
              context.translate('which_one_is_taken'),
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          RadioListTile(
              title: Text(context.translate('book')),
              value: 'book',
              groupValue: question7,
              onChanged: (value) {
                setState(() {
                  question7 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('newspaper')),
              value: 'newspaper',
              groupValue: question7,
              onChanged: (value) {
                setState(() {
                  question7 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('magazine')),
              value: 'magazine',
              groupValue: question7,
              onChanged: (value) {
                setState(() {
                  question7 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('other')),
              value: 'other',
              groupValue: question7,
              onChanged: (value) {
                setState(() {
                  question7 = value.toString();
                });
              }),
          const Divider(
            thickness: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: screenSize.width,
            child: Text(
              context.translate('what_articles_do_you'),
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          RadioListTile(
              title: Text(context.translate('lorem_ipsum5')),
              value: 'lorem ipsum5',
              groupValue: question8,
              onChanged: (value) {
                setState(() {
                  question8 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('lorem_ipsum6')),
              value: 'lorem ipsum6',
              groupValue: question8,
              onChanged: (value) {
                setState(() {
                  question8 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('lorem_ipsum7')),
              value: 'lorem ipsum7',
              groupValue: question8,
              onChanged: (value) {
                setState(() {
                  question8 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('lorem_ipsum8')),
              value: 'lorem ipsum8',
              groupValue: question8,
              onChanged: (value) {
                setState(() {
                  question8 = value.toString();
                });
              }),
          const Divider(
            thickness: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: screenSize.width,
            child: Text(
              context.translate('which_one_is_taken'),
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          RadioListTile(
              title: Text(context.translate('book')),
              value: 'book',
              groupValue: question9,
              onChanged: (value) {
                setState(() {
                  question9 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('newspaper')),
              value: 'newspaper',
              groupValue: question9,
              onChanged: (value) {
                setState(() {
                  question9 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('magazine')),
              value: 'magazine',
              groupValue: question9,
              onChanged: (value) {
                setState(() {
                  question9 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('other')),
              value: 'other',
              groupValue: question9,
              onChanged: (value) {
                setState(() {
                  question9 = value.toString();
                });
              }),
          const Divider(
            thickness: 5,
          ),
          Container(
            width: 370,
            margin: const EdgeInsets.only(left: 8.0, right: 8.0),
            //margin: const EdgeInsets.only(right: 134),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: const Icon(Icons.navigate_next),
              label: Text(
                context.translate('end_survey'),
              ),
              style: ElevatedButton.styleFrom(
                primary: butonColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
