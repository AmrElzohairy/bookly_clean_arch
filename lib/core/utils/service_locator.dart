import 'package:bookly_clean_arch/Features/home/data/data_sources/home_local_data_source_impl.dart';
import 'package:bookly_clean_arch/Features/home/data/data_sources/home_remote_data_source_impl.dart';
import 'package:bookly_clean_arch/Features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_clean_arch/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSourceImpl: HomeLocalDataSourceImpl(),
      homeRemoteDataSourceImpl: HomeRemoteDataSourceImpl(
        api: getIt.get<ApiServices>(),
      ),
    ),
  );
}
