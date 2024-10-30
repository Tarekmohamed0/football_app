library dependency_injection;

import 'package:get_it/get_it.dart';

import '../constants/colors.dart';

class DependencyInjection {}

final sl = GetIt.instance;
void Setup() {
  sl.registerSingleton<AppColor>(AppColor());

  // services
  // sl.registerSingleton<SigninFirebasedataSource>(SigninFirebasedataSource());
  // repositories
  // sl.registerSingleton<SigninRepositoryImp>(SigninRepositoryImp());
  // sl.registerSingleton<SigninRepository>(SigninRepositoryImp());
  // usecases
  // sl.registerSingleton<SignupUsecase>(SignupUsecase());
  // sl.registerSingleton<GetAgesUseCase>(GetAgesUseCase());
  // sl.registerSingleton<SigninUsecas>(SigninUsecas());
  // blocs

  // pages
}
