import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
    Profile({
        this.avater,
        this.name,
        this.time,
        this.image,
    });

    String? avater;
    String? name;
    String? time;
    String? image;

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        avater: json["avater"],
        name: json["name"],
        time: json["time"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "avater": avater,
        "name": name,
        "time": time,
        "image": image,
    };
}
