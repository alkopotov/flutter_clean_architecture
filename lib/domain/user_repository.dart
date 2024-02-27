import 'package:architecture/data/models/user_model.dart';
import 'package:architecture/data/user_data_sorce.dart';

class UserRepository {
  static Future<UserModel> getUser() async {
    final json = await UserDataSource().getUser();
    return UserModel.fromJson(json);
  }
}