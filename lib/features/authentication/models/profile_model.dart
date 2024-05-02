import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';

class ProfileModel {
  late String? externalId;
  late String? address;
  late String? lastLogin;
  late String? phoneNumber;
  late int? giftcardsPurchased;
  late int? giftcardsReceived;
  late String? status;
  late String? fullName;
  late String? firstName;
  late String? lastName;
  late String? dateOfBirth;
  late String? profileId;
  late String? firebaseId;
  late int? age;
  late String? location;
  late String? gender;
  late String? nationality;
  late String? govtId;
  late String? govtIdType;
  late String? govtIdExpiryDate;
  late String? region;
  late bool? privacyPolicyConsent;
  late String? privacyPolicyConsentDate;
  late bool? termsAndConditionConsent;
  late String? termsAndConditionConsentDate;
  late bool? isAutopayOn;
  late bool? phoneNumberValidated;
  late String? email;
  late String? profilePic;
  late String? dateCreated;
  late bool isEmailVerified;
  late bool complete;

  ProfileModel({
    this.externalId,
    this.address,
    this.lastLogin,
    this.phoneNumber,
    this.giftcardsPurchased,
    this.giftcardsReceived,
    this.status,
    this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.profileId,
    this.firebaseId,
    this.age,
    this.location,
    this.gender,
    this.nationality,
    this.govtId,
    this.govtIdType,
    this.govtIdExpiryDate,
    this.region,
    this.privacyPolicyConsent,
    this.privacyPolicyConsentDate,
    this.termsAndConditionConsent,
    this.termsAndConditionConsentDate,
    this.isAutopayOn,
    this.phoneNumberValidated,
    this.email,
    this.profilePic,
    this.dateCreated,
    required this.isEmailVerified,
    required this.complete,
}) : fullName = '$firstName $lastName';
    factory ProfileModel.fromSnapshot(DataSnapshot snapshot) {
    Map<dynamic, dynamic> json = snapshot.value as Map<dynamic, dynamic>;

    return ProfileModel(
      profileId: json['profileId'] ?? '',
      dateCreated: json['dateCreated'] ?? '',
      firebaseId: json['firebaseId'] ?? '',
      dateOfBirth: json['dateOfBirth'] ?? '',
      externalId: json['externalId'] ?? '',
      giftcardsPurchased: json['giftcardsPurchased'] ?? 0,
      giftcardsReceived: json['giftcardsReceived'] ?? 0,
      lastLogin: json['lastLogin'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
      status: json['status'] ?? '',
      firstName: json['firstName'] ?? '',
      lastName: json['lastName'] ?? '',
      age: json['age'] ?? 18,
      email: json['email'] ?? '',
      address: json['address'] ?? '',
      profilePic: json['profilePic'] ?? '',
      isEmailVerified: false,
      complete: false,
    );
  }

  Map<String, dynamic> toJsonString() {
    return {
      'externalId': externalId,
      'address': address,
      'lastLogin': lastLogin,
      'phoneNumber': phoneNumber,
      'giftcardsPurchased': giftcardsPurchased,
      'giftcardsReceived': giftcardsReceived,
      'status': status,
      'fullName': fullName,
      'firstName': firstName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth,
      'profileId': profileId,
      'firebaseId': firebaseId,
      'age': age,
      'location': location,
      'gender': gender,
      'nationality': nationality,
      'govtId': govtId,
      'govtIdType': govtIdType,
      'govtIdExpiryDate': govtIdExpiryDate,
      'region': region,
      'privacyPolicyConsent': privacyPolicyConsent,
      'privacyPolicyConsentDate': privacyPolicyConsentDate,
      'termsAndConditionConsent': termsAndConditionConsent,
      'termsAndConditionConsentDate': termsAndConditionConsentDate,
      'isAutopayOn': isAutopayOn,
      'phoneNumberValidated': phoneNumberValidated,
      'email': email,
      'profilePic': profilePic,
      'dateCreated': dateCreated,
      'isEmailVerified': isEmailVerified,
      'complete': complete,
    };
  }

  String toJsonObject() {
    return jsonEncode(toJsonString());
  }

  @override
  String toString() {
    return 'ProfileModel{externalId: $externalId, address: $address, lastLogin: $lastLogin, phoneNumber: $phoneNumber, giftCardsPurchased: $giftcardsPurchased, giftCardsReceived: $giftcardsReceived, status: $status, fullName: $fullName, firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, profileId: $profileId, firebaseId: $firebaseId, age: $age, location: $location, gender: $gender, nationality: $nationality, govtId: $govtId, govtIdType: $govtIdType, govtIdExpiryDate: $govtIdExpiryDate, region: $region, privacyPolicyConsent: $privacyPolicyConsent, privacyPolicyConsentDate: $privacyPolicyConsentDate, termsAndConditionConsent: $termsAndConditionConsent, termsAndConditionConsentDate: $termsAndConditionConsentDate, isAutopayOn: $isAutopayOn, phoneNumberValidated: $phoneNumberValidated, email: $email, profilePic: $profilePic, dateCreated: $dateCreated, isEmailVerified: $isEmailVerified, complete: $complete}';
  }
}