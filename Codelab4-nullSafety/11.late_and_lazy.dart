// Here’s another pattern that late can help with: lazy initialization for expensive non-nullable fields. Try this:
//
// Run this code without changing it, and note the output.
// Think: What will change if you make _cache a late field?
// Make _cache a late field, and run the code. Was your prediction correct?

int _computeValue() {
  print('In _computeValue...');
  return 3;
}

class CachedValueProvider {
  late final _cache = _computeValue();
  int get value => _cache;
}

void main() {
  print('Calling constructor...');
  var provider = CachedValueProvider();
  print('Getting value...');
  print('The value is ${provider.value}!');
}