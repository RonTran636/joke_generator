import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:joke_api/api/api_client.dart';
import 'package:joke_api/app.dart';
import 'package:joke_api/flavors.dart';
import 'package:joke_api/home/bloc/home_cubit.dart';
import 'package:joke_api/home/data/repository/home_remote_repository.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('API integration testing', () {
    testWidgets('Get any joke from the api', (tester) async {
      F.appFlavor = Flavor.dev;
      // Load app widget.
      await tester.pumpWidget(const App());

      // Emulate a tap on the submit joke action button.
      await tester.tap(find.byKey(const Key('submitButton')));

      // Expect joke in return by reveal joke on UI after a short time
      Future.delayed(const Duration(seconds: 1), () {
        expect(find.text('Here is your joke: '), findsOneWidget);
      });
    });
  });

  group('bloc test', () {
    // Emulate select custom category and blacklist on cubit
    blocTest<HomeCubit, HomeState>(
      'Get joke with selected category and blacklist',
      build: () => HomeCubit(
        HomeRemoteRepository(
          ApiClient(),
        ),
      ),
      act: (cubit) async {
        cubit.onBlackListSelect('religious', true);
        //When select [Custom] as main category, [program] is auto selected
        cubit.onJokeMainCategorySelect('Custom');
        cubit.onJokeCategorySelect('Spooky', true);

        await cubit.requestJoke();

        // Expect joke in return by reveal joke on UI after a short time
        Future.delayed(const Duration(seconds: 1), () {
          expect(find.text('Here is your joke: '), findsOneWidget);
        });
      },
    );

    blocTest<HomeCubit, HomeState>(
      'Get joke with search keyword',
      build: () => HomeCubit(
        HomeRemoteRepository(
          ApiClient(),
        ),
      ),
      act: (cubit) async {
        cubit.onSearchChange('nice thing');

        await cubit.requestJoke();

        // Expect joke in return by reveal joke on UI after a short time
        Future.delayed(const Duration(seconds: 1), () {
          expect(find.text('Here is your joke: '), findsOneWidget);
        });
      },
    );

    blocTest<HomeCubit, HomeState>(
      'Capture error when select all category and blacklist',
      build: () => HomeCubit(
        HomeRemoteRepository(
          ApiClient(),
        ),
      ),
      act: (cubit) async {
        // Select all blacklists
        cubit.onBlackListSelect('nsfw', true);
        cubit.onBlackListSelect('religious', true);
        cubit.onBlackListSelect('political', true);
        cubit.onBlackListSelect('racist', true);
        cubit.onBlackListSelect('sexist', true);
        cubit.onBlackListSelect('explicit', true);

        // When select [Custom] as main category, [program] is auto selected
        // Select all categories
        cubit.onJokeMainCategorySelect('Custom');
        cubit.onJokeCategorySelect('misc', true);
        cubit.onJokeCategorySelect('dark', true);
        cubit.onJokeCategorySelect('pun', true);
        cubit.onJokeCategorySelect('spooky', true);
        cubit.onJokeCategorySelect('christmas', true);

        await cubit.requestJoke();

        // Expect error return since there is no joke match conditions
        Future.delayed(const Duration(seconds: 1), () {
          expect(find.text('Here is your joke: '), findsNothing);
          expect(find.text('Error: '), findsOneWidget);
        });
      },
    );
  });
}
