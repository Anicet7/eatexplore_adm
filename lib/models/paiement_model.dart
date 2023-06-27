


import 'package:eatexlpore/models/restaurant_model.dart';

import 'package:eatexlpore/models/restaurant_model.dart';

import 'admin_model.dart';
import 'restaurant_model.dart';

class Paiement {

  String uid = "";
  Restaurant? restaurant;
  AdminUser? moderateur;
  int montant = 0;
  int timeStamp = 0;
  bool traite = false;
  String motif = "";
  DateTime date_ajout = DateTime.now();
  List<String>? search;

  Paiement({
    required this.uid,
    required this.restaurant,
    this.moderateur,
    required this.date_ajout,
    required this.motif,
    required this.timeStamp,
    required this.traite,
    required this.montant,
    this.search,
  });

  Paiement.fromMap(Map<String, dynamic> map) {
    uid = map["uid"];
    motif = map["motif"];
    montant = map["montant"];
    restaurant = map["restaurant"] != null ? Restaurant.fromMap(map["restaurant"]) : null;
    moderateur = map["moderateur"] != null ? AdminUser.fromMap(map["moderateur"]) : null;
    traite = map["traite"];
    timeStamp = map["timeStamp"];
    date_ajout = map["date_ajout"].toDate();
   // search = List<String>.from(map["search"]);
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["uid"] = uid;
    json["motif"] = motif;
    json["montant"] = montant;
    json["traite"] = traite;
    json["restaurant"] = restaurant?.toMap();
    json["moderateur"] = moderateur?.toMap();
    json["timeStamp"] = timeStamp;
    json["date_ajout"] = date_ajout;
    json["search"] = search;
    return json;
  }
}
