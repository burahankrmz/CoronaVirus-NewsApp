import 'package:covidapp/model/covidmodel.dart';

class ViewCovidModel {
  ModelCovid _modelCovid;

  ViewCovidModel({ModelCovid covid}) : _modelCovid = covid;

  String get country {
    return _modelCovid.country;
  }

  int get cases {
    return _modelCovid.cases;
  }

  int get active {
    return _modelCovid.active;
  }

  int get deaths {
    return _modelCovid.deaths;
  }

  int get recovered {
    return _modelCovid.recovered;
  }
}
