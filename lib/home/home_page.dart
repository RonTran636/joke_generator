import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joke_api/home/bloc/home_cubit.dart';
import 'package:joke_api/home/widgets/dropdown_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Joke Generator',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                      foreground: Paint()..shader = gradient4Level,
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    onChanged: (value) {},
                    minLines: 1,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'Enter your search joke',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.18),
                      ),
                      enabledBorder: border,
                      focusedBorder: border,
                      errorBorder: border,
                      border: border,
                    ),
                  ),
                  const SizedBox(height: 24),
                  DropdownWidget(
                    label: 'Joke category',
                    listItem: const ['Any', 'Custom'],
                    selectedValue: homeCubit.state.jokeCategory == null ? 'Any' : 'Custom',
                    onValueChange: homeCubit.onJokeMainCategorySelect,
                  ),
                  const SizedBox(height: 8),
                  AnimatedContainer(
                    height: homeCubit.state.jokeCategory == null ? 0 : 120,
                    duration: const Duration(
                      milliseconds: 500,
                    ),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 16 / 3,
                      ),
                      itemCount: homeCubit.jokeCategory.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Checkbox(
                              value: homeCubit.state.jokeCategory
                                      ?.contains(homeCubit.jokeCategory[index]) ??
                                  false,
                              onChanged: (isSelected) => homeCubit.onJokeCategorySelect(
                                homeCubit.jokeCategory[index],
                                isSelected!,
                              ),
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(getColor),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              homeCubit.jokeCategory[index],
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Black list',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 6),
                  GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 16 / 3,
                    ),
                    itemCount: homeCubit.jokeBlackList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Checkbox(
                            value: homeCubit.state.jokeBlackList
                                    .contains(homeCubit.jokeBlackList[index]),
                            onChanged: (isSelected) => homeCubit.onBlackListSelect(
                              homeCubit.jokeBlackList[index],
                              isSelected!,
                            ),
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.resolveWith(getColor),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            homeCubit.jokeBlackList[index],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: homeCubit.requestJoke,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffA667F3),
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

final gradient4Level = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    Color(0xFFB7D2FA),
    Color(0xFFB8B7FA),
    Color(0xFFD9B7FA),
    Color(0xFFFAB7DF),
  ],
).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

final border = OutlineInputBorder(
  borderSide: BorderSide(color: const Color(0xffFFFFFF).withOpacity(0.18)),
  borderRadius: BorderRadius.circular(12),
);

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.blue;
  }
  return Colors.red;
}
