
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';

import '../dashboard_page.dart';
import '../responsivity/responsive_widget.dart';
import '../values/app_colors.dart';
import '../values/app_icons.dart';
import '../values/app_styles.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSignIn = false;
  String _connectEmail = "";
  String _connectPassword = "";
  bool cacher = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (ResponsiveWidget.isSmallScreen(context)) const SizedBox() else Expanded(
                    child: Container(
                      height: height,
                      color: AppColors.Jaune,
                      // color: Colors.yellowAccent,
                      // color: AppColors.mainBlueColor,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              // radius: 100,
                              radius: MediaQuery.of(context).size.height / 8,
                            //  radius: MediaQuery.of(context).size.width * 0.25,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.asset(
                                  "assets/logo/logo_wb.png",
                                  height: MediaQuery.of(context).size.height / 2,
                                  width: MediaQuery.of(context).size.width / 4,
                                ),
                              ),
                            ),
                            // Image.asset("assets/images/logo.png", height: MediaQuery.of(context).size.height /2,width: MediaQuery.of(context).size.width/4,),
                            // Icon(Icons.flutter_dash),
                            // const SizedBox(height: 10,),
                            // Text(
                            //   'Amnesty International Bénin',
                            //   style: ralewayStyle.copyWith(
                            //     fontSize: 48.0,
                            //     color: AppColors.blueDarkColor,
                            //    // color: AppColors.whiteColor,
                            //     fontWeight: FontWeight.w800,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
            Expanded(
              child: Container(
                height: height,
                margin: EdgeInsets.symmetric(
                    horizontal: ResponsiveWidget.isSmallScreen(context)
                        ? height * 0.032
                        : height * 0.12),
                color: AppColors.backColor,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.2),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: '',
                                style: ralewayStyle.copyWith(
                                  fontSize: 25.0,
                                  color: AppColors.blueDarkColor,
                                  fontWeight: FontWeight.normal,
                                )),
                            TextSpan(
                              text: ' Connectez-vous 👇',
                              style: ralewayStyle.copyWith(
                                fontWeight: FontWeight.w800,
                                color: AppColors.blueDarkColor,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        'Salut, Entrez vos coordonnées pour vous connecter \nà votre compte.',
                        style: ralewayStyle.copyWith(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                        ),
                      ),
                      SizedBox(height: height * 0.064),

                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Email',
                          style: ralewayStyle.copyWith(
                            fontSize: 12.0,
                            color: AppColors.blueDarkColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: AppColors.whiteColor,
                        ),
                        child: TextFormField(
                          style: ralewayStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueDarkColor,
                            fontSize: 12.0,
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                ((RegExp(r"^[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+([._][a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+)*@[a-zA-Z0-9]+([.-][a-zA-Z0-9]+)*\.[a-zA-Z]+")
                                        .hasMatch(_connectEmail.toString())) ==
                                    false)) {
                              return 'Veuillez entrer votre e-mail';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            _connectEmail = value;
                          },
                          onSaved: (value) {
                            _connectEmail = value!;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Image.asset(AppIcons.emailIcon),
                            ),
                            contentPadding: const EdgeInsets.only(top: 16.0),
                            hintText: "Entrez votre e-mail",
                            hintStyle: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.blueDarkColor.withOpacity(0.5),
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.014),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Mot de passe',
                          style: ralewayStyle.copyWith(
                            fontSize: 12.0,
                            color: AppColors.blueDarkColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      // Container(
                      //   height: 50.0,
                      //   width: width,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(16.0),
                      //     color: AppColors.whiteColor,
                      //   ),
                      //   child: TextFormField(
                      //
                      //     style: ralewayStyle.copyWith(
                      //       fontWeight: FontWeight.w400,
                      //       color: AppColors.blueDarkColor,
                      //       fontSize: 12.0,
                      //     ),
                      //     obscureText: cacher,
                      //    // obscureText: true,
                      //
                      //     decoration: InputDecoration(
                      //       border: InputBorder.none,
                      //       suffixIcon: IconButton(
                      //         onPressed: (){
                      //
                      //         },
                      //         icon: Image.asset(AppIcons.eyeIcon),
                      //       ),
                      //       prefixIcon: IconButton(
                      //         onPressed: (){
                      //           setState(() {
                      //             if(cacher == true) cacher = false;
                      //             else cacher = true ;
                      //
                      //           });
                      //         },
                      //         icon: Image.asset(AppIcons.lockIcon),
                      //       ),
                      //       contentPadding: const EdgeInsets.only(top: 16.0),
                      //       hintText: 'Entrez votre mot de passe',
                      //       hintStyle: ralewayStyle.copyWith(
                      //         fontWeight: FontWeight.w400,
                      //         color: AppColors.blueDarkColor.withOpacity(0.5),
                      //         fontSize: 12.0,
                      //       ),
                      //     ),
                      //
                      //     validator: (value) {
                      //       if (value == null || value!.isEmpty) {
                      //         return 'Veuillez entrer votre mot de passe';
                      //       }
                      //       return null;
                      //     },
                      //     onChanged: (value){
                      //       _connectPassword = value!;
                      //     },
                      //     onSaved: (value) {
                      //       _connectPassword = value!;
                      //     },
                      //
                      //   ),
                      // ),

                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: AppColors.whiteColor,
                        ),
                        child: TextFormField(
                          style: ralewayStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueDarkColor,
                            fontSize: 12.0,
                          ),
                          obscureText: cacher,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  cacher = !cacher;
                                });
                              },
                              icon: Icon(
                                cacher
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: AppColors.blueDarkColor.withOpacity(0.5),
                              ),
                            ),
                            prefixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  cacher = !cacher;
                                });
                              },
                              icon: Image.asset(AppIcons.lockIcon),
                            ),
                            contentPadding: const EdgeInsets.only(top: 16.0),
                            hintText: 'Entrez votre mot de passe',
                            hintStyle: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.blueDarkColor.withOpacity(0.5),
                              fontSize: 12.0,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Veuillez entrer votre mot de passe';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            _connectPassword = value;
                          },
                          onSaved: (value) {
                            _connectPassword = value!;
                          },
                        ),
                      ),

                      SizedBox(height: height * 0.03),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Mot de passe oublié ?',
                            style: ralewayStyle.copyWith(
                              fontSize: 12.0,
                              color: AppColors.mainBlueColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.05),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            //

                            if (_connectPassword.isEmpty == true ||
                                _connectEmail.isEmpty == true) {
                              Fluttertoast.showToast(
                                  msg:
                                      "Veuillez vérifier les champs indiqués en rouge et les remplir correctement",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.TOP,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.black,
                                  textColor: Colors.white,
                                  fontSize: 12.0);

                              return;
                            } else {
                              // LoginUserEmail(
                              //     email: _connectEmail,
                              //     password: _connectPassword);

                              Navigator.pushReplacement(
                                              context,
                                              PageTransition(
                                                  type: PageTransitionType.rightToLeftWithFade,
                                                  //  child:  DashboardScreen()), // REST
                                                  //  child:  HomePage()), // NO
                                                  child: DashboardPage()),
                                            );

                            }

                            ///
                            ///
                            ///
                            // setState(() {
                            //
                            // });
                          },
                          borderRadius: BorderRadius.circular(16.0),
                          child: Ink(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 70.0, vertical: 18.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: AppColors.Jaune,
                            ),
                            child: Text(
                              "S'identifier",
                              style: ralewayStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                // color: AppColors.backColor,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Future<void> LoginUserEmail(
  //     {required String email, required String password}) async {
  //   try {
  //     var userCredential = await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(
  //             //  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //             email: email.replaceAll(" ", ""),
  //             password: password)
  //         .then((value) {
  //           // Navigator.pushReplacement(
  //           //   context,
  //           //   PageTransition(
  //           //       type: PageTransitionType.rightToLeftWithFade,
  //           //       child: HomePage()),
  //           // );
  //
  //           Navigator.pushReplacement(
  //             context,
  //             PageTransition(
  //                 type: PageTransitionType.rightToLeftWithFade,
  //                 //  child:  DashboardScreen()), // REST
  //                 //  child:  HomePage()), // NO
  //                 child: DashboardPage()),
  //           );
  //
  //           // return userCredential;
  //         })
  //         .whenComplete(() => print("Terminer"))
  //         .onError((error, stackTrace) {
  //           if (error.toString() ==
  //               "[firebase_auth/invalid-email] The email address is badly formatted.") {
  //             AfficherToastErreur(message: "Adresse email incorrect.");
  //           } else if (error.toString() ==
  //               "[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.") {
  //             AfficherToastErreur(
  //                 message:
  //                     "Il n’y a pas d’enregistrement utilisateur correspondant à cet identifiant. L’utilisateur peut avoir été supprimé.");
  //           } else {
  //             AfficherToastErreur(
  //                 message: error.toString().replaceAll("firebase_auth/", ""));
  //           }
  //           print(error.toString());
  //
  //           setState(() {});
  //           isSignIn = false;
  //         });
  //   } on FirebaseAuthException catch (e) {
  //     setState(() {});
  //     isSignIn = false;
  //
  //     if (e.code == 'user-not-found') {
  //       print('No user found for that email.');
  //       AfficherToastErreur(
  //           message: "Aucun utilisateur trouvé pour cet e-mail.");
  //       isSignIn = !isSignIn;
  //     } else if (e.code == 'wrong-password') {
  //       print('Wrong password provided for that user.');
  //       AfficherToastErreur(message: "Mot de passe incorrect.");
  //       isSignIn = !isSignIn;
  //     }
  //   }
  // }

  AfficherToastErreur({required String message}) {
    Fluttertoast.showToast(
        msg: "$message",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
