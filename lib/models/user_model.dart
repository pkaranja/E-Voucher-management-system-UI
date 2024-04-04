import 'package:firebase_database/firebase_database.dart';

class UserModel {
  final String fullName;
  final String firstName;
  final String lastName;
  final String age;
  final String dob;
  final String email;
  final String phone;
  final String address;
  final String profilePic;
  final String uid;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.dob,
    required this.email,
    required this.phone,
    required this.address,
    required this.profilePic,
    required this.uid,
  }) : fullName = '$firstName $lastName';

  factory UserModel.fromSnapshot(DataSnapshot snapshot) {
    Map<dynamic, dynamic> json = snapshot.value as Map<dynamic, dynamic>;

    return UserModel(
      firstName: json['firstName'] ?? '',
      lastName: json['lastName'] ?? '',
      age: json['age'] ?? '',
      dob: json['dob'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      address: json['address'] ?? '',
      profilePic: json['profilePic'] ?? '',
      uid: json['uid'] ?? '',
    );
  }
}
