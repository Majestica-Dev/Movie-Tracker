import 'package:movie_tracker/domain/movie/entities/ai_rec/streaming_service.dart';

extension StreamingServiceX on StreamingService {
  String get title {
    return switch (this) {
      StreamingService.netflix => 'Netflix',
      StreamingService.hulu => 'Hulu',
      StreamingService.amazonPrime => 'Amazon Prime',
      StreamingService.disneyPlus => 'Disney+',
      StreamingService.hboMax => 'HBO Max',
      StreamingService.applePlus => 'Apple Plus',
    };
  }
}
