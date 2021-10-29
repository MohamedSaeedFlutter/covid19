// class Questions {
//   bool status;
//   QuestionsData questionsData;
//
//   Questions({this.status, this.questionsData});
//
//   Questions.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     questionsData = json['questionsData'] != null
//         ? new QuestionsData.fromJson(json['questionsData'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     if (this.questionsData != null) {
//       data['questionsData'] = this.questionsData.toJson();
//     }
//     return data;
//   }
// }
//
// class QuestionsData {
//   int currentPage;
//   List<Data> data;
//   String firstPageUrl;
//   int from;
//   int lastPage;
//   String lastPageUrl;
//   List<Links> links;
//   String nextPageUrl;
//   String path;
//   String perPage;
//   Null prevPageUrl;
//   int to;
//   int total;
//
//   QuestionsData(
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
//   QuestionsData.fromJson(Map<String, dynamic> json) {
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
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
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
//   int id;
//   Null smallTitle;
//   String title;
//   String text;
//   int photoId;
//   Null resource;
//   Null writer;
//   int authorId;
//   String youtubeAlbum;
//   String facebookVideoAlbum;
//   String photosAlbum;
//   String videosAlbum;
//   String documentsAlbum;
//   String soundsAlbum;
//   int active;
//   String lastUpdateAt;
//   int createUserId;
//   int updateUserId;
//   int deleteUserId;
//   Null createUserIp;
//   Null updateUserIp;
//   Null deleteUserIp;
//   Null deletedAt;
//   String createdAt;
//   String updatedAt;
//   List<Null> author;
//   List<Null> photo;
//
//   Data(
//       {this.id,
//         this.smallTitle,
//         this.title,
//         this.text,
//         this.photoId,
//         this.resource,
//         this.writer,
//         this.authorId,
//         this.youtubeAlbum,
//         this.facebookVideoAlbum,
//         this.photosAlbum,
//         this.videosAlbum,
//         this.documentsAlbum,
//         this.soundsAlbum,
//         this.active,
//         this.lastUpdateAt,
//         this.createUserId,
//         this.updateUserId,
//         this.deleteUserId,
//         this.createUserIp,
//         this.updateUserIp,
//         this.deleteUserIp,
//         this.deletedAt,
//         this.createdAt,
//         this.updatedAt,
//         this.author,
//         this.photo});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     smallTitle = json['small_title'];
//     title = json['title'];
//     text = json['text'];
//     photoId = json['photo_id'];
//     resource = json['resource'];
//     writer = json['writer'];
//     authorId = json['author_id'];
//     youtubeAlbum = json['youtube_album'];
//     facebookVideoAlbum = json['facebook_video_album'];
//     photosAlbum = json['photos_album'];
//     videosAlbum = json['videos_album'];
//     documentsAlbum = json['documents_album'];
//     soundsAlbum = json['sounds_album'];
//     active = json['active'];
//     lastUpdateAt = json['last_update_at'];
//     createUserId = json['create_user_id'];
//     updateUserId = json['update_user_id'];
//     deleteUserId = json['delete_user_id'];
//     createUserIp = json['create_user_ip'];
//     updateUserIp = json['update_user_ip'];
//     deleteUserIp = json['delete_user_ip'];
//     deletedAt = json['deleted_at'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     if (json['author'] != null) {
//       author = new List<Null>();
//
//     }
//     if (json['photo'] != null) {
//       photo = new List<Null>();
//
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['small_title'] = this.smallTitle;
//     data['title'] = this.title;
//     data['text'] = this.text;
//     data['photo_id'] = this.photoId;
//     data['resource'] = this.resource;
//     data['writer'] = this.writer;
//     data['author_id'] = this.authorId;
//     data['youtube_album'] = this.youtubeAlbum;
//     data['facebook_video_album'] = this.facebookVideoAlbum;
//     data['photos_album'] = this.photosAlbum;
//     data['videos_album'] = this.videosAlbum;
//     data['documents_album'] = this.documentsAlbum;
//     data['sounds_album'] = this.soundsAlbum;
//     data['active'] = this.active;
//     data['last_update_at'] = this.lastUpdateAt;
//     data['create_user_id'] = this.createUserId;
//     data['update_user_id'] = this.updateUserId;
//     data['delete_user_id'] = this.deleteUserId;
//     data['create_user_ip'] = this.createUserIp;
//     data['update_user_ip'] = this.updateUserIp;
//     data['delete_user_ip'] = this.deleteUserIp;
//     data['deleted_at'] = this.deletedAt;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//
//     return data;
//   }
// }
//
// class Links {
//   String url;
//   String label;
//   bool active;
//
//   Links({this.url, this.label, this.active});
//
//   Links.fromJson(Map<String, dynamic> json) {
//     url = json['url'];
//     label = json['label'];
//     active = json['active'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['url'] = this.url;
//     data['label'] = this.label;
//     data['active'] = this.active;
//     return data;
//   }
// }