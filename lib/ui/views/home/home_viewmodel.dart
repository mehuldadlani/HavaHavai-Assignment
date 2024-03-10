part of 'home_view.dart';

class HomeViewModel extends BaseViewModel {
  final log = getLogger('HomeViewModel');
  final navigatiionService = locator<NavigationService>();
  final localStorageService = locator<LocalStorageService>();

 void initialise() {
  log.i('HomeViewModel initialised');
 }
}
