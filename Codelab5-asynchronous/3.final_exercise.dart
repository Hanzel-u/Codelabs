Future<String> fetchUsername() async {
  return Future.delayed(const Duration(seconds: 3), () => 'Hanzel Urrutia');
}

Future<String> logoutUser() async {
  var username = await fetchUsername();
  print('Se ha cerrado sesion ... adios');
  return 'Usuario desconectado: $username';
}

String addHello(String user) => 'Hello $user';

Future<String> greetUser() async {
  var username = await fetchUsername();
  return addHello(username);
}

Future<String> sayGoodbye() async {
  try {
    var result = await logoutUser();
    return '$result Thanks, see you next time';
  } catch (e) {
    return 'Failed to logout user: $e';
  }
}

void main() async {

  String GreetUser = await greetUser();
  print(GreetUser);

  String bye = await sayGoodbye();
  print(bye);
}