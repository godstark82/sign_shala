import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:sign_shala/core/constants/login_const.dart';
import 'package:sign_shala/features/login/data/models/user_model.dart';

class LoginService {
  Future<void> _updateLoginDetailsInHive() async {
    await Hive.box('config').put('isLoggedIn', LoginConst.isLoggedIn);
    await Hive.box('config').put('accessToken', LoginConst.accessToken ?? '');
    await Hive.box('config').put('idToken', LoginConst.idToken ?? '');
  }

  Future<UserModel?> signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final userCreds =
          await FirebaseAuth.instance.signInWithCredential(credential);

      if (kDebugMode) {
        print(userCreds.user?.displayName);
      }
      LoginConst.isLoggedIn = true;
      LoginConst.accessToken = userCreds.credential?.accessToken;
      LoginConst.idToken = userCreds.credential?.token.toString();

      await _updateLoginDetailsInHive();

      return UserModel(
          accessToken: userCreds.credential?.accessToken,
          displayName: userCreds.user?.displayName,
          email: userCreds.user?.displayName,
          idToken: userCreds.credential?.token.toString(),
          photoURL: userCreds.user?.photoURL);
    } catch (e) {
      LoginConst.isLoggedIn = false;
      LoginConst.accessToken = null;
      LoginConst.idToken = null;
      debugPrint(e.toString());
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      LoginConst.isLoggedIn = false;
      LoginConst.accessToken = null;
      LoginConst.idToken = null;

      await _updateLoginDetailsInHive();
    } catch (e) {
      //
      debugPrint(e.toString());
    }
  }
}
