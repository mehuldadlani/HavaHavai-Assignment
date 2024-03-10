import 'package:flutter/material.dart';
import '../../../file_exporter.dart';


part 'splash_view_model.dart';
part 'splash_view_components.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      // onModelReady: (model) => model.handleStartUpLogic(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const CircularProgressIndicator(),
              SizedBox(height: 20.hWise),
              GestureDetector(
                onDoubleTap: model.loginButtonOntap,
                child:  Text('Loading...', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.primaryVariant,
                ),)),
            ],
          ),
        ),
      ),
    );
  }
}