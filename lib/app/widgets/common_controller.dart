import 'dart:async';

import '../helper/all_imports.dart';

class CommonController extends AnonCommonController {
  User? get user {
    User? localUser = FirebaseAuth.instance.currentUser;
    if (localUser == null) {
      logout();
    } else {
      return localUser;
    }
    return null;
  }

  Map userDetails = {};
  StreamSubscription? userStream;

  void getUserDetails() {
    userStream = FirebaseFirestore.instance
        .collection("users")
        .doc(user?.uid)
        .snapshots()
        .listen(
      (event) {
        userDetails = event.data() ?? {};
        update();
      },
    );
  }

  @override
  void onInit() {
    getUserDetails();
    super.onInit();
  }

  @override
  void dispose() {
    userStream?.cancel();
    super.dispose();
  }
}
