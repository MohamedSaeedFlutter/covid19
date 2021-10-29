// class StaticPages {
//   bool status;
//   List<Pages> pages;
//
//   StaticPages({this.status, this.pages});
//
//   StaticPages.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     if (json['pages'] != null) {
//       pages = new List<Pages>();
//       json['pages'].forEach((v) {
//         pages.add(new Pages.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     if (this.pages != null) {
//       data['pages'] = this.pages.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Pages {
//   int id;
//   String name;
//   String des;
//   String text;
//   int photoId;
//   int active;
//   int createUserId;
//   int updateUserId;
//   int deleteUserId;
//   Null createUserIp;
//   Null updateUserIp;
//   Null deleteUserIp;
//   String createdAt;
//   String updatedAt;
//   Null deletedAt;
//   List<Fields> fields;
//   Photo photo;
//
//   Pages(
//       {this.id,
//         this.name,
//         this.des,
//         this.text,
//         this.photoId,
//         this.active,
//         this.createUserId,
//         this.updateUserId,
//         this.deleteUserId,
//         this.createUserIp,
//         this.updateUserIp,
//         this.deleteUserIp,
//         this.createdAt,
//         this.updatedAt,
//         this.deletedAt,
//         this.fields,
//         this.photo});
//
//   Pages.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     des = json['des'];
//     text = json['text'];
//     photoId = json['photo_id'];
//     active = json['active'];
//     createUserId = json['create_user_id'];
//     updateUserId = json['update_user_id'];
//     deleteUserId = json['delete_user_id'];
//     createUserIp = json['create_user_ip'];
//     updateUserIp = json['update_user_ip'];
//     deleteUserIp = json['delete_user_ip'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     deletedAt = json['deleted_at'];
//     if (json['fields'] != null) {
//       fields = new List<Fields>();
//       json['fields'].forEach((v) {
//         fields.add(new Fields.fromJson(v));
//       });
//     }
//     photo = json['photo'] != null ? new Photo.fromJson(json['photo']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['des'] = this.des;
//     data['text'] = this.text;
//     data['photo_id'] = this.photoId;
//     data['active'] = this.active;
//     data['create_user_id'] = this.createUserId;
//     data['update_user_id'] = this.updateUserId;
//     data['delete_user_id'] = this.deleteUserId;
//     data['create_user_ip'] = this.createUserIp;
//     data['update_user_ip'] = this.updateUserIp;
//     data['delete_user_ip'] = this.deleteUserIp;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['deleted_at'] = this.deletedAt;
//     if (this.fields != null) {
//       data['fields'] = this.fields.map((v) => v.toJson()).toList();
//     }
//     if (this.photo != null) {
//       data['photo'] = this.photo.toJson();
//     }
//     return data;
//   }
// }
//
// class Fields {
//   int id;
//   String name;
//   int pageId;
//   int required;
//   String type;
//   String menuItems;
//   int showPanel;
//   int sort;
//   int active;
//   int createUserId;
//   int updateUserId;
//   int deleteUserId;
//   Null createUserIp;
//   Null updateUserIp;
//   Null deleteUserIp;
//   String createdAt;
//   String updatedAt;
//   String filedName;
//
//   Fields(
//       {this.id,
//         this.name,
//         this.pageId,
//         this.required,
//         this.type,
//         this.menuItems,
//         this.showPanel,
//         this.sort,
//         this.active,
//         this.createUserId,
//         this.updateUserId,
//         this.deleteUserId,
//         this.createUserIp,
//         this.updateUserIp,
//         this.deleteUserIp,
//         this.createdAt,
//         this.updatedAt,
//         this.filedName});
//
//   Fields.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     pageId = json['page_id'];
//     required = json['required'];
//     type = json['type'];
//     menuItems = json['menu_items'];
//     showPanel = json['show_panel'];
//     sort = json['sort'];
//     active = json['active'];
//     createUserId = json['create_user_id'];
//     updateUserId = json['update_user_id'];
//     deleteUserId = json['delete_user_id'];
//     createUserIp = json['create_user_ip'];
//     updateUserIp = json['update_user_ip'];
//     deleteUserIp = json['delete_user_ip'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     filedName = json['filedName'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['page_id'] = this.pageId;
//     data['required'] = this.required;
//     data['type'] = this.type;
//     data['menu_items'] = this.menuItems;
//     data['show_panel'] = this.showPanel;
//     data['sort'] = this.sort;
//     data['active'] = this.active;
//     data['create_user_id'] = this.createUserId;
//     data['update_user_id'] = this.updateUserId;
//     data['delete_user_id'] = this.deleteUserId;
//     data['create_user_ip'] = this.createUserIp;
//     data['update_user_ip'] = this.updateUserIp;
//     data['delete_user_ip'] = this.deleteUserIp;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['filedName'] = this.filedName;
//     return data;
//   }
// }
//
// class Photo {
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
//   Photo.fromJson(Map<String, dynamic> json) {
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