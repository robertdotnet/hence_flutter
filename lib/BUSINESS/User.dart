class User {
  String username, password, firstName, lastName, email, phoneNumber;
  DateTime
      birthDate; // construct with DateTime.utc(int year,int month, int day)

  User(this.username, this.password);

  void fillUser(
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
