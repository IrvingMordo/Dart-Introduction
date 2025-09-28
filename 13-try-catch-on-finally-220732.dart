void main() async {
  print('Program start');

  // Example 1: Throws an Exception
  try {
    final value = await httpGet('https://fernando-herrera.com/courses');
    print('Success (example 1): $value');
  } on Exception catch (err) {
    print('We have an Exception in example 1: $err');
  } catch (err) {
    print('OOPS!! Something terrible happened in example 1: $err');
  } finally {
    print('End of try and catch in example 1');
  }

  // Example 2: Throws a generic error (not an Exception)
  try {
    final value = await httpGetGeneric('https://irving-portfolio.com/projects');
    print('Success (example 2): $value');
  } on Exception catch (err) {
    print('We have an Exception in example 2: $err');
  } catch (err) {
    print('OOPS!! Something terrible happened in example 2: $err');
  } finally {
    print('End of try and catch in example 2');
  }

  print('Program end');
}


// Simulation of a request that throws an Exception
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No parameters in the URL');
}

// Simulation of a request that throws a generic error (String)
Future<String> httpGetGeneric(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw 'Request error when querying $url';
}
