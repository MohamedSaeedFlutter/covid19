// class Statis {
//   bool status;
//   CovidStatistics covidStatistics;
//
//   Statis({this.status, this.covidStatistics});
//
//   Statis.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     covidStatistics = json['covidStatistics'] != null
//         ? new CovidStatistics.fromJson(json['covidStatistics'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     if (this.covidStatistics != null) {
//       data['covidStatistics'] = this.covidStatistics.toJson();
//     }
//     return data;
//   }
// }
//
// class CovidStatistics {
//   int registeredCases;
//   int deaths;
//   int recovered;
//   String updatedAt;
//   String des;
//
//   CovidStatistics(
//       {this.registeredCases,
//         this.deaths,
//         this.recovered,
//         this.updatedAt,
//         this.des});
//
//   CovidStatistics.fromJson(Map<String, dynamic> json) {
//     registeredCases = json['registered_cases'];
//     deaths = json['deaths'];
//     recovered = json['recovered'];
//     updatedAt = json['updated_at'];
//     des = json['des'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['registered_cases'] = this.registeredCases;
//     data['deaths'] = this.deaths;
//     data['recovered'] = this.recovered;
//     data['updated_at'] = this.updatedAt;
//     data['des'] = this.des;
//     return data;
//   }
// }