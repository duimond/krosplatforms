import 'package:myaplication/domain/domain.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:myaplication/data/data.dart';
import 'package:myaplication/app/app.dart';
import 'package:myaplication/app/features/home/bloc/bloc.dart';
import 'package:myaplication/app/features/InfoScreen/bloc/bloc.dart';

final GetIt getIt = GetIt.instance;
final Talker talker = TalkerFlutter.init();
final Dio dio = Dio();

Future<void> setupLocator() async {
  setUpDio();
  getIt.registerSingleton<Dio>(dio);
  getIt.registerSingleton<Talker>(talker);
  getIt.registerSingleton(TopNewsRepository(dio: getIt<Dio>()));
  getIt.registerSingleton(CharacterRepository(dio: getIt<Dio>()));
  getIt.registerSingleton(HomeBloc(getIt.get<TopNewsRepository>()));
  getIt.registerSingleton(InfoBloc(getIt.get<CharacterRepository>()));
}
