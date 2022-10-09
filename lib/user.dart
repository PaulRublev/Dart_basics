class User {
  final String _email;
  User(this._email);
  @override
  String toString() => _email;
}

class AdminUser extends User with GetMail {
  AdminUser(super.email);
  @override
  String toString() => _getMailSystem;
}

class GeneralUser extends User {
  GeneralUser(super.email);
}

mixin GetMail on User {
  String get _getMailSystem => _email.substring(_email.indexOf('@') + 1);
}

class UserManager<T extends User> {
  final List<T> _listOfUsers = [];
  void addUser(T user) => _listOfUsers.add(user);
  void removeUser(T user) => _listOfUsers.remove(user);
  void printEmail() {
    for (var element in _listOfUsers) {
      print(element);
    }
  }
}
