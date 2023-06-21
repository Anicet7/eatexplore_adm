


import 'package:eatexplore_adm/models/admin_model.dart';
import 'package:eatexplore_adm/models/avis_model.dart';
import 'package:eatexplore_adm/models/client_model.dart';
import 'package:eatexplore_adm/models/BonCoin_model.dart';




class BonCoin{

  // Info sur le BONCOIN
  String nom = "" ;
  String photo = "" ;
  int prix = 0 ;
  String description = "" ;
  String specialite = "" ;
  String adresse = "" ;

  String uid = "" ;
  DateTime date_inscription = DateTime.now() ;
  bool visible = true;
  ClientUser client ;
  AdminUser? moderateur ;

  double latitude = 0;
  double longitude = 0;
  List<String>? search ;
  List<AvisBonCoin>? list_avis ;


  BonCoin({

    required this.uid,
    required this.prix,
    required this.description,
    required this.specialite,
    required this.adresse,

    required this.nom,
    required this.photo,
    required this.visible,
    required this.client,
    required this.latitude,
    required this.longitude,
     this.moderateur,

    required this.date_inscription,
    required this.search,

});






}