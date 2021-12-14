// To parse this JSON data, do
//
//     final user = userFromJson(jsonString?);

import 'dart:convert';

List<User> userFromJson(String? str) => List<User>.from(json.decode(str!).map((x) => User.fromJson(x)));

String? userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    User({
        this.id,
        this.username,
        this.email,
        this.firstName,
        this.lastName,
        this.mobile,
        this.phone,
        this.jobTitle,
        this.department,
        this.officePhone,
        this.reraBrn,
        this.signature,
        this.bio,
        this.profilePicture,
        this.reference,
        this.officeExtensionNumber,
        this.publicName,
        this.publicEmail,
        this.publicPhone,
        this.company,
        this.nameTitle,
        this.userTypeId,
        this.type,
        this.status,
        this.fullName,
        this.profilePictureUrl,
        this.contactOverlayUrl,
        this.profileVideoUrl,
        this.passportFileUrl,
        this.emiratesIdFileUrl,
        this.reraBrnFileUrl,
        this.visaFileUrl,
        this.degreeFileUrl,
        this.spLocations,
        this.languages,
        this.departments,
        this.userSocialAccounts,
    });

    int? id;
    String? username;
    String? email;
    String? firstName;
    String? lastName;
    String? mobile;
    dynamic phone;
    String? jobTitle;
    String? department;
    String? officePhone;
    String? reraBrn;
    String? signature;
    String? bio;
    String? profilePicture;
    String? reference;
    int? officeExtensionNumber;
    String? publicName;
    String? publicEmail;
    String? publicPhone;
    String? company;
    dynamic nameTitle;
    dynamic userTypeId;
    Type? type;
    int? status;
    String? fullName;
    String? profilePictureUrl;
    String? contactOverlayUrl;
    String? profileVideoUrl;
    String? passportFileUrl;
    String? emiratesIdFileUrl;
    String? reraBrnFileUrl;
    String? visaFileUrl;
    String? degreeFileUrl;
    List<SpLocation>? spLocations;
    List<Language>? languages;
    List<Department>? departments;
    List<UserSocialAccount>? userSocialAccounts;

    factory User.fromJson(Map<String?, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        mobile: json["mobile"],
        phone: json["phone"],
        jobTitle: json["job_title"],
        department: json["department"],
        officePhone: json["office_phone"],
        reraBrn: json["rera_brn"],
        signature: json["signature"],
        bio: json["bio"],
        profilePicture: json["profile_picture"],
        reference: json["reference"],
        officeExtensionNumber: json["office_extension_number"],
        publicName: json["public_name"],
        publicEmail: json["public_email"],
        publicPhone: json["public_phone"],
        company: json["company"],
        nameTitle: json["name_title"],
        userTypeId: json["user_type_id"],
        type: typeValues.map[json["type"]],
        status: json["status"],
        fullName: json["full_name"],
        profilePictureUrl: json["profile_picture_url"],
        contactOverlayUrl: json["contact_overlay_url"],
        profileVideoUrl: json["profile_video_url"],
        passportFileUrl: json["passport_file_url"],
        emiratesIdFileUrl: json["emirates_id_file_url"],
        reraBrnFileUrl: json["rera_brn_file_url"],
        visaFileUrl: json["visa_file_url"],
        degreeFileUrl: json["degree_file_url"],
        spLocations: List<SpLocation>.from(json["sp_locations"].map((x) => SpLocation.fromJson(x))),
        languages: List<Language>.from(json["languages"].map((x) => Language.fromJson(x))),
        departments: List<Department>.from(json["departments"].map((x) => Department.fromJson(x))),
        userSocialAccounts: List<UserSocialAccount>.from(json["user_social_accounts"].map((x) => UserSocialAccount.fromJson(x))),
    );

    Map<String?, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "mobile": mobile,
        "phone": phone,
        "job_title": jobTitle,
        "department": department,
        "office_phone": officePhone,
        "rera_brn": reraBrn,
        "signature": signature,
        "bio": bio,
        "profile_picture": profilePicture,
        "reference": reference,
        "office_extension_number": officeExtensionNumber,
        "public_name": publicName,
        "public_email": publicEmail,
        "public_phone": publicPhone,
        "company": company,
        "name_title": nameTitle,
        "user_type_id": userTypeId,
        "type": typeValues.reverse?[type],
        "status": status,
        "full_name": fullName,
        "profile_picture_url": profilePictureUrl,
        "contact_overlay_url": contactOverlayUrl,
        "profile_video_url": profileVideoUrl,
        "passport_file_url": passportFileUrl,
        "emirates_id_file_url": emiratesIdFileUrl,
        "rera_brn_file_url": reraBrnFileUrl,
        "visa_file_url": visaFileUrl,
        "degree_file_url": degreeFileUrl,
        "sp_locations": List<dynamic>.from(spLocations!.map((x) => x.toJson())),
        "languages": List<dynamic>.from(languages!.map((x) => x.toJson())),
        "departments": List<dynamic>.from(departments!.map((x) => x.toJson())),
        "user_social_accounts": List<dynamic>.from(userSocialAccounts!.map((x) => x.toJson())),
    };
}

class Department {
    Department({
        this.id,
        this.name,
        this.pivot,
    });

    int? id;
    String? name;
    DepartmentPivot? pivot;

    factory Department.fromJson(Map<String?, dynamic> json) => Department(
        id: json["id"],
        name: json["name"],
        pivot: DepartmentPivot.fromJson(json["pivot"]),
    );

    Map<String?, dynamic> toJson() => {
        "id": id,
        "name": name,
        "pivot": pivot!.toJson(),
    };
}

class DepartmentPivot {
    DepartmentPivot({
        this.userId,
        this.departmentId,
        this.createdAt,
        this.updatedAt,
    });

    int? userId;
    int? departmentId;
    DateTime? createdAt;
    DateTime? updatedAt;

    factory DepartmentPivot.fromJson(Map<String?, dynamic> json) => DepartmentPivot(
        userId: json["user_id"],
        departmentId: json["department_id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String?, dynamic> toJson() => {
        "user_id": userId,
        "department_id": departmentId,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
    };
}

class Language {
    Language({
        this.id,
        this.name,
        this.pivot,
    });

    int? id;
    String? name;
    LanguagePivot? pivot;

    factory Language.fromJson(Map<String?, dynamic> json) => Language(
        id: json["id"],
        name: nameValues.map[json["name"]],
        pivot: LanguagePivot.fromJson(json["pivot"]),
    );

    Map<String?, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse?[name],
        "pivot": pivot!.toJson(),
    };
}

// enum Name { ENGLISH, ARABIC, HAUSA, FRENCH, URDU, HINDI }

final nameValues = EnumValues({
    "Arabic": "ARABIC",
    "English": "ENGLISH",
    "French": "FRENCH",
    "Hausa": "HAUSA",
    "Hindi": "HINDI",
    "Urdu": "URDU"
});

class LanguagePivot {
    LanguagePivot({
        this.userId,
        this.languageId,
    });

    int? userId;
    int? languageId;

    factory LanguagePivot.fromJson(Map<String?, dynamic> json) => LanguagePivot(
        userId: json["user_id"],
        languageId: json["language_id"],
    );

    Map<String?, dynamic> toJson() => {
        "user_id": userId,
        "language_id": languageId,
    };
}

class SpLocation {
    SpLocation({
        this.id,
        this.name,
        this.parentName,
        this.areaName,
        this.pivot,
    });

    int? id;
    String? name;
    String? parentName;
    String? areaName;
    SpLocationPivot? pivot;

    factory SpLocation.fromJson(Map<String?, dynamic> json) => SpLocation(
        id: json["id"],
        name: json["name"],
        parentName: json["parent_name"],
        areaName: json["area_name"],
        pivot: SpLocationPivot.fromJson(json["pivot"]),
    );

    Map<String?, dynamic> toJson() => {
        "id": id,
        "name": name,
        "parent_name": parentName,
        "area_name": areaName,
        "pivot": pivot!.toJson(),
    };
}

class SpLocationPivot {
    SpLocationPivot({
        this.userId,
        this.spLocationId,
    });

    int? userId;
    int? spLocationId;

    factory SpLocationPivot.fromJson(Map<String?, dynamic> json) => SpLocationPivot(
        userId: json["user_id"],
        spLocationId: json["sp_location_id"],
    );

    Map<String?, dynamic> toJson() => {
        "user_id": userId,
        "sp_location_id": spLocationId,
    };
}

enum Type { REGULAR, PLUS }

final typeValues = EnumValues({
    "Plus": Type.PLUS,
    "Regular": Type.REGULAR
});

class UserSocialAccount {
    UserSocialAccount({
        this.id,
        this.userId,
        this.socialAccountId,
        this.username,
        this.account,
    });

    int? id;
    int? userId;
    int? socialAccountId;
    String? username;
    Account? account;

    factory UserSocialAccount.fromJson(Map<String?, dynamic> json) => UserSocialAccount(
        id: json["id"],
        userId: json["user_id"],
        socialAccountId: json["social_account_id"],
        username: json["username"],
        account: Account.fromJson(json["account"]),
    );

    Map<String?, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "social_account_id": socialAccountId,
        "username": username,
        "account": account!.toJson(),
    };
}

class Account {
    Account({
        this.id,
        this.name,
    });

    int? id;
    String? name;

    factory Account.fromJson(Map<String?, dynamic> json) => Account(
        id: json["id"],
        name: json["name"],
    );

    Map<String?, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

class EnumValues<T> {
    Map<String?, T> map;
    Map<T, String?>? reverseMap;

    EnumValues(this.map);

    Map<T, String?>? get reverse {
        reverseMap ??= map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
