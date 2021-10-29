// class QuestionsBank {
//   bool status;
//   CovidDatabaseSettings covidDatabaseSettings;
//
//   QuestionsBank({this.status, this.covidDatabaseSettings});
//
//   QuestionsBank.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     covidDatabaseSettings = json['covidDatabaseSettings'] != null
//         ? new CovidDatabaseSettings.fromJson(json['covidDatabaseSettings'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['statustus'] = this.status;
//     if (this.covidDatabaseSettings != null) {
//       data['covidDatabaseSettings'] = this.covidDatabaseSettings.toJson();
//     }
//     return data;
//   }
// }
//
// class CovidDatabaseSettings {
//   int id;
//   String name;
//   String title;
//   String des;
//   String hint;
//   String tel;
//   int photoId1;
//   int photoId2;
//   String internalTitle;
//   String internalDes;
//   int internalPhotoId;
//   int createUserId;
//   int updateUserId;
//   Null createUserIp;
//   String updateUserIp;
//   String createdAt;
//   String updatedAt;
//   Photo1 photo1;
//   Photo1 photo2;
//   Photo1 internalPhoto;
//
//   CovidDatabaseSettings(
//       {this.id,
//         this.name,
//         this.title,
//         this.des,
//         this.hint,
//         this.tel,
//         this.photoId1,
//         this.photoId2,
//         this.internalTitle,
//         this.internalDes,
//         this.internalPhotoId,
//         this.createUserId,
//         this.updateUserId,
//         this.createUserIp,
//         this.updateUserIp,
//         this.createdAt,
//         this.updatedAt,
//         this.photo1,
//         this.photo2,
//         this.internalPhoto});
//
//   CovidDatabaseSettings.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     title = json['title'];
//     des = json['des'];
//     hint = json['hint'];
//     tel = json['tel'];
//     photoId1 = json['photo_id1'];
//     photoId2 = json['photo_id2'];
//     internalTitle = json['internal_title'];
//     internalDes = json['internal_des'];
//     internalPhotoId = json['internal_photo_id'];
//     createUserId = json['create_user_id'];
//     updateUserId = json['update_user_id'];
//     createUserIp = json['create_user_ip'];
//     updateUserIp = json['update_user_ip'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     photo1 =
//     json['photo1'] != null ? new Photo1.fromJson(json['photo1']) : null;
//     photo2 =
//     json['photo2'] != null ? new Photo1.fromJson(json['photo2']) : null;
//     internalPhoto = json['internal_photo'] != null
//         ? new Photo1.fromJson(json['internal_photo'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['title'] = this.title;
//     data['des'] = this.des;
//     data['hint'] = this.hint;
//     data['tel'] = this.tel;
//     data['photo_id1'] = this.photoId1;
//     data['photo_id2'] = this.photoId2;
//     data['internal_title'] = this.internalTitle;
//     data['internal_des'] = this.internalDes;
//     data['internal_photo_id'] = this.internalPhotoId;
//     data['create_user_id'] = this.createUserId;
//     data['update_user_id'] = this.updateUserId;
//     data['create_user_ip'] = this.createUserIp;
//     data['update_user_ip'] = this.updateUserIp;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     if (this.photo1 != null) {
//       data['photo1'] = this.photo1.toJson();
//     }
//     if (this.photo2 != null) {
//       data['photo2'] = this.photo2.toJson();
//     }
//     if (this.internalPhoto != null) {
//       data['internal_photo'] = this.internalPhoto.toJson();
//     }
//     return data;
//   }
// }
//
// class Photo1 {
//   int id;
//   String name;
//   Null des;
//   String mime;
//   int classificationId;
//   String path;
//   int createUserId;
//   int updateUserId;
//   String createUserIp;
//   Null updateUserIp;
//   String createdAt;
//   String updatedAt;
//
//   Photo1(
//       {this.id,
//         this.name,
//         this.des,
//         this.mime,
//         this.classificationId,
//         this.path,
//         this.createUserId,
//         this.updateUserId,
//         this.createUserIp,
//         this.updateUserIp,
//         this.createdAt,
//         this.updatedAt});
//
//   Photo1.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     des = json['des'];
//     mime = json['mime'];
//     classificationId = json['classification_id'];
//     path = json['path'];
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
//     data['name'] = this.name;
//     data['des'] = this.des;
//     data['mime'] = this.mime;
//     data['classification_id'] = this.classificationId;
//     data['path'] = this.path;
//     data['create_user_id'] = this.createUserId;
//     data['update_user_id'] = this.updateUserId;
//     data['create_user_ip'] = this.createUserIp;
//     data['update_user_ip'] = this.updateUserIp;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }