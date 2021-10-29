// class Motamin {
//   bool status;
//   CovidStatisticsVaccine covidStatisticsVaccine;
//
//   Motamin({this.status, this.covidStatisticsVaccine});
//
//   Motamin.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     covidStatisticsVaccine = json['covidStatisticsVaccine'] != null
//         ? new CovidStatisticsVaccine.fromJson(json['covidStatisticsVaccine'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     if (this.covidStatisticsVaccine != null) {
//       data['covidStatisticsVaccine'] = this.covidStatisticsVaccine.toJson();
//     }
//     return data;
//   }
// }
//
// class CovidStatisticsVaccine {
//   int id;
//   String des;
//   int registeredCases;
//   int deaths;
//   int recovered;
//   String apiLink;
//   String target;
//   String desVaccine;
//   int gazaVaccine;
//   int westBankVaccine;
//   String apiLinkVaccine;
//   String targetVaccine;
//   int createUserId;
//   int updateUserId;
//   Null createUserIp;
//   String updateUserIp;
//   String createdAt;
//   String updatedAt;
//
//   CovidStatisticsVaccine(
//       {this.id,
//         this.des,
//         this.registeredCases,
//         this.deaths,
//         this.recovered,
//         this.apiLink,
//         this.target,
//         this.desVaccine,
//         this.gazaVaccine,
//         this.westBankVaccine,
//         this.apiLinkVaccine,
//         this.targetVaccine,
//         this.createUserId,
//         this.updateUserId,
//         this.createUserIp,
//         this.updateUserIp,
//         this.createdAt,
//         this.updatedAt});
//
//   CovidStatisticsVaccine.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     des = json['des'];
//     registeredCases = json['registered_cases'];
//     deaths = json['deaths'];
//     recovered = json['recovered'];
//     apiLink = json['api_link'];
//     target = json['target'];
//     desVaccine = json['des_vaccine'];
//     gazaVaccine = json['gaza_vaccine'];
//     westBankVaccine = json['west_bank_vaccine'];
//     apiLinkVaccine = json['api_link_vaccine'];
//     targetVaccine = json['target_vaccine'];
//     createUserId = json['create_user_id'];
//     updateUserId = json['update_user_id'];
//     createUserIp = json['create_user_ip'];
//     updateUserIp = json['update_user_ip'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['des'] = this.des;
//     data['registered_cases'] = this.registeredCases;
//     data['deaths'] = this.deaths;
//     data['recovered'] = this.recovered;
//     data['api_link'] = this.apiLink;
//     data['target'] = this.target;
//     data['des_vaccine'] = this.desVaccine;
//     data['gaza_vaccine'] = this.gazaVaccine;
//     data['west_bank_vaccine'] = this.westBankVaccine;
//     data['api_link_vaccine'] = this.apiLinkVaccine;
//     data['target_vaccine'] = this.targetVaccine;
//     data['create_user_id'] = this.createUserId;
//     data['update_user_id'] = this.updateUserId;
//     data['create_user_ip'] = this.createUserIp;
//     data['update_user_ip'] = this.updateUserIp;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }