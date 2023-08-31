import 'package:flutter/material.dart';

import 'app.dart';
import 'flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  runApp(const App());
}
