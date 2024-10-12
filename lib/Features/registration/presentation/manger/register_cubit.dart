import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../Config/routes/app_routes.dart';
import '../../data/UserModel.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  CollectionReference<UserModel> getUserColletion() {
    return FirebaseFirestore.instance.collection('Users').withConverter(
      fromFirestore: (snapshot, _) {
        return UserModel.fromjson(snapshot.data()!);
      },
      toFirestore: (value, options) {
        return value.Tojson();
      },
    );
  }

  singUp(
      {required String name,
      required String Email,
      required String password,
      required Function Nav}) async {
    {
      emit(SignupLoadingState());
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: Email,
        password: password,
      )
          .then(
        (userCredential) {
          UserModel user = UserModel(
              firstname: name,
              deviceToken: "",
              id: userCredential.user!.uid,
              Email: Email);
          var Collection = getUserColletion();
          var docRef = Collection.doc(userCredential.user!.uid);
          docRef.set(user);
          Nav();
          emit(SignupSuccsesState());
        },
      ).catchError((e) {
        if (e.code == 'weak-password') {
          if (kDebugMode) {
            print('The password provided is too weak.');
          }
        } else if (e.code == 'email-already-in-use') {
          if (kDebugMode) {
            print('The account already exists for that email.');
          }
        }
        emit(SignupErrorState(e.toString()));
      });
    }
  }

   Future<UserCredential> signInWithGoogle(BuildContext context) async {
    emit(SignupWithGmailLoadingState());
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // Once signed in, return the UserCredential
    emit(SignupWithGmailSuccsesState());
    Navigator.pushNamed(context, AppRoutesName.homelayout,);
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  login(
  {
  required String emailAddress,required String password,required BuildContext context} ) async {
    emit(LoadingLoginState());
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: emailAddress, password: password)
        .then((credential) async {
        Navigator.pushNamedAndRemoveUntil(
            context, AppRoutesName.homelayout, (route) => false);
      emit(SuccsesLoginState());
    }).catchError((e) {
      emit(ErrorLoginState(e.toString()));
      if (e.code == 'user-not-found') {
        if (kDebugMode) {
          print('No user found for that email.');
        }
      } else if (e.code == 'wrong-password') {
        if (kDebugMode) {
          print('Wrong password provided for that user.');
        }
      }
    });}
}
