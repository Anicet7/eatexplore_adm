


import 'package:eatexplore_adm/models/avis_model.dart';
import 'package:eatexplore_adm/models/client_model.dart';
import 'package:flutter/material.dart';

import 'BonCoin_model.dart';
import 'admin_model.dart';

class Restaurant {


  String uid = "" ;
  String nom = "" ;
  String adresse = "" ;
  String specialite = "" ;
  String ifu = "" ;

  String email = "" ;
  String telephone = "" ;
  String slogan = "" ;
  String photo = "" ;
  double latitude = 0;

  double longitude = 0;
  List<String>? search ;
  List<AvisRestaurant>? list_avis ;
  String message = "" ;
  DateTime date_ajout = DateTime.now() ;

  bool visible = true;
  AdminUser? moderateur ;



  Restaurant({

    required this.uid,
    required this.nom,
    required this.adresse,
    required this.specialite,
    required this.ifu,

    required this.email,
    required this.telephone,
    required this.slogan,
    required this.photo,
    required this.latitude,

    required this.longitude,
    required this.message,
    required this.date_ajout,
    required this.visible,
     this.moderateur,

     this.list_avis,
     this.search,

});


}



