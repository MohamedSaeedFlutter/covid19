class EndPoints {
  static const String basicUrl = 'https://www.covidfacts.ps/ar/api';
  static const String storageUrl= 'https://www.covidfacts.ps/thumb/photo/0/0/';

  static const String news = '/catPost/1';
  static const String homeNews = '$news/1';

  static const String covidVires = '/catPost/7';
  static const String homeCovidVires = '$covidVires/1';

  static const String health = '/catPost/2';
  static const String technology = '/catPost/8';
  static const String rumors = '/catPost/9';
  static const String instructions = '/catPost/10';

  static const String healthTopics = '/catPost/3';
  static const String homeHealthTopics = '$healthTopics/2';

  static const String motamin = '/getCovidStatisticsVaccine';

  static const String statistics =  "/getCovidStatistics?fbclid=IwAR12i6mxT_-oDyXgO34-B9LDFAyrTv3Kyiq5XcpNPC9vka5phrpFMf5vsmk";

  static const String commitmentResponsibility = '/catPost/6';
  static const String homeCommitmentResponsibility = '$commitmentResponsibility/3';

  static const String infographic = '/catPost/5';
  static const String homeInfographic = '$infographic/1';

  static const String articles = '/classPost/4';
  static const String homeArticles = '$articles/2';

  static const String settings = '/getSystemSettings';
  static const String staticPages = '/getAllStaticPage';
  static const String covidStatisticsVaccine = '/getCovidStatisticsVaccine';
  static const String homeCovidDatabaseSettings = '/getCovidDatabaseSettings';

  static const String covidDatabaseSettingsSearch =
      '/getSearchCovidDatabaseQuestions/20?title_ser=';

  static const String allCategories = '/getAllCategories';

  static const String allPosts = "/classPost/4/30";
}
