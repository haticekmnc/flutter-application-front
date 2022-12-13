import 'package:dibofome/constants/colors.dart';
import 'package:dibofome/localizations/app_localizations.dart';
import 'package:dibofome/widgets.dart';
import 'package:flutter/material.dart';

class QuestionBookScreen extends StatefulWidget {
  const QuestionBookScreen({Key? key}) : super(key: key);

  @override
  State<QuestionBookScreen> createState() => _QuestionBookScreenState();
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
      text:
          'Which of the following is not one of the main characters of the book?',
      options: [
        const Option(text: 'Lorem Ipsum1'),
        const Option(text: 'Lorem Ipsum2'),
        const Option(text: 'Lorem Ipsum3'),
        const Option(text: 'Lorem Ipsum4'),
      ]),
  Question(text: 'Lorem Ipsum dolor sit amet?', options: [
    const Option(text: 'Lorem Ipsum'),
    const Option(text: 'Lorem Ipsum'),
    const Option(text: 'Lorem Ipsum'),
    const Option(text: 'Lorem Ipsum'),
  ]),
  Question(text: 'Morbi sit amet laoreet libero?', options: [
    const Option(text: 'Lorem Ipsum'),
    const Option(text: 'Lorem Ipsum'),
    const Option(text: 'Lorem Ipsum'),
    const Option(text: 'Lorem Ipsum'),
  ]),
  Question(text: 'Which one is taken regularly in your home?', options: [
    const Option(text: 'Book'),
    const Option(text: 'Newspaper'),
    const Option(text: 'Magazine'),
    const Option(text: 'Other'),
  ]),
];

class _QuestionBookScreenState extends State<QuestionBookScreen> {
  String? question;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.translate('question_about_book'),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
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
                child: questionBookScreenInformation(),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: _QuestionRadioListTile(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuestionRadioListTile extends StatefulWidget {
  const _QuestionRadioListTile({Key? key}) : super(key: key);

  @override
  State<_QuestionRadioListTile> createState() => __QuestionRadioListTileState();
}

class __QuestionRadioListTileState extends State<_QuestionRadioListTile> {
  String? question10;
  String? question11;
  String? question12;
  String? question13;

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
              title: Text(context.translate('lorem_ipsum1')),
              value: 'lorem ipsum1',
              groupValue: question10,
              onChanged: (value) {
                setState(() {
                  question10 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('lorem_ipsum2')),
              value: 'lorem ipsum2',
              groupValue: question10,
              onChanged: (value) {
                setState(() {
                  question10 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('lorem_ipsum3')),
              value: 'lorem ipsum3',
              groupValue: question10,
              onChanged: (value) {
                setState(() {
                  question10 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('lorem_ipsum4')),
              value: 'lorem ipsum4',
              groupValue: question10,
              onChanged: (value) {
                setState(() {
                  question10 = value.toString();
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
              groupValue: question11,
              onChanged: (value) {
                setState(() {
                  question11 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('newspaper')),
              value: 'newspaper',
              groupValue: question11,
              onChanged: (value) {
                setState(() {
                  question11 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('magazine')),
              value: 'magazine',
              groupValue: question11,
              onChanged: (value) {
                setState(() {
                  question11 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('other')),
              value: 'other',
              groupValue: question11,
              onChanged: (value) {
                setState(() {
                  question11 = value.toString();
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
              groupValue: question12,
              onChanged: (value) {
                setState(() {
                  question12 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('lorem_ipsum6')),
              value: 'lorem ipsum6',
              groupValue: question12,
              onChanged: (value) {
                setState(() {
                  question12 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('lorem_ipsum7')),
              value: 'lorem ipsum7',
              groupValue: question12,
              onChanged: (value) {
                setState(() {
                  question12 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('lorem_ipsum8')),
              value: 'lorem ipsum8',
              groupValue: question12,
              onChanged: (value) {
                setState(() {
                  question12 = value.toString();
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
              groupValue: question13,
              onChanged: (value) {
                setState(() {
                  question13 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('newspaper')),
              value: 'newspaper',
              groupValue: question13,
              onChanged: (value) {
                setState(() {
                  question13 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('magazine')),
              value: 'magazine',
              groupValue: question13,
              onChanged: (value) {
                setState(() {
                  question13 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('other')),
              value: 'other',
              groupValue: question13,
              onChanged: (value) {
                setState(() {
                  question13 = value.toString();
                });
              }),
          const Divider(
            thickness: 5,
          ),
        ],
      ),
    );
  }
}
