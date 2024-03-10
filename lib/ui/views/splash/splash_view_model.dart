part of 'splash_view.dart';


class SplashViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final log = getLogger("SplashViewModel");
  final localStorageService = locator<LocalStorageService>();


  loginButtonOntap(){
    log.i("onTap");
    // navigationService.back(Routes.homeView);
    localStorageService.write("name", "value");
    localStorageService.read<String>("name");
    localStorageService.delete("name");
  }

  signUpButtonOnTap() {
    log.i("onTap");
    // navigationService.navigateTo(Routes.homeView);
  }
}