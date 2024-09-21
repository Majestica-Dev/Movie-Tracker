import 'package:injectable/injectable.dart';
import 'package:store_checker/store_checker.dart';

@singleton
class InstalationSourceService {
  bool _isDownloadedFromTestFlight = false;

  Future<void> setIsDownloadedFromTestFlight() async {
    final installedSource = await StoreChecker.getSource;

    _isDownloadedFromTestFlight =
        installedSource == Source.IS_INSTALLED_FROM_TEST_FLIGHT;
  }

  bool get isAppDownloadedFromTestFlight => _isDownloadedFromTestFlight;
}
