typedef VoidFunction = void Function();

class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}

abstract class Logger {
  void logException(Type t, [String? msg]);
  void doneLogging();
}

class MyLogger implements Logger {
  @override
  void logException(Type t, [String? msg]) {
    print('Logging exception: $t');
    if (msg != null) {
      print('Message: $msg');
    }
  }

  @override
  void doneLogging() {
    print('Done logging');
  }
}

void tryFunction(VoidFunction untrustworthy, Logger logger) {
  try {
    untrustworthy();
  } on ExceptionWithMessage catch (e) {
    logger.logException(e.runtimeType, e.message);
  } on Exception {
    logger.logException(Exception);
  } finally {
    logger.doneLogging();
  }
}

void main() {
  // Crear una instancia de MyLogger
  var logger = MyLogger();

  // Definir una función como untrustworthy
  VoidFunction untrustworthy = () {
    print('Ejecutando función no confiable...');
    throw ExceptionWithMessage('¡Algo salió mal!');
  };

  // Llamar a tryFunction con la función no confiable y el logger
  tryFunction(untrustworthy, logger);
}
