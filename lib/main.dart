import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl_browser.dart';
import 'package:provider/provider.dart';

import 'controllers/menu_controller.dart';
import 'dashboard_page.dart';
import 'firebase_options.dart';
import 'login/login_screen.dart';

// void main() {
//   runApp(const MyApp());
// }



/// Main
Future<void> main() async {


  WidgetsFlutterBinding.ensureInitialized();


// ...

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);


  // initializeDateFormatting('fr', etat).then((_) => {
  //     var now = new DateTime.now(),
  // var formatter = new DateFormat.yMd('fr');
  // print(formatter.format(now));
  // });


  // Android et iOS
  // if ( (Platform.isAndroid || Platform.isIOS) && (!kIsWeb) ) {
  //    runApp( MyAppMobile());
  // } else

  // Web
  // {
  //  runApp( MyApp());
  // }

  if (kIsWeb) {
    runApp( MyApp());
  } else {
   // runApp( const MyAppMobile());
  }

}



/// Web Version
class MyApp extends StatefulWidget {


  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;

  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {

    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });


      // Firestore
      // FirebaseFirestore firestore = FirebaseFirestore.instance;
      //
      // FirebaseApp secondaryApp = Firebase.app();
      // firestore = FirebaseFirestore.instanceFor(app: secondaryApp);
      //
      // // All other platforms.
      // FirebaseFirestore.instance.settings =
      //     Settings(persistenceEnabled: true);

      // Firebase Analytics
      FirebaseAnalytics analytics = FirebaseAnalytics.instance;


    } catch(e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
        print(e);
        print(e.toString());
      });
    }
  }

  @override
  void initState() {
    // Flutter init
    initializeFlutterFire();

    langue() ;

    super.initState();
  }


  Future<void>  langue() async {
    await findSystemLocale();
    //   await initializeDateFormatting('fr');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'EatExplore',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        //   GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fr', ''), // English, no country code
        //   Locale('es', ''), // Spanish, no country code
        //  Locale.fromSubtags(languageCode: 'fr_FR', scriptCode: 'fr_FR'),
        // Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MenuControllerNotifier()),
        ],
       // child: const DashboardPage(),
        child: const LoginScreen(),
      ),
    );

    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Amnesty',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: const LoginScreen() ,
    // );
  }
}
