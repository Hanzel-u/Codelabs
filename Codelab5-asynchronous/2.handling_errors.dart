Future<String> fetchNewUsername() async {
  return Future.delayed(const Duration(seconds: 3), () => 'david_pravia_21');
}

Future<String> changeUsername() async {
  try {
    String newUsername = await fetchNewUsername();
    return 'Nombre del nuevo usuario: $newUsername';
  } catch (ex) {
    return ex.toString();
  }
}

void main() async {
  String NewUserName = await changeUsername();
  print(NewUserName);
}