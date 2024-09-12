import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/data/repos/home_reps_ipml.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setupLocatorServices() {
  getit.registerSingleton<ApiServices>(ApiServices(Dio()));

  getit.registerSingleton<HomeRepo>(
    HomeRepsIpml(getit.get<ApiServices>()),
  );
  getit.registerSingleton<SearchRepo>(SearchRepo(getit.get<ApiServices>()));
}
