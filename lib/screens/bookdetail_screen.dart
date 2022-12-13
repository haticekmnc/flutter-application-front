import 'package:dibofome/constants/text_strings.dart';
import 'package:dibofome/localizations/app_localizations.dart';
import 'package:dibofome/widgets.dart';
import 'package:flutter/material.dart';
import 'package:dibofome/constants/colors.dart';
import '../product/book.dart';

class BookdetailScreen extends StatefulWidget {
  const BookdetailScreen({Key? key, required this.book}) : super(key: key);
  final Book book;

  @override
  State<BookdetailScreen> createState() => _BookdetailScreenState();
}

class _BookdetailScreenState extends State<BookdetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.translate('book_detail'),
          style: const TextStyle(
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
              SizedBox(
                child: bookInformation(context),
              ),
              SizedBox(
                child: startButton(context),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16.0, left: 16.0, top: 5.0),
                child: Text(titleBookdetail),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        context.translate('book_preview'),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 280,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(12),
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 12);
                  },
                  itemBuilder: (context, index) {
                    return buildCard(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
