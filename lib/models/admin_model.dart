


class AdminUser {

  // Info personnel sur le admin
  String nom = "" ;
  String prenom = "" ;
  String name = "" ;
  String email = "" ;

  String adresse = "" ;
  String uid = "" ;
  DateTime date_inscription = DateTime.now() ;
  DateTime date_last_connexion = DateTime.now() ;

  int habilitation  = 1 ;
  bool activer = true;
  List<String>? search ;


  AdminUser({
    required this.uid,
    required this.name,
    required this.nom,
    required this.email,

    required this.activer,
    required this.adresse,
    required this.date_inscription,
    required this.date_last_connexion,

    required this.prenom,
    required this.habilitation,
});


   AdminUser.fromMap (Map<String, dynamic> map,/* { required String uid} */)
  {

    uid = map["ui_admin" ];
    name = map["admin_name" ];
    activer = map["activer" ];
    habilitation = map["habilitation" ] ;

    nom =map["admin_nom" ]  ;
    email = map["admin_email" ];
    adresse = map["admin_adresse" ] ;
    date_inscription =  map["admin_date_inscription" ].toDate() ;

    date_last_connexion = map["admin_last_connexion" ].toDate();
    prenom = map["admin_prenom" ]   ;

  }


  Map <String, dynamic> toMap () {
    final Map<String, dynamic> json = <String, dynamic>{};

    json["ui_admin" ]  =  uid;
    json["admin_name" ]  =  name;
    json["activer" ]  =  activer;
    json["admin_nom" ]  =  nom;

    json["admin_email" ]  =  email;
    json["admin_adresse" ]  =  adresse;
    json["admin_date_inscription" ]  =  date_inscription;
    json["admin_last_connexion" ]  =  date_last_connexion;

    json["admin_prenom" ]  =  prenom;
    json["habilitation" ]  =  habilitation;

    return json;
  }




}