
class PrimarySchoolGraduatingClassC {
  String autoBio;
  String bestMoment;
  String dob;
  String dreamSecondarySchool;
  String dreamUniversity;
  String facebook;
  String hobbies;
  String id;
  String image;
  String instagram;
  String myDropline;
  String name;
  String nickname;
  String philosophy;
  String prefect;
  String positionEnforced;
  String stateLiving;
  String originState;
  String snapchat;
  String tikTok;
  String favSubject;
  String favSchoolActivity;
  String favSport;
  String favClassmate;
  String favPlaceInCampus;
  String favTVStation;
  String favCartoon;
  String worstMoment;

  PrimarySchoolGraduatingClassC.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    autoBio = data['autobio'];
    bestMoment = data['best_moment'];
    facebook = data['facebook'];
    image = data['image'];
    instagram = data['instagram'];
    name = data['name'];
    nickname = data['nickname'];
    dreamSecondarySchool = data['dream_secondary_school'];
    dreamUniversity = data['dream_university'];
    prefect = data['prefect'];
    positionEnforced = data['position_enforced'];
    originState = data['origin_state'];
    stateLiving = data['state_living'];
    snapchat = data['snapchat'];
    tikTok = data['tiktok'];
    dob = data['d_o_b'];
    favSubject = data['fav_subject'];
    favSchoolActivity = data['fav_school_activity'];
    favSport = data['fav_sport_in_campus'];
    favClassmate = data['fav_classmate'];
    favPlaceInCampus = data['fav_place_in_campus'];
    favTVStation = data['fav_tv_station'];
    favCartoon = data['fav_cartoon'];
    hobbies = data['hobbies'];
    myDropline = data['my_dropline'];
    philosophy = data['philosophy'];
    worstMoment = data['worst_moment'];
  }

}