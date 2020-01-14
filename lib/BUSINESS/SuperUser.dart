import 'User.dart';

class SuperUser extends User {
  SuperUser(String username, String password) : super(username, password) {
    this.username = username;
    this.password = password;
  }

  void FillUser(
      username, password, firstName, lastName, email, phoneNumber, birthDate) {
    this.username = username;
    this.password = password;
    this.firstName = firstName;
    this.lastName = lastName;
    this.email = email;
    this.phoneNumber = phoneNumber;
    this.birthDate = birthDate;
  }
}
