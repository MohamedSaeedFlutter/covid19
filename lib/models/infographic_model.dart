// class InfoGraphic {
//   var status;
//   var category;
//   var posts;
//
//   InfoGraphic({this.status, this.category, this.posts});
//
//   InfoGraphic.fromJson(Map<dynamic, dynamic> json) {
//     status = json['status'];
//     category = json['category'] != null
//         ? new Category.fromJson(json['category'])
//         : null;
//     posts = json['posts'] != null ? new Posts.fromJson(json['posts']) : null;
//   }
//
//   Map<dynamic, dynamic> toJson() {
//     final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
//     data['status'] = this.status;
//     if (this.category != null) {
//       data['category'] = this.category.toJson();
//     }
//     if (this.posts != null) {
//       data['posts'] = this.posts.toJson();
//     }
//     return data;
//   }
// }
//
// class Category {
//   var id;
//   dynamic name;
//   dynamic des;
//   var parentId;
//   var active;
//   var photoId;
//   dynamic color;
//   var sort;
//   var onHome;
//   var onNewsTicker;
//   var createUserId;
//   var updateUserId;
//   var deleteUserId;
//   dynamic createUserIp;
//   dynamic updateUserIp;
//   var deleteUserIp;
//   dynamic createdAt;
//   dynamic updatedAt;
//   var deletedAt;
//   var photo;
//
//   Category(
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
//   Category.fromJson(Map<dynamic, dynamic> json) {
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
//   var id;
//   dynamic name;
//   var des;
//   dynamic mime;
//   var classificationId;
//   dynamic path;
//   var createUserId;
//   var updateUserId;
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
//
// class Posts {
//   var currentPage;
//   List<Data> data;
//   dynamic firstPageUrl;
//   var from;
//   var lastPage;
//   dynamic lastPageUrl;
//   List<dynamic> links;
//   dynamic nextPageUrl;
//   dynamic path;
//   var perPage;
//   var prevPageUrl;
//   var to;
//   var total;
//
//   Posts(
//       {this.currentPage,
//         this.data,
//         this.firstPageUrl,
//         this.from,
//         this.lastPage,
//         this.lastPageUrl,
//         this.links,
//         this.nextPageUrl,
//         this.path,
//         this.perPage,
//         this.prevPageUrl,
//         this.to,
//         this.total});
//
//   Posts.fromJson(Map<dynamic, dynamic> json) {
//     currentPage = json['current_page'];
//     if (json['data'] != null) {
//       data = new List<Data>();
//       json['data'].forEach((v) {
//         data.add(new Data.fromJson(v));
//       });
//     }
//     firstPageUrl = json['first_page_url'];
//     from = json['from'];
//     lastPage = json['last_page'];
//     lastPageUrl = json['last_page_url'];
//     if (json['links'] != null) {
//       links = new List<Links>();
//       json['links'].forEach((v) {
//         links.add(new Links.fromJson(v));
//       });
//     }
//     nextPageUrl = json['next_page_url'];
//     path = json['path'];
//     perPage = json['per_page'];
//     prevPageUrl = json['prev_page_url'];
//     to = json['to'];
//     total = json['total'];
//   }
//
//   Map<dynamic, dynamic> toJson() {
//     final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
//     data['current_page'] = this.currentPage;
//     if (this.data != null) {
//       data['data'] = this.data.map((v) => v.toJson()).toList();
//     }
//     data['first_page_url'] = this.firstPageUrl;
//     data['from'] = this.from;
//     data['last_page'] = this.lastPage;
//     data['last_page_url'] = this.lastPageUrl;
//     if (this.links != null) {
//       data['links'] = this.links.map((v) => v.toJson()).toList();
//     }
//     data['next_page_url'] = this.nextPageUrl;
//     data['path'] = this.path;
//     data['per_page'] = this.perPage;
//     data['prev_page_url'] = this.prevPageUrl;
//     data['to'] = this.to;
//     data['total'] = this.total;
//     return data;
//   }
// }
//
// class Data {
//   var id;
//   var smallTitle;
//   dynamic title;
//   var subTitle;
//   dynamic shortText;
//   dynamic text;
//   var categoryId;
//   var outPhotoId;
//   var inPhotoId;
//   dynamic inPhotoTitle;
//   var writer;
//   var authorId;
//   var iframe;
//   List<dynamic> youtubeAlbum;
//   dynamic facebookVideoAlbum;
//   dynamic photosAlbum;
//   dynamic videosAlbum;
//   dynamic documentsAlbum;
//   dynamic soundsAlbum;
//   var views;
//   dynamic type;
//   var sort;
//   var publishUserId;
//   dynamic publishUserIp;
//   dynamic publishAt;
//   dynamic lastUpdateAt;
//   var createUserId;
//   var updateUserId;
//   var deleteUserId;
//   dynamic createUserIp;
//   dynamic updateUserIp;
//   var deleteUserIp;
//   dynamic createdAt;
//   dynamic updatedAt;
//   var deletedAt;
//   var photo;
//   var inPhoto;
//
//   Data(
//       {this.id,
//         this.smallTitle,
//         this.title,
//         this.subTitle,
//         this.shortText,
//         this.text,
//         this.categoryId,
//         this.outPhotoId,
//         this.inPhotoId,
//         this.inPhotoTitle,
//         this.writer,
//         this.authorId,
//         this.iframe,
//         this.youtubeAlbum,
//         this.facebookVideoAlbum,
//         this.photosAlbum,
//         this.videosAlbum,
//         this.documentsAlbum,
//         this.soundsAlbum,
//         this.views,
//         this.type,
//         this.sort,
//         this.publishUserId,
//         this.publishUserIp,
//         this.publishAt,
//         this.lastUpdateAt,
//         this.createUserId,
//         this.updateUserId,
//         this.deleteUserId,
//         this.createUserIp,
//         this.updateUserIp,
//         this.deleteUserIp,
//         this.createdAt,
//         this.updatedAt,
//         this.deletedAt,
//         this.photo,
//         this.inPhoto});
//
//   Data.fromJson(Map<dynamic, dynamic> json) {
//     id = json['id'];
//     smallTitle = json['small_title'];
//     title = json['title'];
//     subTitle = json['sub_title'];
//     shortText = json['short_text'];
//     text = json['text'];
//     categoryId = json['category_id'];
//     outPhotoId = json['out_photo_id'];
//     inPhotoId = json['in_photo_id'];
//     inPhotoTitle = json['in_photo_title'];
//     writer = json['writer'];
//     authorId = json['author_id'];
//     iframe = json['iframe'];
//
//     facebookVideoAlbum = json['facebook_video_album'];
//     photosAlbum = json['photos_album'];
//     videosAlbum = json['videos_album'];
//     documentsAlbum = json['documents_album'];
//     soundsAlbum = json['sounds_album'];
//     views = json['views'];
//     type = json['type'];
//     sort = json['sort'];
//     publishUserId = json['publish_user_id'];
//     publishUserIp = json['publish_user_ip'];
//     publishAt = json['publish_at'];
//     lastUpdateAt = json['last_update_at'];
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
//     inPhoto =
//     json['in_photo'] != null ? new Photo.fromJson(json['in_photo']) : null;
//   }
//
//   Map<dynamic, dynamic> toJson() {
//     final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
//     data['id'] = this.id;
//     data['small_title'] = this.smallTitle;
//     data['title'] = this.title;
//     data['sub_title'] = this.subTitle;
//     data['short_text'] = this.shortText;
//     data['text'] = this.text;
//     data['category_id'] = this.categoryId;
//     data['out_photo_id'] = this.outPhotoId;
//     data['in_photo_id'] = this.inPhotoId;
//     data['in_photo_title'] = this.inPhotoTitle;
//     data['writer'] = this.writer;
//     data['author_id'] = this.authorId;
//     data['iframe'] = this.iframe;
//     data['facebook_video_album'] = this.facebookVideoAlbum;
//     data['photos_album'] = this.photosAlbum;
//     data['videos_album'] = this.videosAlbum;
//     data['documents_album'] = this.documentsAlbum;
//     data['sounds_album'] = this.soundsAlbum;
//     data['views'] = this.views;
//     data['type'] = this.type;
//     data['sort'] = this.sort;
//     data['publish_user_id'] = this.publishUserId;
//     data['publish_user_ip'] = this.publishUserIp;
//     data['publish_at'] = this.publishAt;
//     data['last_update_at'] = this.lastUpdateAt;
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
//     if (this.inPhoto != null) {
//       data['in_photo'] = this.inPhoto.toJson();
//     }
//     return data;
//   }
// }
//
// class Links {
//   dynamic url;
//   dynamic label;
//   bool active;
//
//   Links({this.url, this.label, this.active});
//
//   Links.fromJson(Map<dynamic, dynamic> json) {
//     url = json['url'];
//     label = json['label'];
//     active = json['active'];
//   }
//
//   Map<dynamic, dynamic> toJson() {
//     final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
//     data['url'] = this.url;
//     data['label'] = this.label;
//     data['active'] = this.active;
//     return data;
//   }
// }