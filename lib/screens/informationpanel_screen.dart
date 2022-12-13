import 'package:dibofome/constants/colors.dart';

import 'package:dibofome/localizations/app_localizations.dart';
import 'package:dibofome/screens/readinglevel_screen.dart';
import 'package:dibofome/widgets.dart';
import 'package:flutter/material.dart';

class InformationpanelScreen extends StatefulWidget {
  const InformationpanelScreen({Key? key}) : super(key: key);

  @override
  State<InformationpanelScreen> createState() => _InformationpanelScreenState();
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
  Question(text: 'Father Graduation Status', options: [
    const Option(text: 'Primary School'),
    const Option(text: 'Middle School'),
    const Option(text: 'High School'),
    const Option(text: 'University'),
  ]),
  Question(text: 'Mother Graduation Status', options: [
    const Option(text: 'Primary School'),
    const Option(text: 'Middle School'),
    const Option(text: 'High School'),
    const Option(text: 'University'),
  ]),
  Question(text: 'Number of Siblings', options: [
    const Option(text: '1'),
    const Option(text: '2'),
    const Option(text: '3'),
    const Option(text: '4+'),
  ]),
  Question(text: 'Father Graduation Status', options: [
    const Option(text: 'Primary School'),
    const Option(text: 'Middle School'),
    const Option(text: 'High School'),
    const Option(text: 'University'),
  ]),
  Question(text: 'Mother Graduation Status', options: [
    const Option(text: 'Primary School'),
    const Option(text: 'Middle School'),
    const Option(text: 'High School'),
    const Option(text: 'University'),
  ]),
];

class _InformationpanelScreenState extends State<InformationpanelScreen> {
  String? question;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: butonColor,
        title: Text(
          context.translate('student_information_panel'),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      drawer: const DrawerWidget(),
      body: const _RadioListTile(),
    );
  }
}

class _RadioListTile extends StatefulWidget {
  const _RadioListTile({Key? key}) : super(key: key);

  @override
  State<_RadioListTile> createState() => __RadioListTileState();
}

class __RadioListTileState extends State<_RadioListTile> {
  String? question;
  String? question2;
  String? question3;
  String? question4;
  String? question5;

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
              context.translate('father_graduation_status'),
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          RadioListTile(
              title: Text(context.translate('primary_school')),
              value: 'primary school',
              groupValue: question,
              onChanged: (value) {
                setState(() {
                  question = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('middle_school')),
              value: 'middle school',
              groupValue: question,
              onChanged: (value) {
                setState(() {
                  question = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('high_school')),
              value: 'high school',
              groupValue: question,
              onChanged: (value) {
                setState(() {
                  question = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('university')),
              value: 'university',
              groupValue: question,
              onChanged: (value) {
                setState(() {
                  question = value.toString();
                });
              }),
          const Divider(
            thickness: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: screenSize.width,
            child: Text(
              context.translate('mother_graduation_status'),
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          RadioListTile(
              title: Text(context.translate('primary_school')),
              value: 'primary school',
              groupValue: question2,
              onChanged: (value) {
                setState(() {
                  question2 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('middle_school')),
              value: 'middle school',
              groupValue: question2,
              onChanged: (value) {
                setState(() {
                  question2 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('high_school')),
              value: 'high school',
              groupValue: question2,
              onChanged: (value) {
                setState(() {
                  question2 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('university')),
              value: 'university',
              groupValue: question2,
              onChanged: (value) {
                setState(() {
                  question2 = value.toString();
                });
              }),
          const Divider(
            thickness: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: screenSize.width,
            child: Text(
              context.translate('number_of_siblings'),
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          RadioListTile(
              title: const Text(
                '1',
              ),
              value: 'primary school',
              groupValue: question3,
              onChanged: (value) {
                setState(() {
                  question3 = value.toString();
                });
              }),
          RadioListTile(
              title: const Text('2'),
              value: 'middle school',
              groupValue: question3,
              onChanged: (value) {
                setState(() {
                  question3 = value.toString();
                });
              }),
          RadioListTile(
              title: const Text('3 '),
              value: 'high school',
              groupValue: question3,
              onChanged: (value) {
                setState(() {
                  question3 = value.toString();
                });
              }),
          RadioListTile(
              title: const Text('4+'),
              value: 'university',
              groupValue: question3,
              onChanged: (value) {
                setState(() {
                  question3 = value.toString();
                });
              }),
          const Divider(
            thickness: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: screenSize.width,
            child: Text(
              context.translate('father_graduation_status'),
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          RadioListTile(
              title: Text(
                context.translate('primary_school'),
              ),
              value: 'primary school',
              groupValue: question4,
              onChanged: (value) {
                setState(() {
                  question4 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('middle_school')),
              value: 'middle school',
              groupValue: question4,
              onChanged: (value) {
                setState(() {
                  question4 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('high_school')),
              value: 'high school',
              groupValue: question4,
              onChanged: (value) {
                setState(() {
                  question4 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('university')),
              value: 'university',
              groupValue: question4,
              onChanged: (value) {
                setState(() {
                  question4 = value.toString();
                });
              }),
          const Divider(
            thickness: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: screenSize.width,
            child: Text(
              context.translate('mother_graduation_status'),
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          RadioListTile(
              title: Text(context.translate('primary_school')),
              value: 'primary school',
              groupValue: question5,
              onChanged: (value) {
                setState(() {
                  question5 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('middle_school')),
              value: 'middle school',
              groupValue: question5,
              onChanged: (value) {
                setState(() {
                  question5 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('high_school')),
              value: 'high school',
              groupValue: question5,
              onChanged: (value) {
                setState(() {
                  question5 = value.toString();
                });
              }),
          RadioListTile(
              title: Text(context.translate('university')),
              value: 'university',
              groupValue: question5,
              onChanged: (value) {
                setState(() {
                  question5 = value.toString();
                });
              }),
          const Divider(
            thickness: 5,
          ),
          Container(
            width: 370,
            margin: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReadinglevelScreen()));
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
