import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
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

    factory User.fromJson(Map<String, dynamic> json) => User(
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
