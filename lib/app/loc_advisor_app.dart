import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loc_advisor/auth/application/auth_bloc.dart';
import 'package:loc_advisor/injection_container/injectable.dart';
import 'package:loc_advisor/router/app_router.dart';


class LocAdvisorApp extends StatelessWidget {
  final _appRouter = AppRouter();

  LocAdvisorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>()..add(AuthEvent.authInitialized()),
      child: MaterialApp.router(
        title: 'LocAdvisor',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}