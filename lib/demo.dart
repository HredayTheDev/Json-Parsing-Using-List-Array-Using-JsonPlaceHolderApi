// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);

// import 'dart:convert';

// List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));


// class Welcome {
//     Welcome({
//        required this.albumId,
//         required this.id,
//        required  this.title,
//        required this.url,
//         required this.thumbnailUrl,
//     });

//     int albumId;
//     int id;
//     String title;
//     String url;
//     String thumbnailUrl;

//     factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//         albumId: json["albumId"],
//         id: json["id"],
//         title: json["title"],
//         url: json["url"],
//         thumbnailUrl: json["thumbnailUrl"],
//     );

  
// }
