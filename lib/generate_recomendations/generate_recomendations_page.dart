import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class GenerateRecommendationsPage extends StatelessWidget {
  const GenerateRecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LocAdvisor'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () async {
                  final function = FirebaseFunctions.instance.httpsCallable('getLocalRecommendations');

                  final response = await function.call({
                    'location': 'San Juan, Puerto Rico',
                    'preferences': 'jade sam, lubie imprezy, ale bez przesady, lubie bliskosc plazy i lubie lokalny vibe'
                  });

                  Logger().i(response.data);
                },
                child: Text('Generate')
              )
            ],
          ),
        ),
      ),
    );
  }
}
