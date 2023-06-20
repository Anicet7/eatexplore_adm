
import 'package:eatexplore_adm/models/client_model.dart';
import 'package:eatexplore_adm/values/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


class RestaurantDetails extends StatefulWidget {
   ClientUser restaurants ;
   RestaurantDetails({super.key, required this.restaurants});

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compte restaurant",overflow:   TextOverflow.ellipsis,
          style: GoogleFonts.aleo(
            textStyle: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,letterSpacing: .5),
          ),),
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
          Expanded(flex: 2,child: Scaffold(
            backgroundColor: Colors.white,

            body: Container(
              margin:  const EdgeInsets.all(15),
              //  margin: EdgeInsets.only(bottom:  MediaQuery.of(context).size.height * 0.10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  // Photo profil
                  Container(
                    // color: Colors.white,
                    // color: Colors.orange,
                    decoration:const  BoxDecoration(
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
                              child: Icon(Icons.store_outlined,
                                size: MediaQuery.of(context).size.width/10,
                                color: Colors.orange,
                                //  color: Couleurs.corlor_app_blue_gama,
                              )


                          )),
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
                              Container(
                                // height: MediaQuery.of(context).size.height / 3.8,
                                // width: 500,
                                // color: Colors.orange,
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    const SizedBox(height: 10,),

                                    // User full name
                                    Text(
                                      widget.restaurants.name
                                      , textAlign: TextAlign.center,
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
                                    Text(
                                        widget.restaurants.email,
                                        // "jofrey@digitalconceptcenter.com",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.abel(
                                          textStyle: const TextStyle(
                                              color: Colors.black,
                                              //color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: .5),)),
                                    const SizedBox(
                                      height: 10,
                                    ),

                                  ],
                                ),
                              ),

                              // Compte restaurant
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.only(top: 10.0),
                                child: const Text(
                                  "Compte restaurant" ,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.5,
                                  ),
                                ),
                              ),

                              // Date d'inscription
                              Container(
                                child:  Text(
                                  "Compte créé le ${   DateFormat("EEEE, dd MMMM, yyyy",Localizations.localeOf(context).languageCode).format(DateTime.fromMicrosecondsSinceEpoch(widget.restaurants.date_inscription.microsecondsSinceEpoch)).toString()}",
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
                                height: MediaQuery.of(context).size.height * 0.30,

                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  //.horizontal
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 15.0, horizontal: 0.0),
                                      child: Column(
                                        children:  [


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
                                                // restaurant
                                                 "Compte actif" ,
                                                // Text(widget.utilisateur!.date_inscription,
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.normal,
                                                    fontFamily: "Segoe_UI"),
                                              ),
                                            ),
                                          ),


                                          // Statut
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child:  Text(
                                              "Vu en ligne le ${DateFormat("EEEE, dd MMMM, yyyy",Localizations.localeOf(context).languageCode).format(DateTime.fromMicrosecondsSinceEpoch(widget.restaurants.date_laste_connexion.microsecondsSinceEpoch)).toString()} ",
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
                                height: (MediaQuery.of(context).size.width >= 800) ? MediaQuery.of(context).size.height / 15 : MediaQuery.of(context).size.height / 8 ,
                                child:  Center(
                                  child:  Text("   Activer   ",
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
                                height: (MediaQuery.of(context).size.width >= 800) ? MediaQuery.of(context).size.height / 15 : MediaQuery.of(context).size.height / 8 ,
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
                  // Social


                ],
              ),
            ),
          ),),


          ///
          ///
          // Information supplementaire
           Expanded(flex: 4,
              child: DefaultTabController(
                length: 4, // NOMBRE DE PAGE
                child: Scaffold(
            backgroundColor: Colors.black,
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.10),
                // preferredSize: Size.fromHeight(50.0),
                child: AppBar(

                  automaticallyImplyLeading: false,
                  elevation: 0.0,
                  // backgroundColor: Colors.white,
                  // backgroundColor: Colors.black,
                  backgroundColor: Colors.transparent,
                  bottom:  TabBar(

                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0)),
                        color: Colors.white),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,

                    // unselectedLabelColor: Colors.black,
                    // labelColor: Colors.white,
                    // indicator: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(50),
                    //   //   borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    //   //  color: Colors.redAccent
                    //   //     color: Color(0xffdeca58)
                    //   //  color:  Color(0xfff4d1b6) ,
                    //   color:  Colors.blueGrey  ,
                    //   // color: Color(0xfff4d1b6)
                    //
                    // ),

                    tabs: [

                      ///
                      /// Bilan
                      ///
                      Tab(
                        child: Container(
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(50),
                          //     border: Border.all(
                          //         color: Colors.black,
                          //         width: 1
                          //     )
                          // ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text("Bilan")),
                        ),
                        //  text: "Historique",
                      ),

                      ///
                      /// Avis
                      ///

                      Tab(
                        child: Container(

                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(50),
                          //     border: Border.all(
                          //         color: Colors.black,
                          //         width: 1
                          //     )
                          // ),


                          child: Align(
                              alignment: Alignment.center,
                              child: Text("Avis")),
                        ),
                        //  text: "Bilan",
                      ),


                  ///
                  /// Commande
                  ///
                     Tab(
                        child: Container(

                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(50),
                          //     border: Border.all(
                          //         color: Colors.black,
                          //         width: 1
                          //     )
                          // ),


                          child: const Align(
                              alignment: Alignment.center,
                              child: Text("Commandes")),
                        ),
                        //  text: "Bilan",
                      ),
                      //   Tab(text: "Bilan",),




                  ///
                  /// Paiement
                  ///
                     Tab(
                        child: Container(

                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(50),
                          //     border: Border.all(
                          //         color: Colors.black,
                          //         width: 1
                          //     )
                          // ),


                          child: const Align(
                              alignment: Alignment.center,
                              child: Text("Paiement")),
                        ),
                        //  text: "Bilan",
                      ),
                      //   Tab(text: "Bilan",),



                    ],
                  ),
                ),
            ),


            body: TabBarView(
                children: [
                  Container(color: Colors.white,),
                  Container(color: Colors.white,),
                  Container(color: Colors.white,),
                  Container(color: Colors.white,),
                ],
            ),

          ),
              ))

        ],
      ),
    );
  }
}
