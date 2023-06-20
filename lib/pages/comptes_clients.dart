import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';

import '../models/client_model.dart';
import '../values/app_colors.dart';
import 'clients/clients_details.dart';

class ComptesClient extends StatefulWidget {
  const ComptesClient({super.key});

  @override
  State<ComptesClient> createState() => _ComptesClientState();
}

class _ComptesClientState extends State<ComptesClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // margin: EdgeInsets.only(bottom:  MediaQuery.of(context).size.height * 0.10),
        child: Column(
          children: [
            //  information
            Expanded(
              flex: 9,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  // color: Colors.red,
                  //    color:  Color(0xfffdb681) ,
                  // color:  Colors.blueGrey ,
                  //  color:  Color(0xfff4d1b6) ,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Bienvenue
                      Container(
                        // width: MediaQuery.of(context).size.width/2,
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, top: 20.0, bottom: 00.0),
                        child: SingleChildScrollView(
                          // scrollDirection: Axis.horizontal,
                          child: Row(
                            // mainAxisSize: MainAxisSize.max,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            //  mainAxisAlignment: MainAxisAlignment.center,
                            //  crossAxisAlignment: CrossAxisAlignment.center,
                            //  crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Gestion des comptes clients",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.aleo(
                                      textStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 26,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: .5),
                                    ),
                                  )),
                              // Align(alignment: Alignment.centerRight,child:  Image.asset("assets/logo/logo.png",  height: 100,),),
                            ],
                          ),
                        ),
                      ),

                      ///
                      ///
                      ///

                      // Statistique comptes
                      Visibility(
                        // visible: (currentUser?.statut_admin == true) || ( (currentUser != null) ?  (currentUser!.type_compte >= 3) : ( (currentUser?.type_compte ?? 2) >= 3)  ) ,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Comptes totale
                              SizedBox(
                                width: (MediaQuery.of(context).size.width <= 800 ) ? 280 : MediaQuery.of(context).size.width / 4.6,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    //  color: Couleurs.corlor_app_blue_gama,
                                    // color: Couleurs.corlor_app_blue_d2a,
                                    color: Colors.orange.withOpacity(0.8),
                                    elevation: 20,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: SizedBox(
                                      // width: 320,
                                      width: MediaQuery.of(context).size.width /
                                          04.5,
                                      child: ListTile(
                                        //leading: Icon(Icons.sell),
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   PageTransition(
                                          //       isIos: true,
                                          //       type: PageTransitionType
                                          //           .rightToLeft,
                                          //       child: ListeRDVEnAttente(
                                          //           currentUser: currentUser),
                                          //       inheritTheme: true,
                                          //       ctx: context),
                                          // );
                                        },
                                        title: const Text(
                                          "Comptes clients",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        subtitle: const Text(
                                          "Utilisateurs enregistrés",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        ),
                                        trailing: Chip(
                                          backgroundColor: Colors.black,
                                          label: Text(
                                            100.toStringAsFixed(2).replaceAllMapped(
                                                RegExp(
                                                    r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                                (Match m) => "${m[1]},"),

                                            //        "20,500",
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // Comptes actif
                              SizedBox(
                               // width: MediaQuery.of(context).size.width / 4.6,
                                width: (MediaQuery.of(context).size.width <= 800 ) ? 280 : MediaQuery.of(context).size.width / 4.6,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    //   color: Couleurs.corlor_app_blue_gama,
                                    color:
                                        // Couleurs.corlor_app_green_grey_d2a,
                                        //Couleurs.corlor_app_blue_grey_d2a,
                                        //   color: Colors.blueAccent,
                                        // color:
                                        Colors.green,
                                    elevation: 20,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: SizedBox(
                                      // width: 320,
                                      width: MediaQuery.of(context).size.width /
                                          04.5,
                                      child: ListTile(
                                        //leading: Icon(Icons.sell),
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   PageTransition(
                                          //       isIos: true,
                                          //       type: PageTransitionType
                                          //           .rightToLeft,
                                          //       child: ListeRDV(
                                          //         currentUser: currentUser as Utilisateur,
                                          //       ),
                                          //       inheritTheme: true,
                                          //       ctx: context),
                                          // );
                                        },
                                        title: const Text(
                                          "Comptes actifs",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        subtitle: const Text(
                                          "Utilisateurs actifs",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        ),
                                        trailing: Chip(
                                          backgroundColor:
                                              Couleurs.corlor_app_blue_fonce,
                                          label: Text(
                                            10.toStringAsFixed(2).replaceAllMapped(
                                                RegExp(
                                                    r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                                (Match m) => "${m[1]},"),

                                            //        "20,500",
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // Comptes inatif
                              SizedBox(
                               // width: MediaQuery.of(context).size.width / 4.6,
                                width: (MediaQuery.of(context).size.width <= 800 ) ? 280 : MediaQuery.of(context).size.width / 4.6,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    //   color: Couleurs.corlor_app_blue_gama,
                                    color:
                                        // Couleurs.corlor_app_green_grey_d2a,
                                        //Couleurs.corlor_app_blue_grey_d2a,
                                        //   color: Colors.blueAccent,
                                        // color:
                                        Colors.red.withOpacity(0.2),
                                    elevation: 20,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: SizedBox(
                                      // width: 320,
                                      width: MediaQuery.of(context).size.width /
                                          04.5,
                                      child: ListTile(
                                        //leading: Icon(Icons.sell),
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   PageTransition(
                                          //       isIos: true,
                                          //       type: PageTransitionType
                                          //           .rightToLeft,
                                          //       child: ListeRDV(
                                          //         currentUser: currentUser as Utilisateur,
                                          //       ),
                                          //       inheritTheme: true,
                                          //       ctx: context),
                                          // );
                                        },
                                        title: const Text(
                                          "Comptes inactifs",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        subtitle: const Text(
                                          "Utilisateurs inactifs",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        ),
                                        trailing: Chip(
                                          backgroundColor:
                                              Couleurs.corlor_app_blue_fonce,
                                          label: Text(
                                            80.toStringAsFixed(2).replaceAllMapped(
                                                RegExp(
                                                    r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                                (Match m) => "${m[1]},"),

                                            //        "20,500",
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      ///
                      ///
                      ///

                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.6,
                      ),


                      // Card
                      // Liste et  recherche
                      SizedBox(
                        width: (MediaQuery.of(context).size.width <= 800 ) ? 280 : MediaQuery.of(context).size.width / 4.6,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            //  color: Couleurs.corlor_app_blue_gama,
                            // color: Couleurs.corlor_app_blue_d2a,
                            color: Colors.grey.withOpacity(0.8),
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: SizedBox(
                              // width: 320,
                              width: MediaQuery.of(context).size.width /
                                  04.5,
                              child: ListTile(
                                //leading: Icon(Icons.sell),
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   PageTransition(
                                  //       isIos: true,
                                  //       type: PageTransitionType
                                  //           .rightToLeft,
                                  //       child: ListeRDVEnAttente(
                                  //           currentUser: currentUser),
                                  //       inheritTheme: true,
                                  //       ctx: context),
                                  // );
                                },
                                title: const Text(
                                  "Accéder à compte client",
                                  style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                                subtitle: const Text(
                                  "Rechercher des clients",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10),
                                ),
                                trailing: IconButton(
                                  icon: const Icon(
                                    Icons.search,
                                    color: Colors.black,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   PageTransition(
                                    //       type: PageTransitionType.rightToLeft,
                                    //       child: ListeDossierRecherche(
                                    //           currentUser: currentUser as Utilisateur),
                                    //       inheritTheme: true,
                                    //       ctx: context),
                                    // );

                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),


                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.6,
                      ),


                      // Liste des comptes
                      Container(
                        margin: const EdgeInsets.only(left: 15, right: 15, top: 20.0, bottom: 00.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Listes des comptes clients",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.aleo(textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: .5),),
                            )),
                      ),



                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.6,
                      ),

                      ///
                      ///
                      ///
                      ///

                      client_widget(client: ClientUser(uid: "UID", name: "name", contact: "contact", nom: "nom", email: "email", adresse: "adresse",activer : true, date_inscription: DateTime.now(), date_laste_connexion: DateTime.now(), prenom: "prenom", uid_compte: "uid_compte", token_compte: "token_compte")),
                      client_widget(client: ClientUser(uid: "UID", name: "name", contact: "contact", nom: "nom", email: "email", adresse: "adresse",activer : false,date_inscription: DateTime.now(), date_laste_connexion: DateTime.now(), prenom: "prenom", uid_compte: "uid_compte", token_compte: "token_compte")),
                      client_widget(client: ClientUser(uid: "UID", name: "name", contact: "contact", nom: "nom", email: "email", adresse: "adresse",activer : false, date_inscription: DateTime.now(), date_laste_connexion: DateTime.now(), prenom: "prenom", uid_compte: "uid_compte", token_compte: "token_compte")),
                      client_widget(client: ClientUser(uid: "UID", name: "name", contact: "contact", nom: "nom", email: "email", adresse: "adresse",activer : false, date_inscription: DateTime.now(), date_laste_connexion: DateTime.now(), prenom: "prenom", uid_compte: "uid_compte", token_compte: "token_compte")),
                      client_widget(client: ClientUser(uid: "UID", name: "name", contact: "contact", nom: "nom", email: "email", adresse: "adresse",activer : true, date_inscription: DateTime.now(), date_laste_connexion: DateTime.now(), prenom: "prenom", uid_compte: "uid_compte", token_compte: "token_compte")),


                    ],
                  ),
                ),
              ),
            ),

            // Social
          ],
        ),
      ),
    );
  }


  Widget client_widget ({required ClientUser client})
  {

    return  Card(
      elevation: 18.3,
      shadowColor: Couleurs.corlor_app_blue_fonce,
      margin: const EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(35.0),
            //  topRight: Radius.circular(35.0),
            topLeft: Radius.circular(5.0),
            bottomLeft: Radius.circular(05)),
      ),
      color: Colors.white,
      child: ListTile(
        onLongPress: (){
          // setState(() {
          //
          //   // Show delete POPUP
          //   if((FirebaseAuth.instance.currentUser!.uid == dossier.auteur!.uid.toString()) || (widget.currentUser.statut_admin == true )  )
          //     showDeletDocPopup(
          //         dossier: dossier
          //     );
          //
          //   else
          //   {
          //
          //
          //     FlutterToastr.show("Vous n'êtes pas autorisé à effectuer cette opération",
          //         context, duration: FlutterToastr.lengthShort,
          //         position:  FlutterToastr.top, backgroundColor: Colors.red,
          //         textStyle: TextStyle(fontSize: 14.0,color: Colors.white));
          //
          //     print('Pas auteur de ce plannings');
          //   }
          //
          // });
        },
        onTap: (){



          Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: ClientDetails(clients:  client),
                inheritTheme: true,
                ctx: context),
          );

        },
        leading: Icon(Icons.folder_shared_sharp, size: 35, color: (client.activer == true) ? Colors.green : Colors.red,),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(client.nom,style: const TextStyle(fontWeight: FontWeight.w500)),
            Text(client.email,style: const TextStyle(fontWeight: FontWeight.w500)),

          ],
        ),
        subtitle: Text(
          //  "lundi 28 décembre 2021"
            DateFormat("EEEE, dd MMMM, yyyy",Localizations.localeOf(context).languageCode).format(DateTime.fromMicrosecondsSinceEpoch(client.date_inscription.microsecondsSinceEpoch)).toString()
          //  dateFormat.format(DateTime.fromMicrosecondsSinceEpoch(data['date_event'])).toString(),
          // dateFormat.format((data['date_ajout']).toDate()).toString(),


        ),
        trailing: IconButton(
          icon: const Icon(Icons.more_horiz_outlined, color: Colors.black, size: 30,),
          onPressed: ()  {


            // Navigator.push(
            //   context,
            //   PageTransition(
            //       type: PageTransitionType.rightToLeft,
            //       child: DetailDossierPage(dossier:  dossier, currentUser : widget.currentUser),
            //       inheritTheme: true,
            //       ctx: context),
            // );
            //

          },
        ),

      ),
    );
  }

}
