enum Flavor {
  prod,
  dev,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Joke Generator';
      case Flavor.dev:
        return 'Joke Generator Dev';
      default:
        return 'title';
    }
  }

}
