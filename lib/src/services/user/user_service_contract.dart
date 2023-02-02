
//this is just a template for other classes
//includes future classes that are created asynchronously
import '../../models/user.dart';

abstract class IUserService {
  // Creating Abstract Methods
  // void say();
  User connect(User user)
  {
    User user = User('', '', '', false, DateTime(0, 0, 0, 0, 0, 0, 0, 0));
    return user;
  }
}