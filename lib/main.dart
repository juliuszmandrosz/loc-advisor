import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loc_advisor/app/loc_advisor_app.dart';
import 'package:loc_advisor/injection_container/injectable.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  configureDependencies();

  runApp(LocAdvisorApp());
}

