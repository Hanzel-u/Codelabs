// The late keyword is helpful for tricky patterns like circular references.
// The following code has two objects that need to maintain non-nullable references to each other.
// Try using the late keyword to fix this code.

// Note that you don’t need to remove final. You can create late final variables: you set their values once, and after that they’re read-only

class Team {
  late final Coach coach;
}

class Coach {
  late final Team team;
}

void main() {
  final myTeam = Team();
  final myCoach = Coach();
  myTeam.coach = myCoach;
  myCoach.team = myTeam;

  print('All done!');
}