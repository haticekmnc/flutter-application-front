// ignore_for_file: deprecated_member_use

import 'package:dibofome/constants/colors.dart';
import 'package:dibofome/localizations/app_localizations.dart';
import 'package:dibofome/product/book.dart';
import 'package:dibofome/screens/bookdetail_screen.dart';
import 'package:dibofome/widgets.dart';
import 'package:flutter/material.dart';
import 'package:dibofome/consts.dart';

class MyLibraryScreen extends StatefulWidget {
  const MyLibraryScreen({Key? key}) : super(key: key);

  @override
  State<MyLibraryScreen> createState() => _MyLibraryScreenState();
}

class _MyLibraryScreenState extends State<MyLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    //final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: butonColor,
        title: Text(
          context.translate('my_library'),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      drawer: const DrawerWidget(),
      body: ListView.builder(
        itemCount: imgList.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Card(
            color: cardBackgroundcolor,
            elevation: 12.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //-----------Kitap resmi------------------------
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 96.0,
                        height: 103.0,
                        color: Colors.grey[600],
                        child: CircleAvatar(
                          backgroundImage: AssetImage(imgList[index]),
                        ),
                      ),
                    ),
                    //--------- Alt bilgilendirme yazıları----------
                    //

                    Expanded(
                      flex: 7,
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //kitap ismi
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Text(
                                titleList[index],
                                maxLines: 5,
                                overflow: TextOverflow.clip,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.111,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            //yazar ismi
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: RichText(
                                text: const TextSpan(
                                  text: 'Written: ',
                                  style: TextStyle(
                                    color: butonColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Ed Young',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                alignment: Alignment.bottomRight,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 10.0),
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BookdetailScreen(
                                          book: bookList[index],
                                        ),
                                      ),
                                    );
                                  },
                                  color: butonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      context.translate(
                                          'information_about_the_book'),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.5,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 180.0),
                      child: Text(
                        myLibraryDescription[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
