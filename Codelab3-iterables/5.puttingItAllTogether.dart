// Part 1: Implement parseEmailAddresses().
//
// Write the function parseEmailAddresses(), which takes an Iterable<String> containing email addresses, and returns an Iterable<EmailAddress>.
// Use the method map() to map from a String to EmailAddress.
// Create the EmailAddress objects using the constructor EmailAddress(String).
// Part 2: Implement anyInvalidEmailAddress().
//
// Write the function anyInvalidEmailAddress(), which takes an Iterable<EmailAddress> and returns true if any EmailAddress in the Iterable isn’t valid.
// Use the method any() together with the provided function isValidEmailAddress().
// Part 3: Implement validEmailAddresses().
//
// Write the function validEmailAddresses(), which takes an Iterable<EmailAddress> and returns another Iterable<EmailAddress> containing only valid addresses.
// Use the method where() to filter the Iterable<EmailAddress>.
// Use the provided function isValidEmailAddress() to evaluate whether an EmailAddress is valid.

Iterable<EmailAddress> parseEmailAddresses(Iterable<String> strings) {
  return strings.map((s) => EmailAddress(s));
}

bool anyInvalidEmailAddress(Iterable<EmailAddress> emails) {
  return emails.any((email) => !isValidEmailAddress(email));
}

Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emails) {
  return emails.where((email) => isValidEmailAddress(email));
}

bool isValidEmailAddress(email){
  return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
}

class EmailAddress {
  final String address;

  EmailAddress(this.address);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is EmailAddress &&
              runtimeType == other.runtimeType &&
              address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() {
    return 'EmailAddress{address: $address}';
  }
}

void main(){
  final String address = 'test@prueba.com';
  print(isValidEmailAddress(address));

  if (isValidEmailAddress(address) == true){
    print('El email es valido: $address');
  }
  else{
    print('Email invalido, ingrese un email valido');
  }
}
