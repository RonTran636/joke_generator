import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joke_api/api/api_client.dart';
import 'package:joke_api/home/data/repository/home_remote_repository.dart';
import 'package:joke_api/home/data/repository/home_repository.dart';
import 'package:joke_api/home/home_page.dart';

import 'flavors.dart';
import 'home/bloc/home_cubit.dart';

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RepositoryProvider<HomeRepository>(
        create: (context) => HomeRemoteRepository(ApiClient()),
        child: BlocProvider(
          create: (context) => HomeCubit(context.read<HomeRepository>()),
          child: const HomePage(),
        ),
      ),
    );
  }
}
