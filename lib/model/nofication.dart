import 'dart:convert';

USer uSerFromJson(String str) => USer.fromJson(json.decode(str));

String uSerToJson(USer data) => json.encode(data.toJson());

class USer {
    USer({
        this.avater,
        this.name,
        this.time,
        this.image,
        this.notification,
    });

    String? avater;
    String? name;
    String? time;
    String? image;
    String? notification;

    factory USer.fromJson(Map<String, dynamic> json) => USer(
        avater: json["avater"],
        name: json["name"],
        time: json["time"],
        image: json["image"],
        notification: json["notification"],
    );

    Map<String, dynamic> toJson() => {
        "avater": avater,
        "name": name,
        "time": time,
        "image": image,
        "notification": notification,
    };
}