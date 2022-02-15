class Logger {
  Logger(this.injectedFormatter);

  final Formatter injectedFormatter;
  final Formatter createdFormatter = Formatter();

  void log1(String message) {
    print(injectedFormatter.format(message));
  }

  void log2(String message) {
    print(createdFormatter.format(message));
  }
}

class Formatter {
  String format(String inMesssage) => inMesssage.padLeft(2);
}