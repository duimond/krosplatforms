import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:myaplication/di/di.dart';

void setUpDio() {
  dio.options.baseUrl = 'https://localhost:7005/api/'; 

  dio.options.connectTimeout = const Duration(minutes: 1);
  dio.options.receiveTimeout = const Duration(minutes: 1);

  dio.interceptors.addAll([
    TalkerDioLogger(
      talker: talker,
      settings: const TalkerDioLoggerSettings(
        printRequestData: true,
        printRequestHeaders: true,
      ),
    ),
  ]);
}