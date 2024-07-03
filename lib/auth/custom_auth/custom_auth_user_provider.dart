import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class SphericaAuthUser {
  SphericaAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserMeStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SphericaAuthUser> sphericaAuthUserSubject =
    BehaviorSubject.seeded(SphericaAuthUser(loggedIn: false));
Stream<SphericaAuthUser> sphericaAuthUserStream() => sphericaAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
