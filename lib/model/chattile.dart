import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        this.avater,
        this.name,
        this.time,
        this.notification,
    });

    String? avater;
    String? name;
    String? time;
    String? notification;

    factory User.fromJson(Map<String, dynamic> json) => User(
        avater: json["avater"],
        name: json["name"],
        time: json["time"],
        notification: json["notification"],
    );

    Map<String, dynamic> toJson() => {
        "avater": avater,
        "name": name,
        "time": time,
        "notification": notification,
    };
}
