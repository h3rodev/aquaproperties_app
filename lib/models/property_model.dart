// To parse this JSON data, do
//
//     final property = propertyFromJson(jsonString?);

import 'dart:convert';

List<Property> propertyFromJson(String? str) =>
    List<Property>.from(json.decode(str!).map((x) => Property.fromJson(x)));

String? propertyToJson(List<Property> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Property {
  Property({
    this.id,
    this.createdById,
    this.portalStatus,
    this.reference,
    this.beds,
    this.baths,
    this.title,
    this.description,
    this.communityDescription,
    this.slug,
    this.propertyFor,
    this.propertyType,
    this.permitNo,
    this.buildUpArea,
    this.plotArea,
    this.view,
    this.furnished,
    this.parking,
    this.price,
    this.frequency,
    this.cheques,
    this.isFeatured,
    this.isLuxury,
    this.isLatest,
    this.isManaged,
    this.isExclusive,
    this.isPremium,
    this.completionStatus,
    this.completionDate,
    this.constructionStatus,
    this.paymentPlan,
    this.createdAt,
    this.propertyDeveloper,
    this.propertyOwnership,
    this.occupancy,
    this.projectStatus,
    this.updatedAt,
    this.createdByFullName,
    this.createdByEmail,
    this.createdByMobile,
    this.assignedToReference,
    this.assignedToJobTitle,
    this.assignedToProfilePictureUrl,
    this.categoryName,
    this.countryName,
    this.cityName,
    this.communityId,
    this.locName,
    this.locAreaName,
    this.locLatitude,
    this.locLongitude,
    this.subLocName,
    this.statusName,
    this.imagesPath,
    this.commercialFeatures,
    this.residentialFeatures,
    this.commercialAmenities,
    this.residentialAmenities,
    this.videoUrl,
    this.brochureUrl,
  });

  int? id;
  int? createdById;
  String? portalStatus;
  String? reference;
  String? beds;
  String? baths;
  String? title;
  String? description;
  dynamic communityDescription;
  String? slug;
  String? propertyFor;
  String? propertyType;
  int? permitNo;
  int? buildUpArea;
  dynamic plotArea;
  String? view;
  String? furnished;
  int? parking;
  int? price;
  String? frequency;
  dynamic cheques;
  int? isFeatured;
  int? isLuxury;
  dynamic isLatest;
  int? isManaged;
  int? isExclusive;
  int? isPremium;
  dynamic completionStatus;
  dynamic completionDate;
  dynamic constructionStatus;
  dynamic paymentPlan;
  DateTime? createdAt;
  String? propertyDeveloper;
  dynamic propertyOwnership;
  dynamic occupancy;
  dynamic projectStatus;
  DateTime? updatedAt;
  String? createdByFullName;
  String? createdByEmail;
  String? createdByMobile;
  String? assignedToReference;
  String? assignedToJobTitle;
  String? assignedToProfilePictureUrl;
  String? categoryName;
  String? countryName;
  String? cityName;
  dynamic communityId;
  String? locName;
  String? locAreaName;
  double? locLatitude;
  double? locLongitude;
  String? subLocName;
  String? statusName;
  String? imagesPath;
  String? commercialFeatures;
  String? residentialFeatures;
  String? commercialAmenities;
  String? residentialAmenities;
  dynamic videoUrl;
  String? brochureUrl;

  Property copyWith({
    int? id,
    int? createdById,
    String? portalStatus,
    String? reference,
    String? beds,
    String? baths,
    String? title,
    String? description,
    dynamic communityDescription,
    String? slug,
    String? propertyFor,
    String? propertyType,
    int? permitNo,
    int? buildUpArea,
    dynamic plotArea,
    String? view,
    String? furnished,
    int? parking,
    int? price,
    String? frequency,
    dynamic cheques,
    int? isFeatured,
    int? isLuxury,
    dynamic isLatest,
    int? isManaged,
    int? isExclusive,
    int? isPremium,
    dynamic completionStatus,
    dynamic completionDate,
    dynamic constructionStatus,
    dynamic paymentPlan,
    DateTime? createdAt,
    String? propertyDeveloper,
    dynamic propertyOwnership,
    dynamic occupancy,
    dynamic projectStatus,
    DateTime? updatedAt,
    String? createdByFullName,
    String? createdByEmail,
    String? createdByMobile,
    String? assignedToReference,
    String? assignedToJobTitle,
    String? assignedToProfilePictureUrl,
    String? categoryName,
    String? countryName,
    String? cityName,
    dynamic communityId,
    String? locName,
    String? locAreaName,
    double? locLatitude,
    double? locLongitude,
    String? subLocName,
    String? statusName,
    String? imagesPath,
    String? commercialFeatures,
    String? residentialFeatures,
    String? commercialAmenities,
    String? residentialAmenities,
    dynamic videoUrl,
    String? brochureUrl,
  }) =>
      Property(
        id: id,
        createdById: createdById,
        portalStatus: portalStatus,
        reference: reference,
        beds: beds,
        baths: baths,
        title: title,
        description: description,
        communityDescription: communityDescription ?? this.communityDescription,
        slug: slug,
        propertyFor: propertyFor,
        propertyType: propertyType,
        permitNo: permitNo,
        buildUpArea: buildUpArea,
        plotArea: plotArea ?? this.plotArea,
        view: view,
        furnished: furnished,
        parking: parking,
        price: price,
        frequency: frequency,
        cheques: cheques ?? this.cheques,
        isFeatured: isFeatured,
        isLuxury: isLuxury,
        isLatest: isLatest ?? this.isLatest,
        isManaged: isManaged,
        isExclusive: isExclusive,
        isPremium: isPremium,
        completionStatus: completionStatus ?? this.completionStatus,
        completionDate: completionDate ?? this.completionDate,
        constructionStatus: constructionStatus ?? this.constructionStatus,
        paymentPlan: paymentPlan ?? this.paymentPlan,
        createdAt: createdAt,
        propertyDeveloper: propertyDeveloper,
        propertyOwnership: propertyOwnership ?? this.propertyOwnership,
        occupancy: occupancy ?? this.occupancy,
        projectStatus: projectStatus ?? this.projectStatus,
        updatedAt: updatedAt,
        createdByFullName: createdByFullName,
        createdByEmail: createdByEmail,
        createdByMobile: createdByMobile,
        assignedToReference: assignedToReference,
        assignedToJobTitle: assignedToJobTitle,
        assignedToProfilePictureUrl: assignedToProfilePictureUrl,
        categoryName: categoryName,
        countryName: countryName,
        cityName: cityName,
        communityId: communityId ?? this.communityId,
        locName: locName,
        locAreaName: locAreaName,
        locLatitude: locLatitude,
        locLongitude: locLongitude,
        subLocName: subLocName,
        statusName: statusName,
        imagesPath: imagesPath,
        commercialFeatures: commercialFeatures,
        residentialFeatures: residentialFeatures,
        commercialAmenities: commercialAmenities,
        residentialAmenities: residentialAmenities,
        videoUrl: videoUrl ?? this.videoUrl,
        brochureUrl: brochureUrl,
      );

  factory Property.fromJson(Map<String?, dynamic> json) => Property(
        id: json["id"],
        createdById: json["created_by_id"],
        portalStatus: json["portal_status"],
        reference: json["reference"],
        beds: json["beds"],
        baths: json["baths"],
        title: json["title"],
        description: json["description"],
        communityDescription: json["community_description"],
        slug: json["slug"],
        propertyFor: json["property_for"],
        propertyType: json["property_type"],
        permitNo: json["permit_no"],
        buildUpArea: json["build_up_area"],
        plotArea: json["plot_area"],
        view: json["view"],
        furnished: json["furnished"],
        parking: json["parking"],
        price: json["price"],
        frequency: json["frequency"],
        cheques: json["cheques"],
        isFeatured: json["is_featured"],
        isLuxury: json["is_luxury"],
        isLatest: json["is_latest"],
        isManaged: json["is_managed"],
        isExclusive: json["is_exclusive"],
        isPremium: json["is_premium"],
        completionStatus: json["completion_status"],
        completionDate: json["completion_date"],
        constructionStatus: json["construction_status"],
        paymentPlan: json["payment_plan"],
        createdAt: DateTime?.parse(json["created_at"]),
        propertyDeveloper: json["property_developer"],
        propertyOwnership: json["property_ownership"],
        occupancy: json["occupancy"],
        projectStatus: json["project_status"],
        updatedAt: DateTime?.parse(json["updated_at"]),
        createdByFullName: json["created_by_full_name"],
        createdByEmail: json["created_by_email"],
        createdByMobile: json["created_by_mobile"],
        assignedToReference: json["assigned_to_reference"],
        assignedToJobTitle: json["assigned_to_job_title"],
        assignedToProfilePictureUrl: json["assigned_to_profile_picture_url"],
        categoryName: json["category_name"],
        countryName: json["country_name"],
        cityName: json["city_name"],
        communityId: json["community_id"],
        locName: json["loc_name"],
        locAreaName: json["loc_area_name"],
        locLatitude: json["loc_latitude"].toDouble(),
        locLongitude: json["loc_longitude"].toDouble(),
        subLocName: json["sub_loc_name"],
        statusName: json["status_name"],
        imagesPath: json["images_path"],
        commercialFeatures: json["commercial_features"],
        residentialFeatures: json["residential_features"],
        commercialAmenities: json["commercial_amenities"],
        residentialAmenities: json["residential_amenities"],
        videoUrl: json["video_url"],
        brochureUrl: json["brochure_url"],
      );

  Map<String?, dynamic> toJson() => {
        "id": id,
        "created_by_id": createdById,
        "portal_status": portalStatus,
        "reference": reference,
        "beds": beds,
        "baths": baths,
        "title": title,
        "description": description,
        "community_description": communityDescription,
        "slug": slug,
        "property_for": propertyFor,
        "property_type": propertyType,
        "permit_no": permitNo,
        "build_up_area": buildUpArea,
        "plot_area": plotArea,
        "view": view,
        "furnished": furnished,
        "parking": parking,
        "price": price,
        "frequency": frequency,
        "cheques": cheques,
        "is_featured": isFeatured,
        "is_luxury": isLuxury,
        "is_latest": isLatest,
        "is_managed": isManaged,
        "is_exclusive": isExclusive,
        "is_premium": isPremium,
        "completion_status": completionStatus,
        "completion_date": completionDate,
        "construction_status": constructionStatus,
        "payment_plan": paymentPlan,
        "created_at": createdAt!.toIso8601String(),
        "property_developer": propertyDeveloper,
        "property_ownership": propertyOwnership,
        "occupancy": occupancy,
        "project_status": projectStatus,
        "updated_at": updatedAt!.toIso8601String(),
        "created_by_full_name": createdByFullName,
        "created_by_email": createdByEmail,
        "created_by_mobile": createdByMobile,
        "assigned_to_reference": assignedToReference,
        "assigned_to_job_title": assignedToJobTitle,
        "assigned_to_profile_picture_url": assignedToProfilePictureUrl,
        "category_name": categoryName,
        "country_name": countryName,
        "city_name": cityName,
        "community_id": communityId,
        "loc_name": locName,
        "loc_area_name": locAreaName,
        "loc_latitude": locLatitude,
        "loc_longitude": locLongitude,
        "sub_loc_name": subLocName,
        "status_name": statusName,
        "images_path": imagesPath,
        "commercial_features": commercialFeatures,
        "residential_features": residentialFeatures,
        "commercial_amenities": commercialAmenities,
        "residential_amenities": residentialAmenities,
        "video_url": videoUrl,
        "brochure_url": brochureUrl,
      };
}
