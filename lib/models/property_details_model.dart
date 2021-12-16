// To parse this JSON data, do
//
//     final property = propertyFromJson(jsonString);

import 'dart:convert';

List<PropertyDetailsData> propertyDetailsFromJson(String str) => List<PropertyDetailsData>.from(json.decode(str).map((x) => PropertyDetailsData.fromJson(x)));

String propertyDetailsToJson(List<PropertyDetailsData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PropertyDetailsData {
    PropertyDetailsData({
        required this.id,
        required this.title,
        required this.slug,
        required this.reference,
        this.beds,
        this.baths,
        this.parking,
        this.buildUpArea,
        this.plotArea,
        required this.price,
        this.frequency,
        required this.propertyFor,
        required this.propertyType,
        required this.categoryName,
        this.view,
        this.isFeatured,
        this.isLuxury,
        required this.imagesPath,
        this.locName,
        this.subLocName,
        this.locAreaName,
        this.projectStatus,
        this.propertyDeveloper,
        required this.assignedToReference,
        this.residentialAmenities,
        this.residentialFeatures,
        required this.description,
    });

    int id;
    String title;
    String slug;
    String reference;
    String? beds;
    String? baths;
    int? parking;
    int? buildUpArea;
    dynamic plotArea;
    int price;
    String? frequency;
    String propertyFor;
    String propertyType;
    String categoryName;
    String? view;
    int? isFeatured;
    int? isLuxury;
    String imagesPath;
    String? locName;
    String? subLocName;
    String? locAreaName;
    String? projectStatus;
    dynamic propertyDeveloper;
    String assignedToReference;
    String? residentialAmenities;
    String? residentialFeatures;
    String description;

    factory PropertyDetailsData.fromJson(Map<String, dynamic> json) => PropertyDetailsData(
        id: json["id"],
        title: json["title"],
        slug: json["slug"],
        reference: json["reference"],
        beds: json["beds"],
        baths: json["baths"],
        parking: json["parking"],
        buildUpArea: json["build_up_area"],
        plotArea: json["plot_area"],
        price: json["price"],
        frequency: json["frequency"],
        propertyFor: json["property_for"],
        propertyType: json["property_type"],
        categoryName: json["category_name"],
        view: json["view"],
        isFeatured: json["is_featured"],
        isLuxury: json["is_luxury"],
        imagesPath: json["images_path"],
        locName: json["loc_name"],
        subLocName: json["sub_loc_name"],
        locAreaName: json["loc_area_name"],
        projectStatus: json["project_status"],
        propertyDeveloper: json["property_developer"],
        assignedToReference: json["assigned_to_reference"],
        residentialAmenities: json["residential_amenities"],
        residentialFeatures: json["residential_features"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "slug": slug,
        "reference": reference,
        "beds": beds,
        "baths": baths,
        "parking": parking,
        "build_up_area": buildUpArea,
        "plot_area": plotArea,
        "price": price,
        "frequency": frequency,
        "property_for": propertyFor,
        "property_type": propertyType,
        "category_name": categoryName,
        "view": view,
        "is_featured": isFeatured,
        "is_luxury": isLuxury,
        "images_path": imagesPath,
        "loc_name": locName,
        "sub_loc_name": subLocName,
        "loc_area_name": locAreaName,
        "project_status": projectStatus,
        "property_developer": propertyDeveloper,
        "assigned_to_reference": assignedToReference,
        "residential_amenities": residentialAmenities,
        "residential_features": residentialFeatures,
        "description": description,
    };
}
