import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class MorestartsAuthUser {
  MorestartsAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MorestartsAuthUser> morestartsAuthUserSubject =
    BehaviorSubject.seeded(MorestartsAuthUser(loggedIn: false));
Stream<MorestartsAuthUser> morestartsAuthUserStream() =>
    morestartsAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
