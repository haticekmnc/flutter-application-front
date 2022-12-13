// ignore_for_file: public_member_api_docs, sort_constructors_first
class Book {
  String bookName, authorName, image;
  Book({
    required this.image,
    required this.authorName,
    required this.bookName,
  });
}

List<Book> bookList = [
  Book(
      bookName: "Lon Po Po: A Ride Riding Hood Story",
      authorName: "Written: Ed Young",
      image: "assets/images/lonpopo.jpg"),
  Book(
    bookName: "SPEAK",
    authorName: "Written: Laurie Haise Andersan",
    image: "assets/images/speak.jpg",
  ),
  Book(
    bookName: "Firekeeper's Daughter",
    authorName: "Angeline Bouiley",
    image: "assets/images/frikeepers.jpg",
  ),
  Book(
      bookName: "Lon Po Po: A Ride Riding Hood Story",
      authorName: "Written: Ed Young",
      image: "assets/images/lonpopo.jpg"),
  Book(
    bookName: "SPEAK",
    authorName: "Written: Laurie Haise Andersan",
    image: "assets/images/speak.jpg",
  ),
  Book(
    bookName: "Firekeeper's Daughter",
    authorName: "Angeline Bouiley",
    image: "assets/images/frikeepers.jpg",
  ),
];
