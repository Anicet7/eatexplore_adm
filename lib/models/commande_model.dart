


import 'package:eatexplore_adm/models/client_model.dart';
import 'package:eatexplore_adm/models/repas_model.dart';
import 'package:eatexplore_adm/models/restaurant_model.dart';

class Commandes{

  // Info sur le Commandes

  String uid = "" ;
  String moyen_de_paiement = "" ;
  String infor_client = "" ;
  int montant_total = 0 ;
  DateTime date_commande = DateTime.now() ;

  ClientUser client ;
  bool commande_traiter = false;
  Restaurant restaurant ;
  List<Repas> list_repas ;

  Commandes({

    required this.uid,
    required this.moyen_de_paiement,
    required this.infor_client,
    required this.montant_total,
    required this.client,

    required this.commande_traiter,
    required this.restaurant,
    required this.date_commande,
    required this.list_repas,

  });

  //
  //  Commandes.fromMap (Map<String, dynamic> map,/* { required String uid} */)
  // {
  //
  //   uid = map["ui_Commandes" ];
  //   commande_traiter = map["commande_traiter" ];
  //   prix = map["prix" ];
  //
  //   nom =map["Commandes_nom" ]  ;
  //   description =  map["description" ].toDate() ;
  //   date_commande =  map["Commandes_date_commande" ].toDate() ;
  //
  //   restaurant = map['restaurant'] != null ?  Restaurant.fromJsonWithoutUID(map['restaurant']) : null;
  //   photo = map["photo" ]  ;
  //   Commandes_du_jour = map["Commandes_du_jour" ]  ;
  //
  // }
  //
  //
  // Map <String, dynamic> toMap () {
  //   final Map<String, dynamic> json = <String, dynamic>{};
  //
  //   json["ui_Commandes" ]  =  uid;
  //   json["commande_traiter" ]  =  commande_traiter;
  //   json["Commandes_nom" ]  =  nom;
  //
  //   json["Commandes_date_commande" ]  =  date_commande;
  //   json["prix" ]  =  prix;
  //   json["photo" ]  =  photo;
  //
  //   json["description" ]  =  description;
  //   json["Commandes_du_jour" ]  =  Commandes_du_jour;
  //   if (restaurant != null) {
  //     json['restaurant'] = restaurant!.toJson();
  //   }
  //
  //   return json;
  // }
  //



}