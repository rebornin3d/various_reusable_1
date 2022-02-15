// Use the factory keyword when implementing a constructor
// that doesn’t always create a new instance of its class.
// For example, a factory constructor might return an instance
// from a cache, or it might return an instance of a subtype.
// Another use case for factory constructors is initializing a
// final variable using logic that can’t be handled in the
// initializer list.

class Logger {
  late final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

// Note: Factory constructors have no access to .this.
//
// Invoke a factory constructor just like you would any other constructor:



var logger = Logger('UI');
logger.log('Button clicked');

var logMap = {'name': 'UI'};
var loggerJson = Logger.fromJson(logMap);

