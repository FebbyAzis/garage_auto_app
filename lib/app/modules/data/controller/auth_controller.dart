import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:garage_auto/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController{
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  UserCredential? _userCredential;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController searchFriendsController;
  static AuthController instance = Get.find();

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  void signup() {}
  void login(String email, String password) async {
    try{
      await auth.signInWithEmailAndPassword(
        email: email, 
        password: password);
        Get.offAllNamed(Routes.HOME);
    }on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found'){
        print("No user found for that email");
      }else if (e.code == 'wrong-password') {
        print("Wrong Password provided for that user");
      }
    }
  }
  void logout() async{ 
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }

 Future<void> signInWithGoogle() async {
//   // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

print(googleUser!.email);
  // Once signed in, return the UserCredential
   await auth
  .signInWithCredential(credential)
  .then((value) =>_userCredential = value);

  // firebase

//   CollectionReference users = firestore.collection('users');
// final cekUsers = await users.doc(googleUser.email).get();
// if (!cekUsers.exists) {
//   users.doc(googleUser.email).set({
//     'uid':_userCredential!.user!.uid,   
//     'name':googleUser.displayName,
//     'email':googleUser.email,
//     'photo':googleUser.photoUrl,
//     'createdAt': _userCredential!.user!.metadata.creationTime.toString(),
//     'lastLoginAt':
//     _userCredential!.user!.metadata.lastSignInTime.toString(),
//    // 'list_cari': [A,AZ,AZI,AZIS]
//   }).then((value) async {
//     String temp = '';
//     try {
//       for (var i = 0; i < googleUser.displayName!.length; i++) {
//         temp = temp + googleUser.displayName![i];
//         await users.doc(googleUser.email).set({
//           'list_cari': FieldValue.arrayUnion([temp.toUpperCase()])
//         }, SetOptions(merge: true));
//       }
//     } catch (e) {
//       print(e);
      
//     }
//   });
  
// } else{
//   users.doc(googleUser.email).update({
//     'lastLoginAt':
//     _userCredential!.user!.metadata.lastSignInTime.toString(),

//   });
// }

// if (googleUser == "febbyazis70@gmail.com"){
//   Get.off(HomeadminView());
// } else {
//   Get.off(HomeView());
// }



Get.offAllNamed(Routes.HOME);
}

}









































//import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:garage_auto/app/modules/home/views/home_view.dart';
// import 'package:garage_auto/app/modules/admin/homeadmin/views/homeadmin_view.dart';
// import 'package:garage_auto/app/modules/login/views/login_view.dart';
// import 'package:garage_auto/app/routes/app_pages.dart';
// import 'package:garage_auto/utils/style/global.colors.dart';
// import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class AuthController extends GetxController {
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   FirebaseAuth auth = FirebaseAuth.instance;
//   UserCredential? _userCredential;
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   late TextEditingController searchFriendsController;
//   static AuthController instance = Get.find();
//   // get user => _auth.currentUser;
//   // email, password ...
//   // late Rx<User?> _user;
// String email = "";
// String password = "";
  

//    @override

// // void onReady() {
// //     super.onReady();
// //     _user = Rx<User?>(auth.currentUser);
// //     // Our user would be notified
// //     _user.bindStream(auth.userChanges());
// //     ever(_user, _initialScreen);
// //   }

// //   _initialScreen(User? user) {
// //     if (user == null) {
// //       print("Login Page");
// //       Get.offAll(
// //         () => LoginView(),
// //       );
// //     } else {
// //       Get.offAll(
// //         () => HomeView(
// //           email: user.email!,
// //         ),
// //       );
// //     }
// //   }

// //   void register(String email, password) async {
// //     try {
// //       await auth.createUserWithEmailAndPassword(
// //           email: email, password: password);
// //     } catch (e) {
// //       Get.snackbar(
// //         "About User",
// //         "User Message",
// //         backgroundColor: AppColors.danger,
// //         snackPosition: SnackPosition.BOTTOM,
// //         titleText: const Text(
// //           "Account Creation Failed",
// //           style: TextStyle(color: Colors.white),
// //         ),
// //         messageText: Text(
// //           e.toString(),
// //           style: const TextStyle(color: Colors.white),
// //         ),
// //       );
// //       print(e);
// //     }
// //   }

// //   void login(String email, password) async {
// //     try {
// //       await auth.signInWithEmailAndPassword(email: email, password: password);
// //     } catch (e) {
// //       Get.snackbar(
// //         "About Login",
// //         "Login Message",
// //         backgroundColor: AppColors.danger,
// //         snackPosition: SnackPosition.TOP,
// //         titleText: const Text(
// //           "Login Failed",
// //           style: TextStyle(color: Colors.white),
// //         ),
// //         messageText: Text(
// //           e.toString(),
// //           style: const TextStyle(color: Colors.white),
// //         ),
// //       );
// //       print(e);
// //     }
// //   }

// //   void logOut() async {
// //     await auth.signOut();
// //   }

//   void onInit() {
//     super.onInit();
//     searchFriendsController = TextEditingController();
//   }

//   // @override
//   // void onReady() {
//   //   super.onReady();
//   // }

//   @override
//   void onClose() {
//     super.onClose();
//     searchFriendsController.dispose();
//      }

//   Future<void> signInWithGoogle() async {
//   // Trigger the authentication flow
//   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//   // Obtain the auth details from the request
//   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

//   // Create a new credential
//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth?.accessToken,
//     idToken: googleAuth?.idToken,
//   );

// print(googleUser!.email);
//   // Once signed in, return the UserCredential
//    await auth
//   .signInWithCredential(credential)
//   .then((value) =>_userCredential = value);

//   // firebase

// //   CollectionReference users = firestore.collection('users');
// // final cekUsers = await users.doc(googleUser.email).get();
// // if (!cekUsers.exists) {
// //   users.doc(googleUser.email).set({
// //     'uid':_userCredential!.user!.uid,   
// //     'name':googleUser.displayName,
// //     'email':googleUser.email,
// //     'photo':googleUser.photoUrl,
// //     'createdAt': _userCredential!.user!.metadata.creationTime.toString(),
// //     'lastLoginAt':
// //     _userCredential!.user!.metadata.lastSignInTime.toString(),
// //    // 'list_cari': [A,AZ,AZI,AZIS]
// //   }).then((value) async {
// //     String temp = '';
// //     try {
// //       for (var i = 0; i < googleUser.displayName!.length; i++) {
// //         temp = temp + googleUser.displayName![i];
// //         await users.doc(googleUser.email).set({
// //           'list_cari': FieldValue.arrayUnion([temp.toUpperCase()])
// //         }, SetOptions(merge: true));
// //       }
// //     } catch (e) {
// //       print(e);
      
// //     }
// //   });
  
// // } else{
// //   users.doc(googleUser.email).update({
// //     'lastLoginAt':
// //     _userCredential!.user!.metadata.lastSignInTime.toString(),

// //   });
// // }

// // if (googleUser == "febbyazis70@gmail.com"){
// //   Get.off(HomeadminView());
// // } else {
// //   Get.off(HomeView());
// // }



// Get.offAllNamed(Routes.HOME);
// }
// doLOGIN() async{
//   try {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: email, 
//       password: password
//       );

//       Get.off(HomeView());
//   }on Exception catch (_) {
//     Get.snackbar("Error", "Your request failed");
//   }
// }


// Future logout() async {
//   await FirebaseAuth.instance.signOut();
//   await GoogleSignIn().signOut();
//   Get.offAllNamed(Routes.LOGIN);
// }

// // var kataCari = [].obs;
// // var hasilPencarian = [].obs;
// // void searchFriend(String keyword) async{
// // CollectionReference users = firestore.collection('users');

//   // if (keyword.isNotEmpty) {
//   //  final hasilQuery =  await users
//   //  .where('list_cari', arrayContains: keyword.toUpperCase())
//   //  .get();
//   //  if (hasilQuery.docs.isNotEmpty) {
//   //    for (var i = 0; i < hasilQuery.docs.length; i++) {
//   //     kataCari.add(hasilQuery.docs[i].data() as Map<String, dynamic>);
       
//   //    }
//   //  }

// //    if (kataCari.isNotEmpty) {
// //     hasilPencarian.value = [];
// //     kataCari.forEach((element) {
// //       print(element);
// //       hasilPencarian.add(element);
// //     });
// //     kataCari.clear();
     
// //    }
// //   } else{
// //     kataCari.value = [];
// //     hasilPencarian.value = [];
// //   }
// //   kataCari.refresh();
// //   hasilPencarian.refresh();
// // }
// // void addFriends(String_emailFriends) async { 
// //   CollectionReference friends = firestore.collection('friends');

// //   final cekFriends = await friends.doc(auth.currentUser!.email).get();
// //   //cek data ada atau tidak
// //   if (cekFriends.data() == null) {
// //     await friends.doc(auth.currentUser!.email).set({
// //       'emailMe': auth.currentUser!.email,
// //       'emailFriends': [String_emailFriends],
// //     }).whenComplete(() => Get.snackbar("Friends", "Friends successfully added"));
// //   }else{
// //     await friends.doc(auth.currentUser!.email).set({
// //       'emailFriends': FieldValue.arrayUnion([String_emailFriends]),
// //     }, SetOptions(merge: true)).whenComplete(
// //       () => Get.snackbar("Friends", "Friends successfully added"));
// //   }
// //   kataCari.clear();
// //   hasilPencarian.clear();
// //   searchFriendsController.dispose();
// //   Get.back();
// // }
// // Future <QuerySnapshot<Map<String,dynamic>>> getPeople()async{
// //   CollectionReference users = firestore.collection('users');

// //   return;  
// // }
// }