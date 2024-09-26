import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:dio/dio.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/env/env_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

@module
abstract class AppInjectableModule {
  @preResolve
  Future<SharedPreferences> sharedPreferences() {
    return SharedPreferences.getInstance();
  }

  @LazySingleton()
  Dio get dio => Dio();

  @LazySingleton()
  OpenAI get openAI => OpenAI.instance.build(
        token: EnvKeys.gptToken,
        baseOption: HttpSetup(),
        enableLog: true,
      );

  @singleton
  InAppReview get inAppReview => InAppReview.instance;

  @singleton
  Uuid get uuid => const Uuid();
}
