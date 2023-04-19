// Use any() and every() to implement two functions:
//
// Part 1: Implement anyUserUnder18().
// Return true if at least one user is 17 or younger.
// Part 2: Implement everyUserOver13().
// Return true if all users are 14 or older.
bool anyUserUnder18(Iterable<User> users) {
  return users.any((user) => user.age < 18);
}

bool everyUserOver13(Iterable<User> users) {
  return users.every((user) => user.age > 13);
}

class User {
  String name;
  int age;

  User(
      this.name,
      this.age,
      );
}
