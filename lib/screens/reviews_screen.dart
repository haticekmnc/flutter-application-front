import 'package:dibofome/constants/colors.dart';

import 'package:dibofome/localizations/app_localizations.dart';
import 'package:dibofome/widgets.dart';

import 'package:flutter/material.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.translate('reviews_about_the_book'),
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
                child: bookInformation2(),
              ),
              SizedBox(
                height: 300,
                child: buildReviewsListView(context),
              ),
              //--------------------------TextField Alanı--------------------------------------------------
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: cardButonColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      minLines: 5,
                      maxLines: 30,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.multiline,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      obscureText: false,
                    ),
                  ),
                ),
              ),
              //-----------------------En alttaki yorum yap butonu-------------------------------------
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
