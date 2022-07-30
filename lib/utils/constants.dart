// ignore_for_file: non_constant_identifier_names

class Constants {
  static const String API_KEY = '97604a4cfe784fc7a9ae242ac28b2c87';
  static const String TOP_HEADLINES_URL =
      'https://newsapi.org/v2/top-headlines?country=id&apiKey=$API_KEY';

  static String headlinesFor(String country) {
    return 'https://newsapi.org/v2/top-headlines?country=$country&apiKey=$API_KEY';
  }

  static Map<String, String> Countries = {
    "Indonesia": "id",
    "United States of America": "us",
    "India": "in",
    "Korea": "kr",
    "China": "ch"
  };
}
