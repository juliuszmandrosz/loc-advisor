import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:loc_advisor/app/auth/domain/auth_facade.dart';
import 'package:loc_advisor/injection_container/injectable.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Cześć jak się masz?")),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => getIt<AuthFacade>().signOut(),
            child: Text('Wyloguj się'),
          ),
        ],
      ),
    );
  }
}
