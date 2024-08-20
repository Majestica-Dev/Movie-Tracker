import 'package:envied/envied.dart';

part 'env.g.dart';

@envied
abstract class Env {
  @EnviedField(varName: 'TMDB_API_KEY')
  static const String tmdbApiKey = _Env.tmdbApiKey;

  @EnviedField(varName: 'GPT_TEST_TOKEN')
  static const String gptTestToken = _Env.gptTestToken;
}
