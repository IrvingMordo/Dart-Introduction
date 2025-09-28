void main() {
  print('Program start');

  // Example 1: Request that fails (the original)
  httpGet('https://fernando-herrera.com/courses')
    .then((value) {
      print('Response from example 1: $value');
    })
    .catchError((err) {
      print('Error in example 1: $err');
    });

  // Example 2: Successful request (personal example)
  httpGetSuccess('https://irving-portfolio.com/projects')
    .then((value) {
      print('Response from example 2: $value');
    })
    .catchError((err) {
      print('Error in example 2: $err');
    });

  print('Program end');
}


// Simulation of a request with error
Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Could not connect to $url';
  });
}

// Simulation of a successful request
Future<String> httpGetSuccess(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    return 'Irving\'s project list: App A, App B, App C';
  });
}
