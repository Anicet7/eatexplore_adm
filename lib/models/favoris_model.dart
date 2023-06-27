




import 'package:eatexlpore/models/boncoin_model.dart';
import 'package:eatexlpore/models/client_model.dart';
import 'package:eatexlpore/models/restaurant_model.dart';


class FavorisResto{

  // Info sur le repas
  List<String>? search  ;
  String uid = "" ;

  DateTime date_ajout = DateTime.now() ;
  Restaurant? restaurant ;
  ClientUser? clientUser ;
  int? timeStamp ;

  FavorisResto({

    required this.uid,
    this.search,
    this.timeStamp,

    required this.date_ajout,
    required this.restaurant,
    required this.clientUser,

  });


  FavorisResto.fromMap(Map<String, dynamic> map) {
    uid = map["uid"];
    // search = List<String>.from(map["search"].list);
    date_ajout = map["date_ajout"].toDate();
    clientUser = ClientUser.fromMap(map["clientUser"]);
    restaurant = Restaurant.fromMap(map["restaurant"]);
    timeStamp = map["timeStamp"];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["uid"] = uid;
    json["search"] = search;
    json["date_ajout"] = date_ajout;
    json["clientUser"] = clientUser!.toMap();
    json["restaurant"] = restaurant!.toMap();
    json["timeStamp"] = timeStamp;
    return json;
  }

}


class FavorisBonCoin{

  // Info sur le repas
  List<String>? search  ;
  String uid = "" ;

  DateTime date_ajout = DateTime.now() ;
  BonCoinModel? bonCoin ;
  ClientUser? clientUser ;
  int? timeStamp ;

  FavorisBonCoin({

    required this.uid,
    this.search,
    this.timeStamp,

    required this.date_ajout,
    required this.bonCoin,
    required this.clientUser,

  });


  FavorisBonCoin.fromMap(Map<String, dynamic> map) {
    uid = map["uid"];
   // search = List<String>.from(map["search"]);
    date_ajout = map["date_ajout"].toDate();
    bonCoin = BonCoinModel.fromMap(map["bonCoin"]);
    clientUser = ClientUser.fromMap(map["clientUser"]);
    timeStamp = map["timeStamp"];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["uid"] = uid;
    json["search"] = search;
    json["date_ajout"] = date_ajout;
    json["bonCoin"] = bonCoin!.toMap();
    json["clientUser"] = clientUser!.toMap();
    json["timeStamp"] = timeStamp;
    return json;
  }

}