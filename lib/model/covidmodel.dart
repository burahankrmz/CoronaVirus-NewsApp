class ModelCovid {
  String country;
  int cases;
  int deaths;
  int recovered;
  int active;

  ModelCovid(
      {this.active, this.cases, this.country, this.deaths, this.recovered});

  factory ModelCovid.fromJson(Map<String, dynamic> json) => ModelCovid(
        active: json['active'],
        cases: json['cases'],
        country: json['country'],
        deaths: json['deaths'],
        recovered: json['recovered'],
      );
}
