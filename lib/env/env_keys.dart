import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract final class EnvKeys {
  static String iapApiKey = dotenv.env['IAP_API_KEY']!;

  static String amplitudeKey = dotenv.env['AMPLITUDE_KEY']!;

  static String gptToken = dotenv.env['GPT_TOKEN']!;

  static String tmdbApiKey = dotenv.env['TMDB_API_KEY']!;
}
