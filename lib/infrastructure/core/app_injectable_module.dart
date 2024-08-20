import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/env/env.dart';

@module
abstract class AppInjectableModule {
  @LazySingleton()
  Dio get dio => Dio();

  @LazySingleton()
  OpenAI get openAI => OpenAI.instance.build(
        token: Env.gptTestToken,
        baseOption: HttpSetup(),
        enableLog: true,
      );
}
