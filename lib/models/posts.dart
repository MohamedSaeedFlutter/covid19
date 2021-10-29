// class PostsData {
//   var status;
//   var classification;
//   var posts;
//
//   PostsData({this.status, this.classification, this.posts});
//
//   PostsData.fromJson(Map<dynamic, dynamic> json) {
//     status = json['status'];
//     classification = json['classification'] != null
//         ? new Classification.fromJson(json['classification'])
//         : null;
//     posts = json['posts'] != null ? new Posts.fromJson(json['posts']) : null;
//   }
//
//   Map<dynamic, dynamic> toJson() {
//     final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
//     data['status'] = this.status;
//     if (this.classification != null) {
//       data['classification'] = this.classification.toJson();
//     }
//     if (this.posts != null) {
//       data['posts'] = this.posts.toJson();
//     }
//     return data;
//   }
// }
//
// class Classification {
//   var id;
//   var name;
//   var des;
//   var active;
//   var photoId;
//   dynamic color;
//   var sort;
//   var createUserId;
//   var updateUserId;
//   var deleteUserId;
//   dynamic createUserIp;
//   dynamic updateUserIp;
//   Null deleteUserIp;
//   dynamic createdAt;
//   dynamic updatedAt;
//   Null deletedAt;
//   var photo;
//
//   Classification(
//       {this.id,
//         this.name,
//         this.des,
//         this.active,
//         this.photoId,
//         this.color,
//         this.sort,
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
//   Classification.fromJson(Map<dynamic, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     des = json['des'];
//     active = json['active'];
//     photoId = json['photo_id'];
//     color = json['color'];
//     sort = json['sort'];
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
//     data['active'] = this.active;
//     data['photo_id'] = this.photoId;
//     data['color'] = this.color;
//     data['sort'] = this.sort;
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
//   Null des;
//   dynamic mime;
//   var classificationId;
//   dynamic path;
//   var createUserId;
//   var updateUserId;
//   dynamic createUserIp;
//   Null updateUserIp;
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
//   List<Links> links;
//   Null nextPageUrl;
//   dynamic path;
//   dynamic perPage;
//   Null prevPageUrl;
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
//   Null smallTitle;
//   dynamic title;
//   dynamic subTitle;
//   dynamic shortText;
//   dynamic text;
//   var categoryId;
//   var outPhotoId;
//   var inPhotoId;
//   dynamic inPhotoTitle;
//   Null writer;
//   var authorId;
//   Null iframe;
//   List<YoutubeAlbum> youtubeAlbum;
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
//   Null deleteUserIp;
//   dynamic createdAt;
//   dynamic updatedAt;
//   Null deletedAt;
//   Photo photo;
//   Category category;
//   Pivot pivot;
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
//         this.category,
//         this.pivot});
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
//     if (json['youtube_album'] != null) {
//       youtubeAlbum = new List<YoutubeAlbum>();
//       json['youtube_album'].forEach((v) {
//         youtubeAlbum.add(new YoutubeAlbum.fromJson(v));
//       });
//     }
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
//     category = json['category'] != null
//         ? new Category.fromJson(json['category'])
//         : null;
//     pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
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
//     if (this.youtubeAlbum != null) {
//       data['youtube_album'] = this.youtubeAlbum.map((v) => v.toJson()).toList();
//     }
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
//     if (this.category != null) {
//       data['category'] = this.category.toJson();
//     }
//     if (this.pivot != null) {
//       data['pivot'] = this.pivot.toJson();
//     }
//     return data;
//   }
// }
//
// class YoutubeAlbum {
//   dynamic youtubeUrl;
//   dynamic youtubeTitle;
//
//   YoutubeAlbum({this.youtubeUrl, this.youtubeTitle});
//
//   YoutubeAlbum.fromJson(Map<dynamic, dynamic> json) {
//     youtubeUrl = json['youtube_url'];
//     youtubeTitle = json['youtube_title'];
//   }
//
//   Map<dynamic, dynamic> toJson() {
//     final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
//     data['youtube_url'] = this.youtubeUrl;
//     data['youtube_title'] = this.youtubeTitle;
//     return data;
//   }
// }
//
// class Category {
//   var id;
//   dynamic name;
//   var des;
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
//         this.deletedAt});
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
//     return data;
//   }
// }
//
// class Pivot {
//   var classificationId;
//   var postId;
//
//   Pivot({this.classificationId, this.postId});
//
//   Pivot.fromJson(Map<dynamic, dynamic> json) {
//     classificationId = json['classification_id'];
//     postId = json['post_id'];
//   }
//
//   Map<dynamic, dynamic> toJson() {
//     final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
//     data['classification_id'] = this.classificationId;
//     data['post_id'] = this.postId;
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