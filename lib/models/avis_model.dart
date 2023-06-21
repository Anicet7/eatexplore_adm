


import 'package:eatexplore_adm/models/client_model.dart';
import 'package:eatexplore_adm/models/restaurant_model.dart';

import 'BonCoin_model.dart';

class AvisRestaurant {

  // Info personnel sur le Client
  ClientUser client;
  Restaurant  restaurant;
  String uid = "" ;

  String message = "" ;
  DateTime date_ajout = DateTime.now() ;
  bool visible = true;


  AvisRestaurant({

    required this.uid,
    required this.client,
    required this.restaurant,

    required this.message,
    required this.date_ajout,
    required this.visible,

});


}




class AvisBonCoin {

  // Info personnel sur le Client

  ClientUser client;
  BonCoin  boncoin;
  String uid = "" ;

  String message = "" ;
  DateTime date_ajout = DateTime.now() ;
  bool visible = true;


  AvisBonCoin({

    required this.uid,
    required this.client,
    required this.boncoin,

    required this.message,
    required this.date_ajout,
    required this.visible,

});


}