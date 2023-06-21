


import 'package:eatexplore_adm/models/restaurant_model.dart';

class Repas{

  // Info sur le repas
  String nom = "" ;
  int prix = 0 ;
  String photo = "" ;
  List<String>? search  ;


  String description = "" ;
  String uid = "" ;
  DateTime date_ajout = DateTime.now() ;

  bool visible = true;
  bool repas_du_jour = false;
  Restaurant? restaurant ;

  Repas({

    required this.uid,
    required this.prix,
    required this.description,
     this.search,

    required this.nom,
    required this.photo,
    required this.visible,

    required this.date_ajout,
    required this.restaurant,
    required this.repas_du_jour,

  });


   Repas.fromMap (Map<String, dynamic> map,/* { required String uid} */)
  {

    uid = map["ui_repas" ];
    visible = map["visible" ];
    prix = map["prix" ];
    search = List.from(map['search']);

    nom =map["repas_nom" ]  ;
    description =  map["description" ].toDate() ;
    date_ajout =  map["repas_date_ajout" ].toDate() ;

   // restaurant = map['restaurant'] != null ?  Restaurant.fromJsonWithoutUID(map['restaurant']) : null;
    photo = map["photo" ]  ;
    repas_du_jour = map["repas_du_jour" ]  ;

  }


  // Map <String, dynamic> toMap () {
  //   final Map<String, dynamic> json = <String, dynamic>{};
  //
  //   json["ui_repas" ]  =  uid;
  //   json["visible" ]  =  visible;
  //   json["repas_nom" ]  =  nom;
  //
  //   json["repas_date_ajout" ]  =  date_ajout;
  //   json["prix" ]  =  prix;
  //   json["photo" ]  =  photo;
  //
  //   json["description" ]  =  description;
  //   json["repas_du_jour" ]  =  repas_du_jour;
  //   if (restaurant != null) {
  //     json['restaurant'] = restaurant!.toJson();
  //   }
  //
  //   if (json['search'] != null)
  //   {
  //     search =  List.from(json["search"]);
  //   }
  //   else
  //   {
  //     search = [];
  //   }
  //
  //
  //   return json;
  // }
  //
  //


}