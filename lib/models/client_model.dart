


class ClientUser {

  // Info personnel sur le Client
  String nom = "" ;
  String profil_photo = "" ;
  String prenom = "" ;
  String name = "" ;
  String email = "" ;
  String contact = "" ;

  String adresse = "" ;
  String uid = "" ;
  DateTime date_inscription = DateTime.now() ;
  DateTime date_laste_connexion = DateTime.now() ;

  String token_compte = "";
  bool activer = true;
  List<String>? search ;


  ClientUser({
    required this.uid,
    required this.profil_photo,
    required this.name,
    required this.contact,
    required this.nom,
    required this.email,
    required this.activer,

    required this.adresse,
    required this.date_inscription,
    required this.date_laste_connexion,
    required this.prenom,


    required this.token_compte,
     this.search,
});


   ClientUser.fromMap (Map<String, dynamic> map,/* { required String uid} */)
  {

    uid = map["ui_client" ];
    profil_photo = map["profil_photo" ];
    name = map["client_name" ];
    activer = map["activer" ];
    contact = map["client_contact" ] ;
    nom =map["client_nom" ]  ;
    email = map["client_email" ];

    adresse = map["client_adresse" ] ;
    date_inscription =  map["client_date_inscription" ].toDate() ;
    date_laste_connexion = map["client_last_connexion" ].toDate();
    prenom = map["client_prenom" ]   ;

    search = List.from(map['search']);
    token_compte = map["client_token_compte" ]  ;

  }


  Map <String, dynamic> toMap () {
    final Map<String, dynamic> json = <String, dynamic>{};

    json["ui_client" ]  =  uid;
    json["profil_photo" ]  =  profil_photo;
    json["client_name" ]  =  name;
    json["activer" ]  =  activer;
    json["client_contact" ]  =  contact;
    json["client_nom" ]  =  nom;
    json["client_email" ]  =  email;

    json["client_adresse" ]  =  adresse;
    json["client_date_inscription" ]  =  date_inscription;
    json["client_last_connexion" ]  =  date_laste_connexion;
    json["client_prenom" ]  =  prenom;

    json["client_token_compte" ]  =  token_compte;
    if (json['search'] != null)
    {
      search =  List.from(json["search"]);
    }
    else
    {
      search = [];
    }


    return json;
  }




}