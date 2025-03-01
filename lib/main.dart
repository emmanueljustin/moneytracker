import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:moneytracker/global_core/hive_service/hive_boxes.dart';
import 'package:moneytracker/global_core/locator.dart';
import 'package:moneytracker/global_core/providers/bloc_providers.dart';
import 'package:moneytracker/src/home/presentation/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await HiveBoxes().registerAdapters();
  await setupLocator();
  runApp(
    MultiBlocProvider(
      providers: BlocProviders.get(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}