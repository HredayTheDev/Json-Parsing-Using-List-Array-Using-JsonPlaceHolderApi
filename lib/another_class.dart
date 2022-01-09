// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// import 'dart:convert';

// class PhotosList {
//   final List<Photo> photos;

//   PhotosList({
//     required this.photos,
//   });

//   factory PhotosList.fromJson(List<dynamic> parsedJson) {
//     List<Photo> photos = [];
//     photos = parsedJson.map((i) => Photo.fromJson(i)).toList();

//     return PhotosList(photos: photos);
//   }
// }

// class Photo {
//   final int albumId;
//   final int id;
//   final String title;
//   final String url;

//   Photo(
//       {required this.albumId,
//       required this.id,
//       required this.url,
//       required this.title});

//   factory Photo.fromJson(Map<String, dynamic> json) {
//     return Photo(
//       albumId: json['albumId'],
//       id: json['id'],
//       title: json['title'],
//       url: json['json'],
//     );
//   }
// }

// Future<PhotosList> fetchAlbum() async {
//   final response =
//       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     var doclist = PhotosList.fromJson(jsonDecode(response.body));

//     return PhotosList.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }

// void main() => runApp(const MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late Future<PhotosList> futureAlbum;

//   @override
//   void initState() {
//     super.initState();
//     futureAlbum = fetchAlbum();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Fetch Data Example'),
//         ),
//         body: Center(
//           child: FutureBuilder<PhotosList>(
//             future: futureAlbum,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return ListView.builder(
//                     itemCount: snapshot.data!.photos.length,
//                     scrollDirection: Axis.vertical,
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) {
//                       return SingleChildScrollView(
//                         child: Column(
//                           children: [
//                             // Text(snapshot.data!.photos[index].albumId)
//                             Text(snapshot.data!.photos[index].title),
//                           ],
//                         ),
//                       );
//                     });
//               } else if (snapshot.hasError) {}

//               return CircularProgressIndicator();
//             },
//           ),

        
//         ),
//       ),
//     );
//   }
// }
