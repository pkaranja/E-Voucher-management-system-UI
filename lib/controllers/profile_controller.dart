import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:zawadi/controllers/apiRequests.dart';
import 'package:zawadi/global/styles/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../global/handlers/error_handler.dart';
import '../models/profile_model.dart';
import '../models/user_model.dart';

class ProfileController with ChangeNotifier {
  DatabaseReference dbref = FirebaseDatabase.instance.ref().child('Users');
  FirebaseStorage storage = FirebaseStorage.instance;
  final user = FirebaseAuth.instance.currentUser!;
  final picker = ImagePicker();

  XFile? _image;
  XFile? get image => _image;

  Future pickGalleryImage(BuildContext context) async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 100);

    if (pickedFile != null) {
      _image = XFile(pickedFile.path);
      uploadImage();
      notifyListeners();
    }
  }

  Future pickCameraImage(BuildContext context) async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.camera, imageQuality: 100);

    if (pickedFile != null) {
      _image = XFile(pickedFile.path);
      uploadImage();
      notifyListeners();
    }
  }

  void pickImage(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SizedBox(
              height: 120,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      pickCameraImage(context);
                      Navigator.pop(context);
                    },
                    leading: const Icon(
                      Icons.camera,
                      color: kGreenColor,
                    ),
                    title: const Text('Camera'),
                  ),
                  ListTile(
                    onTap: () {
                      pickGalleryImage(context);
                      Navigator.pop(context);
                    },
                    leading: const Icon(
                      Icons.image,
                      color: kGreenColor,
                    ),
                    title: const Text('Gallery'),
                  )
                ],
              ),
            ),
          );
        });
  }

  void uploadImage() async {
    Reference ref = storage.ref('/profileImage${user.uid}');
    UploadTask uploadTask = ref.putFile(File(_image!.path));

    await Future.value(uploadTask);
    final newUrl = await ref.getDownloadURL();

    dbref
        .child(user.uid)
        .update({'profilePic': newUrl.toString()}).then((value) {});
  }

  //Generate logged in user profile
  Future<ProfileModel> getUserProfile() async {
    try {
      final userUid = user.uid;

      // Fetch firebase data
      DatabaseEvent userDataEvent = await dbref.child(userUid).once();
      if (userDataEvent.snapshot.value != null) {
        ProfileModel profileModel = ProfileModel.fromSnapshot(userDataEvent.snapshot);
        profileModel.isEmailVerified = user.emailVerified;
        profileModel.profilePic = user.photoURL ?? '';
        profileModel.firebaseId = userUid;

        // Fetch user data from API concurrently
        final apiResponseData = ApiRequests().fetchProfile(userUid);
        final Map<String, dynamic> responseData = await apiResponseData;

        // Combine profile data
        profileModel.complete = true;
        profileModel.profileId = responseData['id'];
        profileModel.phoneNumber = responseData['phoneNumber'];
        profileModel.dateOfBirth = responseData['dateOfBirth'];
        profileModel.address = responseData['address'];
        profileModel.lastLogin = responseData['lastLogin'];
        profileModel.externalId = responseData['externalId'];
        profileModel.giftcardsPurchased = responseData['giftcardsPurchased'];
        profileModel.giftcardsReceived = responseData['giftcardsReceived'];
        profileModel.status = responseData['status'];

        // Save Profile object to preferences
        await saveProfileToPreferences(profileModel);

        return profileModel;
      }
    } catch (e) {
      handleError(e, 'Error fetching user profile');
    }

    return ProfileModel(complete: false, isEmailVerified: false);
  }

  Future<void> saveProfileToPreferences(ProfileModel profileModel) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setString('profileId', profileModel.profileId!);
      await prefs.setString('firebaseId', profileModel.firebaseId!);
      await prefs.setString('fullName', profileModel.fullName!);
      await prefs.setString('firstName', profileModel.firstName!);
      await prefs.setString('lastName', profileModel.lastName!);
      await prefs.setInt('age', profileModel.age!);
      await prefs.setString('email', profileModel.email!);
      await prefs.setString('address', profileModel.address!);
      await prefs.setString('profilePic', profileModel.profilePic!);
      await prefs.setString('dateCreated', profileModel.dateCreated!);
      await prefs.setString('dateOfBirth', profileModel.dateOfBirth!);
      await prefs.setString('externalId', profileModel.externalId!);
      await prefs.setInt('giftcardsPurchased', profileModel.giftcardsPurchased!);
      await prefs.setInt('giftcardsReceived', profileModel.giftcardsReceived!);
      await prefs.setString('lastLogin', profileModel.lastLogin!);
      await prefs.setString('phoneNumber', profileModel.phoneNumber!);
      await prefs.setString('status', profileModel.status!);
      await prefs.setBool('isEmailVerified', profileModel.isEmailVerified);
      await prefs.setBool('complete', profileModel.complete);

    } catch (e) {
      handleError(e, 'Error saving profile to preferences');
    }
  }

  Future<void> getProfileFromPreferences() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.getString('profileId');
      await prefs.getString('firebaseId');
      await prefs.getString('fullName');
      await prefs.getString('firstName');
      await prefs.getString('lastName');
      await prefs.getInt('age');
      await prefs.getString('email');
      await prefs.getString('address');
      await prefs.getString('profilePic');
      await prefs.getString('dateCreated');
      await prefs.getString('dateOfBirth');
      await prefs.getString('externalId');
      await prefs.getInt('giftcardsPurchased');
      await prefs.getInt('giftcardsReceived');
      await prefs.getString('lastLogin');
      await prefs.getString('phoneNumber');
      await prefs.getString('status');
      await prefs.getBool('isEmailVerified');
      await prefs.getBool('complete');

    } catch (e) {
      handleError(e, 'Error saving profile to preferences');
    }
  }

  Future<UserModel?> getUserData() async {
    try {
      DatabaseEvent userDataEvent = await dbref.child(user.uid).once();
      if (userDataEvent.snapshot.value != null) {
        return UserModel.fromSnapshot(userDataEvent.snapshot);
      } else {
        return null;
      }
    } catch (e) {
      print('Error fetching user data: $e');
      return null;
    }
  }
}
