// Dart’s type system can track where variables are assigned and read, and can verify that non-nullable variables are given values before any code tries to read from them. This process is called definite assignment.
//
// Try uncommenting the if-else statement in the code below, and watch the analyzer errors disappear:

void main() {
  String text;

  if (DateTime.now().hour < 12) {
   text = "It's morning! Let's make aloo paratha!";
  } else {
   text = "It's afternoon! Let's make biryani!";
  }

  print(text);
  print(text.length);
}