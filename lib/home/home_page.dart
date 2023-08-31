import 'package:flutter/material.dart';
import 'package:joke_api/home/widgets/dropdown_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                label: 'Black list',
                hint: 'Select type',
                listItem: ['item1', 'item2'],
                onValueChange: (String? value) {},
              ),
              const SizedBox(height: 24),
              DropdownWidget(
                label: 'Joke category',
                hint: 'Select type',
                listItem: ['item1', 'item2'],
                onValueChange: (String? value) {},
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
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
