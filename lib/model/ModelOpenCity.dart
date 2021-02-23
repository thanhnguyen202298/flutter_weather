/**
 * Created by Nguyễn Trung Thành on 2/20/2021.
 *
 * victo202298@gmail.com
 */
class ModelOpenCity {
}
class Bounds {
  Location northeast = null;
  Location southwest = null;
  Bounds(json){
    northeast = Location(json['northeast']);
    southwest = Location(json['southwest']);
  }
}

class Location {
  double lat = null;
  double lng = null;
  Location(json){
    lat= json['lat'];
    lng = json['lng'];
  }
}

class CityInfo {
  String documentation = null;

  String thanks = null;
  int totalResults = null;
  Rate rate = null;

  Status status = null;

  StayInformed stayInformed = null;

  Timestamp timestamp = null;

  List<License> licenses = null;
  List<CityItem> results = null;

  CityInfo.fromJson(Map<String, dynamic> json){
    documentation = json['documentation'];
    thanks = json['thanks'];
    totalResults = json['total_results'];
    rate = Rate(json['rate']);
    status = Status(json['status']);
    stayInformed = StayInformed(json['stay_informed']);
    timestamp = Timestamp(json['timestamp']);

    int n = json['licenses'].length;
    licenses = [];
    for(int i =0; i < n ; i++){
      License ls = License(json['licenses'][i]);
      licenses.add(ls);
    }

    n = json['results'].length;
    results = [];
    for(int i =0; i < n ; i++){
      CityItem ls = CityItem(json['results'][i]);
      results.add(ls);
    }
  }

}
class License {
  String name = null;

  String url = null;
  License(json){
    name = json['name'];
    url = json['url'];
  }
}

class Rate {
  int limit = null;

  int remaining = null;

  int reset = null;

  Rate(json){
    limit = json['limit'];
    remaining = json['remaining'];
    reset = json['reset'];
  }
}

class Components {

  String iSO31661Alpha2 = "";

  String iSO31661Alpha3 = "";

  String category = "";

  String type = "";

  String city = "";

  String cityDistrict = "";

  String continent = "";

  String country = "";


  String countryCode = "";

  String hamlet = "";

  String state = "";

  String stateCode = "";

  String county = "";

  String postcode = "";

  String quarter = "";

  String town = "";

  String residential = "";

  String stateDistrict = "";

  String village = "";

  String municipality = "";

  String neighbourhood = "";

  String road = "";

  String roadType = "";

  String region = "";

  Components(json){

    iSO31661Alpha2 = json['iSO31661Alpha2'];

    iSO31661Alpha3 = json['iSO31661Alpha3'];

    category = json['_category'] ??"";

    type = json['_type']??"";

    city = json['city']??"";

    cityDistrict = json['city_district']??"";

    continent = json['continent']??"";

    country = json['country']??"";


    countryCode = json['country_code']??"";

    hamlet = json['hamlet']??"";

    state = json['state']??"";

    stateCode = json['state_code']??"";

    county = json['county']??"";

    postcode = json['postcode']??"";

    quarter = json['quarter']??"";

    town = json['town']??"";

    residential = json['residential']??"";

    stateDistrict = json['state_district']??"";

    village = json['village']??"";

    municipality = json['municipality']??"";

    neighbourhood = json['neighbourhood']??"";

    road = json['road']??"";

    roadType = json['road_type']??"";

    region = json['region']??"";
  }
}

class CityItem {

  int confidence = null;
  String formatted = null;

  Bounds bounds = null;
  Components components = null;
  Location geometry = null;

  CityItem(json){
    confidence = json['confidence'];
    formatted = json['formatted'];

    bounds = Bounds(json['bounds']);
    components = Components(json['components']);
    geometry = Location(json['geometry']);
  }
}
class Status {
  int code = null;

  String message = null;
  Status(json){
    code = json['code'];
    message = json['message'];
  }
}
class Timestamp {
  String createdHttp = null;

  int createdUnix = null;
  Timestamp(json){
    createdHttp = json['createdHttp'];
    createdUnix = json['createdUnix'];
  }
}
class StayInformed {

  String blog = null;

  String twitter = null;
  StayInformed(json){
    blog = json['blog'];
    twitter = json['twitter'];
  }
}