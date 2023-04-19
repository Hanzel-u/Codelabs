// In the code below, add an if statement to the beginning of getLength that returns zero if str is null:

int getLength(String? str) {
  // Add null check here

  if(str == null) {
    return 0;
  }

  return str.length;
}

void main() {
  print(getLength('This is a string!'));
}