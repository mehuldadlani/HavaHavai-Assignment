import '../file_exporter.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: LocalStorageService),
    // @stacked-service
  ],
  logger: StackedLogger(),
)
class App {}


//flutter pub run build_runner build --delete-conflicting-outputs