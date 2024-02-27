class UserDataSource {
  Future<Map<String, dynamic>> getUser() async {
    await Future.delayed(const Duration(seconds: 1));
    return {
      'firstName' : 'Alex',
      'lastName' : 'Kopotov',
      'logged' : DateTime.now().toIso8601String()
    };
  }
}