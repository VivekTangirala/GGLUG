
// To parse this JSON data, do
//
//     final aipdata = aipdataFromJson(jsonString);

import 'dart:convert';

Aipdata aipdataFromJson(String str) => Aipdata.fromJson(json.decode(str));

String aipdataToJson(Aipdata data) => json.encode(data.toJson());

class Aipdata { 
    Aipdata({
         this.activity="",
    });

    String activity;

    factory Aipdata.fromJson(Map<String, dynamic> json) => Aipdata(
        activity: json["activity"],
    );

    Map<String, dynamic> toJson() => {
        "activity": activity,
    };
}
