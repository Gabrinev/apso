import 'package:apso/src/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<User> handleSignIn(String email, String password) async {


    UserCredential result = await auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = result.user!;

    assert(user != null);
    assert(await user.getIdToken() != null);

    final User currentUser = (await auth.currentUser)!;
    assert(user.uid == currentUser.uid);

    return user;
  }
}