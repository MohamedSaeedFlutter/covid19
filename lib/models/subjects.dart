// class Subjects {
//   var status;
//   List<dynamic> categories;
//
//   Subjects({this.status, this.categories});
//
//   Subjects.fromJson(Map<dynamic, dynamic> json) {
//     status = json['status'];
//     if (json['categories'] != null) {
//       categories = new List<Categories>();
//       json['categories'].forEach((v) {
//         categories.add(new Categories.fromJson(v));
//       });
//     }
//   }
//
//   Map<dynamic, dynamic> toJson() {
//     final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
//     data['status'] = this.status;
//     if (this.categories != null) {
//       data['categories'] = this.categories.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Categories {
//   dynamic id;
//   dynamic name;
//   dynamic des;
//   dynamic parentId;
//   dynamic active;
//   dynamic photoId;
//   dynamic color;
//   dynamic sort;
//   dynamic onHome;
//   dynamic onNewsTicker;
//   dynamic createUserId;
//   dynamic updateUserId;
//   dynamic deleteUserId;
//   dynamic createUserIp;
//   dynamic updateUserIp;
//   var deleteUserIp;
//   dynamic createdAt;
//   dynamic updatedAt;
//   var deletedAt;
//   var photo;
//
//   Categories(
//       {this.id,
//         this.name,
//         this.des,
//         this.parentId,
//         this.active,
//         this.photoId,
//         this.color,
//         this.sort,
//         this.onHome,
//         this.onNewsTicker,
//         this.createUserId,
//         this.updateUserId,
//         this.deleteUserId,
//         this.createUserIp,
//         this.updateUserIp,
//         this.deleteUserIp,
//         this.createdAt,
//         this.updatedAt,
//         this.deletedAt,
//         this.photo});
//
//   Categories.fromJson(Map<dynamic, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     des = json['des'];
//     parentId = json['parent_id'];
//     active = json['active'];
//     photoId = json['photo_id'];
//     color = json['color'];
//     sort = json['sort'];
//     onHome = json['on_home'];
//     onNewsTicker = json['on_news_ticker'];
//     createUserId = json['create_user_id'];
//     updateUserId = json['update_user_id'];
//     deleteUserId = json['delete_user_id'];
//     createUserIp = json['create_user_ip'];
//     updateUserIp = json['update_user_ip'];
//     deleteUserIp = json['delete_user_ip'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     deletedAt = json['deleted_at'];
//     photo = json['photo'] != null ? new Photo.fromJson(json['photo']) : null;
//   }
//
//   Map<dynamic, dynamic> toJson() {
//     final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['des'] = this.des;
//     data['parent_id'] = this.parentId;
//     data['active'] = this.active;
//     data['photo_id'] = this.photoId;
//     data['color'] = this.color;
//     data['sort'] = this.sort;
//     data['on_home'] = this.onHome;
//     data['on_news_ticker'] = this.onNewsTicker;
//     data['create_user_id'] = this.createUserId;
//     data['update_user_id'] = this.updateUserId;
//     data['delete_user_id'] = this.deleteUserId;
//     data['create_user_ip'] = this.createUserIp;
//     data['update_user_ip'] = this.updateUserIp;
//     data['delete_user_ip'] = this.deleteUserIp;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['deleted_at'] = this.deletedAt;
//     if (this.photo != null) {
//       data['photo'] = this.photo.toJson();
//     }
//     return data;
//   }
// }
//
// class Photo {
//   dynamic id;
//   dynamic name;
//   var des;
//   dynamic mime;
//   dynamic classificationId;
//   dynamic path;
//   dynamic createUserId;
//   dynamic updateUserId;
//   dynamic createUserIp;
//   var updateUserIp;
//   dynamic createdAt;
//   dynamic updatedAt;
//
//   Photo(
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
//   Photo.fromJson(Map<dynamic, dynamic> json) {
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
//   Map<dynamic, dynamic> toJson() {
//     final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
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