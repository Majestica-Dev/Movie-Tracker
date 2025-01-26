import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@singleton
class AppStoreReviewCheckerCubit extends Cubit<bool> {
  AppStoreReviewCheckerCubit() : super(true);

  void check() async {
    final packageInfo = await PackageInfo.fromPlatform();

    final remoteConfig = FirebaseRemoteConfig.instance;

    String currentAppVersion = packageInfo.version;

    await remoteConfig.fetchAndActivate();

    String remoteAppVersion = remoteConfig.getString('app_version');

    emit(currentAppVersion == remoteAppVersion);
  }
}
