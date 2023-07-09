import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DataBaseService {
  final SupabaseClient client;

  DataBaseService(this.client);
}

class AuthService {
  final SupabaseClient client;

  AuthService(this.client);

  Future<void> signInUser(String userEmail) async {
    client.auth.signInWithOtp(email: userEmail);
  }

  Future<void> verifyOtp({
    required String UserEmail,
    required String Otp,
  }) async {
    await client.auth
        .verifyOTP(token: Otp, type: OtpType.magiclink, email: UserEmail);
  }

  StreamSubscription<AuthState> ListenToAuth() {
    return client.auth.onAuthStateChange.listen((data) {
      final Session? session = data.session;
      final AuthChangeEvent event = data.event;

      switch (event) {
        case AuthChangeEvent.signedIn:
          if (session != null) {
            //user signed in
          }
          break;

        case AuthChangeEvent.signedOut:
          //user signed out
          break;
      }
    });
  }

  bool isLoggedIn() {
    return client.auth.currentSession != null;
  }

  Future<void> signOut() async {
    await client.auth.signOut();
  }
}
