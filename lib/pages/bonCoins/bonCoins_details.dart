import 'dart:async';

import 'package:eatexplore_adm/models/client_model.dart';
import 'package:eatexplore_adm/values/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';

class BonCoinsDetails extends StatefulWidget {
  ClientUser clients;

  BonCoinsDetails({super.key, required this.clients});

  @override
  State<BonCoinsDetails> createState() => _BonCoinsDetailsState();
}

class _BonCoinsDetailsState extends State<BonCoinsDetails> {


  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nom du BonCoin",
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.aleo(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                letterSpacing: .5),
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ///
          ///
          // Profil information
          Expanded(
            flex: 2,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Container(
                margin: const EdgeInsets.all(15),
                //  margin: EdgeInsets.only(bottom:  MediaQuery.of(context).size.height * 0.10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Photo profil
                    Container(
                      // color: Colors.white,
                      // color: Colors.orange,
                      decoration: const BoxDecoration(
                        //color: AppColors.Jaune,
                        // color: Couleurs.profil,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 4.8,
                        // width: 500,
                        // color: Colors.blue,
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius:
                                    MediaQuery.of(context).size.width * 0.25,
                                //   radius: 100.0,
                                //  backgroundImage: (userDocument[Chaine.user_imageURL] == Chaine.user_default_imageURL ) ?  AssetImage ('assets/images/photo_profil.png') : NetworkImage((userDocument![Chaine.user_imageURL])),
                                child: Icon(
                                  Icons.map,
                                  size: MediaQuery.of(context).size.width / 10,
                                  color: Colors.orange,
                                  //  color: Couleurs.corlor_app_blue_gama,
                                ))),
                      ),
                    ),

                    // User informatio
                    // - Date register
                    // - Statut connexion
                    // - Type de compte
                    Expanded(
                      //  flex: 1,
                      child: Card(
                        color: Colors.transparent,
                        shadowColor: Colors.orange,
                        // elevation: 10,
                        elevation: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 3.5,
                          // width:  (MediaQuery.of(context).size.width <= 800 ) ? MediaQuery.of(context).size.width / 2 : MediaQuery.of(context).size.width / 2,
                          decoration: const BoxDecoration(
                            // color: Couleurs.corlor_app_blue_grey_gama,
                            color: Colors.white,
                            // color: Couleurs.profil,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [

                                /// Email
                                /// Name
                                /// Auteur
                                Container(
                                  // height: MediaQuery.of(context).size.height / 3.8,
                                  // width: 500,
                                  // color: Colors.orange,
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),

                                      // User full name
                                      Text(
                                        widget.clients.name,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.abel(
                                          textStyle: const TextStyle(
                                              // color: Colors.black,
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: .5),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),

                                      // User Email
                                      Text(widget.clients.email,
                                          // "jofrey@digitalconceptcenter.com",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.abel(
                                            textStyle: const TextStyle(
                                                color: Colors.black,
                                                //color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: .5),
                                          )),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),

                                // Compte administrateur
                                Container(
                                  margin: const EdgeInsets.all(5.0),
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: const Text(
                                    "Compte administrateur",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.5,
                                    ),
                                  ),
                                ),

                                // Date d'inscription
                                Container(
                                  child: Text(
                                    "Compte créé le ${DateFormat("EEEE, dd MMMM, yyyy", Localizations.localeOf(context).languageCode).format(DateTime.fromMicrosecondsSinceEpoch(widget.clients.date_inscription.microsecondsSinceEpoch)).toString()}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),

                                /// Info compte
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  //     width: MediaQuery.of(context).size.height * 0.20,
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,

                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    //.horizontal
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 15.0, horizontal: 0.0),
                                        child: Column(
                                          children: [
                                            // Totre Info sur le compte
                                            const Text(
                                              "Information sur le compte",
                                              // Text(widget.utilisateur!.user_name,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Segoe_UI"),
                                            ),

                                            // Statut actif
                                            const Visibility(
                                              child: Padding(
                                                padding: EdgeInsets.all(5.0),
                                                child: Text(
                                                  // client
                                                  "Compte actif",
                                                  // Text(widget.utilisateur!.date_inscription,
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontFamily: "Segoe_UI"),
                                                ),
                                              ),
                                            ),

                                            // Statut
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Text(
                                                "Vu en ligne le ${DateFormat("EEEE, dd MMMM, yyyy", Localizations.localeOf(context).languageCode).format(DateTime.fromMicrosecondsSinceEpoch(widget.clients.date_laste_connexion.microsecondsSinceEpoch)).toString()} ",
                                                // Text(widget.utilisateur!.date_inscription,
                                                textAlign: TextAlign.justify,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Segoe_UI"),
                                              ),
                                            ),
                                          ],
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
                    ),

                    ///
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Connexiom
                          TextButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   PageTransition(
                                //       type: PageTransitionType.rightToLeftWithFade,
                                //       child:  ConnexionPage()
                                //     // child:  MyHomePage(title: "Login",)
                                //     // child:  LoginPage()
                                //     //   child:   Home()
                                //     // Lunch Walk
                                //     // if user auth = false
                                //     // Else lunch Hom
                                //   ),
                                // );
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(10),
                                  //  color: Colors.white,
                                  height: (MediaQuery.of(context).size.width >=
                                          800)
                                      ? MediaQuery.of(context).size.height / 15
                                      : MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                    child: Text("   Activer   ",
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                    ),
                                  ))),

                          // Inscription
                          TextButton(
                              onPressed: () {
                                // widget.PROFILE == CONSTANTE.choix_particulier ?
                                //
                                // Navigator.push(
                                //   context,
                                //   PageTransition(
                                //       type: PageTransitionType.rightToLeftWithFade,
                                //       child:  InscriptionParticulierPage()
                                //     // child:  MyHomePage(title: "Login",)
                                //     // child:  LoginPage()
                                //     //   child:   Home()
                                //     // Lunch Walk
                                //     // if user auth = false
                                //     // Else lunch Hom
                                //   ),
                                // ) :
                                // Navigator.push(
                                //   context,
                                //   PageTransition(
                                //       type: PageTransitionType.rightToLeftWithFade,
                                //       child:  InscriptionRestaurantPage()
                                //     // child:  MyHomePage(title: "Login",)
                                //     // child:  LoginPage()
                                //     //   child:   Home()
                                //     // Lunch Walk
                                //     // if user auth = false
                                //     // Else lunch Hom
                                //   ),
                                // );
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(10),
                                  //  height: MediaQuery.of(context).size.height / 8,
                                  height: (MediaQuery.of(context).size.width >=
                                          800)
                                      ? MediaQuery.of(context).size.height / 15
                                      : MediaQuery.of(context).size.height / 8,
                                  //  color: Colors.white,
                                  child: const Center(
                                    child: Text(" Désactiver ",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                    ),
                                  ))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          ///
          ///
          // Information supplementaire
          Expanded(
              flex: 4,
              child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  backgroundColor: Colors.black,
                  body: GoogleMap(
                    mapType: MapType.hybrid,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                  floatingActionButton: FloatingActionButton.extended(
                    onPressed: _goToTheLake,
                    label: const Text('To the lake!'),
                    icon: const Icon(Icons.directions_boat),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

}
