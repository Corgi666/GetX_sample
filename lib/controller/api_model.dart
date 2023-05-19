import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

List<Img?>? imgFromJson(String str) => json.decode(str) == null
    ? []
    : List<Img?>.from(json.decode(str)!.map((x) => Img.fromJson(x)));

String imgToJson(List<Img?>? data) => json.encode(
    data == null ? [] : List<dynamic>.from(data.map((x) => x!.toJson())));

class Img {
  Img({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  factory Img.fromJson(Map<String, dynamic> json) => Img(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}

class AppiController extends GetxController {
  var imgList = List<Img>;
  void getImg() async {
    var img = await RemoteService().getdata();
  }
}

class RemoteService {
  final client = http.Client();
  final url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
  Future<List<Img?>?> getdata() async {
    final response = await client.get(url);
    if (response.statusCode == 200) {
      print('connected');
      var json = response.body;
      return imgFromJson(json);
    } else {
      print(response.statusCode);
    }
  }
}
