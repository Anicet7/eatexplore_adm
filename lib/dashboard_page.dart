

import 'dart:io';

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:eatexplore_adm/pages/comptes_admins.dart';
import 'package:eatexplore_adm/pages/comptes_clients.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

import 'package:page_transition/page_transition.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../login/login_screen.dart';
import '../../values/app_colors.dart';
import '../../values/app_styles.dart';




class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with  WidgetsBindingObserver {


  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    // body: Container(color: Couleurs.corlor_app_blue_fonce,));

    final isSmallScreen = MediaQuery
        .of(context)
        .size
        .width < 600;
    return Scaffold(
      key: _key,
      appBar: isSmallScreen
          ? AppBar(
            backgroundColor: Colors.black,
           // backgroundColor: canvasColor,
            title: Text("EatExplore",
           // title: Text(_getTitleByIndex(_controller.selectedIndex),
                style: ralewayStyle.copyWith(
             // fontSize: 25.0,
             // color: AppColors.blueDarkColor,
              fontWeight: FontWeight.normal,
            )),
            centerTitle: true,

            leading: IconButton(
              onPressed: () {
                // if (!Platform.isAndroid && !Platform.isIOS) {
                //   _controller.setExtended(true);
                // }
                _key.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
      )
          : null,
      drawer: MenuDashboard(controller: _controller,/* user: user, */context: context,),
      body: Row(
        children: [
          if (!isSmallScreen) MenuDashboard(controller: _controller, /*  user: user, */ context: context,),

              // Web
          Expanded(
            child: Center(
              child: _ScreensDashboard(
                controller: _controller,
               // user: user,
              ),
            ),
          ),
        ],
      ),
    );
  }


  // Statut  en ligne
  Satut_last_connexion() async{

    // await FirebaseFirestore.instance.collection(Repertoire_Firestore.collection_administrateur).doc(FirebaseAuth.instance.currentUser!.uid).
    // update(
    //     {
    //       "date_late_connexion" : DateTime.now()
    //     }
    // ).then((value) => setState((){}));

  }


  @override
  void initState() {

    super.initState();

    WidgetsBinding.instance!.addObserver(this);

  }




  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if(state == AppLifecycleState.resumed){
      Satut_last_connexion();


      // user returned to our app
    }else if(state == AppLifecycleState.inactive){
      Satut_last_connexion();


      // app is inactive
    }else if(state == AppLifecycleState.paused){
      Satut_last_connexion();

      // user is about quit our app temporally
    }else if(state == AppLifecycleState.detached){
      // app suspended (not used in iOS)
    }
  }


}

class MenuDashboard extends StatelessWidget {
  // Utilisateur? user;
   BuildContext context;
   MenuDashboard({
    Key? key,
    required SidebarXController controller,
  //  required this.user,
    required this.context,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {

   // ///print("Verification");
   // print("Verification");
   // print(_controller.extended);
   // print(_controller.hasListeners);
   // print(_controller.);
   // ///print(MediaQuery.of(context).size.width);

    return SidebarX(

      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
         // color: Couleurs.corlor_app_blue_fonce,
         // color: canvasColor,
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: AppColors.Jaune,
       // hoverColor: scaffoldBackgroundColor,
        textStyle: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 12),
       // selectedTextStyle: const TextStyle(color: Couleurs.corlor_app_blue_fonce),
        selectedTextStyle: const TextStyle(color: Colors.black, fontSize: 12),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: canvasColor),
         // border: Border.all(color: canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.Jaune.withOpacity(0.37),
           // color: actionColor.withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [AppColors.Jaune, AppColors.Jaune],
            //colors: [accentCanvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.black,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        //  width: 200,
        width: 240,
        decoration: BoxDecoration(
          color: Colors.black,
          // color: Couleurs.corlor_app_blue_fonce,
        //  color: canvasColor,
        ),
      ),
      footerDivider: divider,
      headerDivider: Container(
         margin: const EdgeInsets.only(bottom: 05),
        // color: Colors.red,
         //height: 40,
         //width: 10,
         child: Visibility(
          visible: _controller.extended == true,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               InkWell(

                 child: SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Container(
                      alignment: Alignment.center,
                    //  color: Colors.green,
                      width: 200,
                      //width: MediaQuery.of(context).size.width  * 0.2,
                      height: MediaQuery.of(context).size.height * 0.05,
                     child: SingleChildScrollView(
                       scrollDirection: Axis.vertical,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children:  const [
                          // (Platform.isMacOS) ?   Text(FirebaseAuth.instance.currentUser!.displayName.toString(),  style: TextStyle(color: Colors.white, fontSize: 12),)    :
                           Text("Name",  style: TextStyle(color: Colors.white, fontSize: 12),overflow: TextOverflow.ellipsis),

                         //  (Platform.isMacOS) ?   Text(FirebaseAuth.instance.currentUser!.email.toString(), style: TextStyle(color: Colors.white, fontSize: 12),) :
                           Text("email",  style: TextStyle(color: Colors.white, fontSize: 12),overflow: TextOverflow.ellipsis,) ,
                         ],
                       ),
                     ),
                   ),
                 ),
               ),

               InkWell(
                 onTap: () {

                   // FirebaseAuth.instance.signOut().then((value)
                   // {
                   //   Navigator.pushReplacement(
                   //       context,
                   //       PageTransition(
                   //         type: PageTransitionType.rightToLeftWithFade,
                   //         child: const LoginScreen(),
                   //       )
                   //   );
                   // });


                 },
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.height * 0.04,
                   margin:
                   const EdgeInsets.only(left: 40, right:40, bottom: 10, top: 10),
                   decoration: const BoxDecoration(
                     // color: Colors.black,
                       color: AppColors.Jaune,
                       // color: Couleurs.corlor_app_blue_fonce,
                       borderRadius: BorderRadius.all(Radius.circular(15))),
                   child: const Center(
                     child: Text(
                       "Déconnexion",
                       // "S'identifier",
                       style: TextStyle(
                           fontSize: 12,
                           fontWeight: FontWeight.w500,
                           // color: Colors.white
                           color: Couleurs.corlor_app_blue_fonce),
                     ),
                   ),
                 ),
               ),

             ],
           ),
         ),
       ) ,
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/logo/logo.png'),
          //  child: Image.asset('assets/images/logo_wb.png'),
          ),
        );
      },
      items: const [

        // Accueil // 0
        SidebarXItem(
          icon: Octicons.home,
          // iconWidget: FlutterLogo(size: 20),
          label: 'Accueil',
        ),

        // Comptes client // 1
        SidebarXItem(
          icon:  Elusive.group,
          label: 'Comptes clients',
        ),

        // Comptes restaurant  // 2
         SidebarXItem(
          icon: Icons.store_outlined,
          label: 'Comptes restaurants',
        ),

        // Gestion des bon coins  // 3
        SidebarXItem(
          icon: Typicons.map,
          label: 'Gestion des bon coins',
        ),

        // Gestion des admin // 4
        SidebarXItem(
          icon: Iconic.user,
          label: 'Gestion des admins',
        ),

        // Paiement   // 5
        SidebarXItem(
          icon: Icons.money_outlined,
          // iconWidget: FlutterLogo(size: 20),
          label: "Paiement",
        ),

        ///
        ///
        ///


        // Politique  // 6
        SidebarXItem(
          icon: Icons.settings,
          label: 'Politique de confidentialité',
        ),

        // Condition
        // A propos  // 7
        SidebarXItem(
          icon: Icons.settings_applications,
          // iconWidget: FlutterLogo(size: 20),
          label: "À propos",
        //  label: "Condition d'utilisation",
        ),

        // Aide et support   // 8
        SidebarXItem(
          icon: Icons.help_center,
         // iconWidget: FlutterLogo(size: 20),
          label: "Aide et support",
        ),



      ],

    );
  }

}


// Version MacOS
class _ScreensDashboard extends StatelessWidget {
 // Utilisateur? user;
   _ScreensDashboard({
    Key? key,
    required this.controller,
   // required this.user,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final pageTitle = _getTitleByIndex(controller.selectedIndex);
        switch (controller.selectedIndex) {

          // Accueil
          case 0:
            return Container (color: Colors.green,);
           // return const AccueilPage ();

            // Comptes Client
          case 1:
            return ComptesClient ();


            // Comptes restaurant
          case 2:
            return Container (color: Colors.black,);
            //return ListeDenonciationAttente();

            //  Bon coin
          case 3:
            return Container (color: Colors.red,);
             // return   ListeDenonciationCloturer();

            // Comptes admin
          case 4:
              return   ComptesAdmin();

        // Planning
          case 5:
            return Container(
             // color: Colors.black,
              margin: const EdgeInsets.all(20),
              child: Text(
                  "En cours de développement",
                  //style: theme.textTheme.headlineSmall,
                  style: GoogleFonts.actor(fontSize: 20,color:  AppColors.Jaune)
              ),
            );

            // Politique de confidentailité
          case 6:
           // launchUrlStart(url: TextStatique.url_politique);

            return Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                "En cours de développement",
                //style: theme.textTheme.headlineSmall,
                  style: GoogleFonts.actor(fontSize: 20,color:  AppColors.Jaune)
              ),
            );

            // Condition d'utilisation
            // A propos
          case 7:
            return   Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("ESGIS Bénin", style: GoogleFonts.acme(fontSize: 24,color:  AppColors.Jaune)),
                  InkWell(
                      onTap: (){
                        //launchUrlStart(url: "https://www.esgis.org");
                      },
                      child: Text("Projet - EatExplore", style: GoogleFonts.acme(fontSize: 20,color:  AppColors.Jaune))),
                  Text("EatExplore - BENIN", style: GoogleFonts.actor(color:  AppColors.Jaune)),
                  Text("Copyright 2023", style: GoogleFonts.actor(fontWeight: FontWeight.bold,color:  AppColors.Jaune)),

                ],
              ),
            );

            // Aide et support
          case 8:
           // launchUrlStart(url: TextStatique.url_aide_support);
            // return SizedBox() ;
            // return AideSupportPage ();
            return  Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                 "En cours de développement",
                 style: GoogleFonts.actor(color:  AppColors.Jaune),
               ),
            );



          default:
            return Text(
              pageTitle,
              style: theme.textTheme.headlineSmall,
            );
        }
      },
    );
  }

  Future<void> launchUrlStart({required String url}) async {
   // if (!await launchUrl(Uri.parse(url),mode: LaunchMode.externalApplication)) {
    if (!await launchUrl(Uri.parse(url),mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

}

// Titre page index
String _getTitleByIndex(int index) {

  switch (index) {

    case 0:
      return 'Accueil';
    case 1:
      return 'Comptes clients';
    case 2:
      return 'Comptes restaurants';
    case 3:
      return 'Gestion des bon coins';
    case 4:
      return 'Gestion des admins';
    case 5:
      return 'Paiements';
    case 6:
      return 'Politique de confidentialité';

    case 7:
      return 'À propos';

    case 8:
      return 'Aide et support';


    default:
      return 'Not found page';
  }
}


const canvasColor = Color(0xFF483F2E);
const scaffoldBackgroundColor = Color(0xFF675F46);
const accentCanvasColor = Color(0xFF61563E);
const white = Colors.white;
final actionColor = const Color(0xFFA78E5F).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);