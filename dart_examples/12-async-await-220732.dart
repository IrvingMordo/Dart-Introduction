void main() async {
  print('Program start');

  // Example 1: Request that fails
  try {
    final value = await httpGet('https://fernando-herrera.com/courses');
    print('Response from example 1: $value');
  } catch (err) {
    print('We have an error in example 1: $err');
  }

  // Example 2: Successful request (personal example)
  try {
    final value = await httpGetSuccess('https://irving-portfolio.com/projects');
    print('Response from example 2: $value');
  } catch (err) {
    print('We have an error in example 2: $err');
  }

  print('Program end');
}


// Simulation of a request with error
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Could not connect to $url';
  // return 'HTTP request response successful';
}

// Simulation of a successful request
Future<String> httpGetSuccess(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Irving\'s project list: App A, App B, App C';
}
