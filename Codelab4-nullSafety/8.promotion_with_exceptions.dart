// Promotion works with exceptions as well as return statements. Try a null check that throws an Exception instead of returning zero.

int getLength(String? str) {
  // Try throwing an exception here if `str` is null.
  if(str == null) {
    throw Exception();
  }

  return str.length;
}

void main() {
  try{
    print(getLength(null));
  } catch (e) {
    print('Se ha detectado un error :(');
  }
}