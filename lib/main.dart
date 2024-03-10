import 'package:flutter/material.dart';
import 'package:stacked_tempelate/app/app.router.dart';
import 'package:stacked_tempelate/file_exporter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   setupLocator();
  // setupDialogUi();
  // setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.homeView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
    );
  }
}
