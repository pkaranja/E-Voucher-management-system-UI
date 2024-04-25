import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zawadi/core/config/constants.dart';
import 'package:zawadi/global/styles/app_colors.dart';

import '../global/rgb_to_radix.dart';

class IssuersModel {
  String id;
  String name;
  String email;
  String phone;
  String? website;
  String? address;
  int hits;
  String logo;
  String? facebook;
  String? instagram;
  Color primaryColor;
  Color secondaryColor;
  Color primaryFontColor;
  Color secondaryFontColor;
  String? description;
  double? minAmount;
  double? maxAmount;
  bool popular;
  bool featured;
  ActiveStatus status;

  IssuersModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.hits,
    required this.logo,
    required this.minAmount,
    required this.maxAmount,
    required this.popular,
    required this.featured,
    required this.status,
    // Optional fields with default values
    this.facebook = '',
    this.instagram = '',
    this.website = '',
    this.address = '',
    this.primaryColor = Colors.black,
    this.secondaryColor = Colors.white,
    this.primaryFontColor = Colors.black,
    this.secondaryFontColor = themeExtraDarkGreyColor,
    this.description = '',
  });

  factory IssuersModel.fromJson(Map<String, dynamic> json) {
    return IssuersModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      hits: json['hits'],
      logo: json['logo'],
      minAmount: double.tryParse(json['minAmount'] ?? 0.0),
      maxAmount: double.tryParse(json['maxAmount'] ?? 0.0),
      popular: json['popular'],
      featured: json['featured'],
      status: parseActiveStatus(json['status']),
      facebook: json['facebook'],
      instagram: json['instagram'],
      website: json['website'],
      address: json['address'] as String,
      primaryColor: parseColor(json['primaryColor'] ?? '000000'),
      secondaryColor: parseColor(json['secondaryColor'] ?? 'FFFFFF'),
      primaryFontColor: parseColor(json['primaryFontColor'] ?? '000000'),
      secondaryFontColor: parseColor(json['secondaryFontColor'] ?? '9FA6B6'),
      description: json['description'],
    );
  }

  @override
  String toString() {
    return 'IssuersModel{id: $id, name: $name, email: $email, phone: $phone, website: $website, address: $address, hits: $hits, logo: $logo, facebook: $facebook, instagram: $instagram, primaryColor: $primaryColor, secondaryColor: $secondaryColor, primaryFontColor: $primaryFontColor, secondaryFontColor: $secondaryFontColor, description: $description, minAmount: $minAmount, maxAmount: $maxAmount, popular: $popular, featured: $featured, status: $status}';
  }
}
