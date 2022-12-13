import 'package:dibofome/constants/colors.dart';
import 'package:dibofome/consts.dart';
import 'package:dibofome/localizations/app_localizations.dart';
import 'package:dibofome/product/book.dart';
import 'package:dibofome/screens/bookdetail_screen.dart';
import 'package:dibofome/screens/dibofome_screen.dart';
import 'package:dibofome/screens/home_page.dart';
import 'package:dibofome/screens/mylibrary_screen.dart';
import 'package:dibofome/screens/opening_screen.dart';
import 'package:dibofome/screens/questionbook_screen.dart';
import 'package:dibofome/screens/readbook_screen.dart';
import 'package:dibofome/screens/reviews_screen.dart';
import 'package:flutter/material.dart';

//Reviews Screen Widgets
Widget bookInformation2() {
  return SingleChildScrollView(
    child: ListView.builder(
      itemCount: 1,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Container(
        height: 220,
        color: backgroundColor,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          color: backgroundColor,
          elevation: 5.0,
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
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/lonpopo.jpg'),
                      ),
                    ),
                  ),

                  //---------------Kitap İsmi-----------------------------------
                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //bune?
                          const Padding(
                            padding: EdgeInsets.only(left: 8, top: 8),
                            child: Text(
                              'Lon Po Po: A Red Riding Hood Story from China',
                              maxLines: 5,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.111,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          //---------------Kitabın yazar ismi----------------------------------------
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 8),
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //-------------Kitap hakkında yorumlar butonu-----------------------------

              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuestionBookScreen(),
                      ),
                    );
                  },
                  color: cardButonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      context.translate('end_reading'),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        context.translate('book_comments'),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 230,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              //-------------------------------------------------------------------------------------
            ],
          ),
        ),
      ),
    ),
  );
}

//-------------------Listview de Dönen Card yapısı------------------------------

Widget buildReviewsListView(BuildContext context) {
  return ListView.builder(
    shrinkWrap: true,
    padding: const EdgeInsets.all(12),
    itemCount: dateTextList.length,
    itemBuilder: (context, index) {
      return Container(
        height: 100,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            title: Text(
              dateTextList[index],
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            subtitle: Text(
              labelTextList[index],
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
        ),
      );
    },
  );
}

//-----------------Kitap hakkında yorum yap butonu-----------------------------
Widget commentButon(BuildContext context) {
  return Container(
    alignment: Alignment.bottomLeft,
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
    // ignore: deprecated_member_use
    child: FlatButton(
      onPressed: () {},
      color: butonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(
        child: Text(
          context.translate('comment_on_the_book'),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
  );
}

//---------------------------------------------------------------------
//Book Detail Screen Widgets
Widget bookInformation(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: ListView.builder(
      itemCount: 1,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Container(
        height: 190,
        color: backgroundColor,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          color: backgroundColor,
          elevation: 5.0,
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
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/lonpopo.jpg'),
                      ),
                    ),
                  ),

                  //---------------Kitap İsmi-----------------------------------
                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //bune?
                          const Padding(
                            padding: EdgeInsets.only(left: 8, top: 8),
                            child: Text(
                              'Lon Po Po: A Red Riding Hood Story from China',
                              maxLines: 5,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.111,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          //---------------Kitabın yazar ismi----------------------------------------
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 8),
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //-------------Kitap hakkında yorumlar butonu-----------------------------

              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReviewsScreen(),
                      ),
                    );
                  },
                  color: cardButonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      context.translate('comments_about_the_book'),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              //-------------------------------------------------------------------------------------
            ],
          ),
        ),
      ),
    ),
  );
}

Widget startButton(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 18.0,
    ),
    // ignore: deprecated_member_use
    child: FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ReviewsScreen(),
          ),
        );
      },
      color: butonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          context.translate('start_reading'),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
  );
}
//--------------------bookpreview altındaki kaydırılabilir alan --------------------------------

Widget buildCard(int index) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: const Center(child: Text('LİSTVİEW')),
        ),
      ],
    );

//----------------------------Body kısmındaki ListViewBuilder yapısı------------------------------------
class ListView2 extends StatefulWidget {
  const ListView2({Key? key}) : super(key: key);

  @override
  State<ListView2> createState() => _ListView2State();
}

class _ListView2State extends State<ListView2> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Container(
        color: backgroundColor,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          color: backgroundColor,
          elevation: 5.0,
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
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/lonpopo.jpg'),
                      ),
                    ),
                  ),

                  //---------------Kitap İsmi-----------------------------------
                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //bune?
                          const Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: Text(
                              'Lon Po Po: A Red Riding Hood Story from China',
                              maxLines: 5,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.111,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          //---------------Kitabın yazar ismi----------------------------------------
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
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
                          //-------------Kitap hakkında yorumlar butonu-----------------------------
                          Container(
                            alignment: Alignment.bottomRight,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ReviewsScreen(),
                                  ),
                                );
                              },
                              color: cardButonColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Center(
                                child: Text(
                                  context.translate('comments_about_the_book'),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //-------------------------------------------------------------------------------------
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //----------------Okumaya başla butonu--------------------------
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReadbookScreen(),
                      ),
                    );
                  },
                  color: butonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      context.translate('start_reading'),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              //------------------------------------------------------------------------
            ],
          ),
        ),
      ),
    );
  }
}
//HomePage
// --------------------HomePage Body deki  ListView Card yapısı----------------------------

Widget buildHomeListView(BuildContext context) {
  return ListView.builder(
    itemCount: bookList.length,
    shrinkWrap: true,
    itemBuilder: (BuildContext context, int index) => Container(
      height: 240,
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: Card(
        color: cardBackgroundcolor,
        elevation: 12.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          color: cardBackgroundcolor,
          width: MediaQuery.of(context).size.width,
          height: 200,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //--------------------------Kitap resmi---------------------------------
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
                  //----------------------------------------------------------------------

                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          //----------------------------------Kitap ismi-------------------------
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
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
                          //----------------------------------Yazar ismi------------------------------------
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
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
                          //--------------------------------------Kitap hakkında butonu-----------------------------------
                          Container(
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
                                  context
                                      .translate('information_about_the_book'),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
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
              //----------------------------------------Kitabı okumaya başla butonu-------------------------------------------
              Container(
                alignment: Alignment.bottomLeft,
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
                  color: cardButonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      context.translate('start_reading'),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

//-------------------------------------------DRAWER WİDGET------------------------------------------------
class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                fontSize: 16,
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
                fontSize: 16,
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
                fontSize: 16,
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
    );
  }
}

//DİBOFOME SCREEN
Widget bookInformationDibofome() {
  return SingleChildScrollView(
    child: ListView.builder(
      itemCount: 1,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Container(
        height: 220,
        color: backgroundColor,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          color: backgroundColor,
          elevation: 5.0,
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
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/lonpopo.jpg'),
                      ),
                    ),
                  ),

                  //---------------Kitap İsmi-----------------------------------
                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //bune?
                          const Padding(
                            padding: EdgeInsets.only(left: 8, top: 8),
                            child: Text(
                              'Lon Po Po: A Red Riding Hood Story from China',
                              maxLines: 5,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.111,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          //---------------Kitabın yazar ismi----------------------------------------
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 8),
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //-------------Kitap hakkında yorumlar butonu-----------------------------

              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuestionBookScreen(),
                      ),
                    );
                  },
                  color: cardButonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      context.translate('end_reading'),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'The Date You Started Reading The Book:12.12.2022',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              //-------------------------------------------------------------------------------------
            ],
          ),
        ),
      ),
    ),
  );
}

Widget clickButton(BuildContext context) {
  return Container(
    alignment: Alignment.bottomLeft,
    padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),

    // ignore: deprecated_member_use
    child: FlatButton(
      onPressed: () {},
      color: butonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(
        child: Text(
          context.translate('click_if_youre_halfway_through_the_book'),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
  );
}

Widget textFormfieldDibofome() {
  return Padding(
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
  );
}

//QUESTİONBOOK SCREEN
Widget questionBookScreenInformation() {
  return SingleChildScrollView(
    child: ListView.builder(
      itemCount: 1,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Container(
        height: 220,
        color: backgroundColor,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          color: backgroundColor,
          elevation: 5.0,
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
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/lonpopo.jpg'),
                      ),
                    ),
                  ),

                  //---------------Kitap İsmi-----------------------------------
                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //bune?
                          const Padding(
                            padding: EdgeInsets.only(left: 8, top: 8),
                            child: Text(
                              'Lon Po Po: A Red Riding Hood Story from China',
                              maxLines: 5,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.111,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          //---------------Kitabın yazar ismi----------------------------------------
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 8),
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //-------------Kitap hakkında yorumlar butonu-----------------------------

              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DibofomeScreen(),
                      ),
                    );
                  },
                  color: cardButonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      context.translate('finished_test'),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

//RADİOLİSTTİLE
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
