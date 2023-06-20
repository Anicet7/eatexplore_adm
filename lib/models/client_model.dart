


class ClientUser {

  // Info personnel sur le Client
  String nom = "" ;
  String prenom = "" ;
  String name = "" ;
  String email = "" ;
  String contact = "" ;

  String adresse = "" ;
  String uid = "" ;
  DateTime date_inscription = DateTime.now() ;
  DateTime date_laste_connexion = DateTime.now() ;

  // Info Association Client
  String uid_compte = "";
  String token_compte = "";
  bool activer = true;


  ClientUser({
    required this.uid,
    required this.name,
    required this.contact,
    required this.nom,
    required this.email,
    required this.activer,

    required this.adresse,
    required this.date_inscription,
    required this.date_laste_connexion,
    required this.prenom,
    required this.uid_compte,

    required this.token_compte,
});


   ClientUser.fromMap (Map<String, dynamic> map,/* { required String uid} */)
  {

    uid = map["ui_client" ];
    name = map["client_name" ];
    activer = map["activer" ];
    contact = map["client_contact" ] ;
    nom =map["client_nom" ]  ;
    email = map["client_email" ];

    adresse = map["client_adresse" ] ;
    date_inscription =  map["client_date_inscription" ].toDate() ;
    date_laste_connexion = map["client_last_connexion" ].toDate();
    prenom = map["client_prenom" ]   ;
    uid_compte = map["client_ui_compte" ]  ;

    token_compte = map["client_token_compte" ]  ;

  }


  Map <String, dynamic> toMap () {
    final Map<String, dynamic> json = <String, dynamic>{};

    json["ui_client" ]  =  uid;
    json["client_name" ]  =  name;
    json["activer" ]  =  activer;
    json["client_contact" ]  =  contact;
    json["client_nom" ]  =  nom;
    json["client_email" ]  =  email;

    json["client_adresse" ]  =  adresse;
    json["client_date_inscription" ]  =  date_inscription;
    json["client_last_connexion" ]  =  date_laste_connexion;
    json["client_prenom" ]  =  prenom;
    json["client_ui_compte" ]  =  uid_compte;

    json["client_token_compte" ]  =  token_compte;
    return json;
  }




}