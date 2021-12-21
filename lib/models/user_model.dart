// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    User({
        required this.privateName,
        required this.mobile,
        required this.email,
        this.jobTitle,
        this.department,
        this.profilePicture,
        this.description,
        this.brokerNumber,
        this.areas,
        this.language,
        this.socialAccounts,
    });

    String privateName;
    String mobile;
    String email;
    String? jobTitle;
    String? department;
    String? profilePicture;
    String? description;
    String? brokerNumber;
    String? areas;
    String? language;
    String? socialAccounts;

    factory User.fromJson(Map<String, dynamic> json) => User(
        privateName: json["private_name"],
        mobile: json["mobile"],
        email: json["email"],
        jobTitle: json["job_title"],
        department: json["department"],
        profilePicture: json["profile_picture"],
        description: json["description"],
        brokerNumber: json["broker_number"],
        areas: json["areas"],
        language: json["language"],
        socialAccounts: json["social_accounts"],
    );

    Map<String, dynamic> toJson() => {
        "private_name": privateName,
        "mobile": mobile,
        "email": email,
        "job_title": jobTitle,
        "department": department,
        "profile_picture": profilePicture,
        "description": description,
        "broker_number": brokerNumber,
        "areas": areas,
        "language": language,
        "social_accounts": socialAccounts,
    };
}
