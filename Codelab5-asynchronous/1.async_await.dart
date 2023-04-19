Future<String> fetchRole() async {
  return Future.delayed(const Duration(seconds: 2), () => 'DBA');
}

Future<int> fetchLoginAmount() async {
  return Future.delayed(const Duration(seconds: 2), () => 4);
}

Future<String> reportUserRole() async {
  var username = await fetchRole();
  return 'User role: $username';
}

Future<String> reportLogins() async {
  var logins = await fetchLoginAmount();
  return 'Total number of logins: $logins';
}

Future<void> main() async {

  String userRole = await reportUserRole();
  print(userRole);

  String login = await reportLogins();
  print(login);

}