import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:orderpos/screen/initial_screen/initial_screen.dart';
import 'package:orderpos/utils/http_override.dart';
import 'package:orderpos/utils/locator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  HttpOverrides.global = MyHttpOverrides();

  runApp(ResponsiveSizer(
    builder: (context, orientation, screenType) {
      return MaterialApp(
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const <Locale>[
            Locale('en', ''),
            Locale('tr', '+80'),
          ],
          title: 'Orderpos',
          debugShowCheckedModeBanner: false,
          home: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: InitialScreen(
              connectivity: Connectivity(),
            ),
          ));
    },
  ));
}
