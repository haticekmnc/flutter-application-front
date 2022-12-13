// import 'dart:convert';

// Future locationADDJsnFnc(int id, int userId, String name,  String gps)async{
//  final String apiUrl =yol+ "Locations/Add";

//  var resbody = {};
//   resbody["id"] =id;
//   resbody["userid"] =userId;
//   resbody["name"] =name;
//   resbody["gps"] =gps;

// String bodys =json.encode(resbody);

//   final response = await http.post(
//     Uri.parse(apiUrl), 
//     headers: header,
//     body: bodys
//     );
//   if(response.statusCode == 200)
//   {
//     final responseString = jsonDecode(response.body);
//      if (responseString["success"] == true) {
//         final jsonControl = responseString["result"];
//         return jsonControl;
//       } else {
//         throw  serviceStatus =responseString["result"];
//       }
//     } 
//     else if(response.statusCode == 404) {
//        throw serviceStatus ="404 Sunucu Servis hatası";

//   } else {
//     return  throw serviceStatus = "Beklenmeyen bir hata oluştu : ${response.statusCode}";
//   }
// }