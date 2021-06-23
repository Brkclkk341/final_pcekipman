// To parse this JSON data, do
//
//     final albums = albumsFromJson(jsonString);

import 'dart:convert';

List<Albums> albumsFromJson(String str) => List<Albums>.from(json.decode(str).map((x) => Albums.fromJson(x)));

String albumsToJson(List<Albums> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Albums {
  Albums({
    this.marka,
    this.model,
    this.fiyat,
  });

  String marka;
  String model;
  int fiyat;

  factory Albums.fromJson(Map<String, dynamic> json) => Albums(
    marka: json["Marka"],
    model: json["Model"],
    fiyat: json["Fiyat"],
  );

  Map<String, dynamic> toJson() => {
    "Marka": marka,
    "Model": model,
    "Fiyat": fiyat,
  };
}
