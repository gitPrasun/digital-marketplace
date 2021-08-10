import 'package:digital_marketplace/models/MyModelRole.dart';

class OwnerRoles{
  String _uid;
  String? _pwd;
  bool _isAuthenticated = false;
  //modelRoles
  List<MyModelRole>? _modelRoles;

  OwnerRoles(this._uid, this._isAuthenticated);

  List<MyModelRole>? get modelRoles => _modelRoles;

  set modelRoles(List<MyModelRole>? value) {
    _modelRoles = value;
  }

  bool get isAuthenticated => _isAuthenticated;

  set isAuthenticated(bool value) {
    _isAuthenticated = value;
  }

  String? get pwd => _pwd;

  set pwd(String? value) {
    _pwd = value;
  }

  String get uid => _uid;

  set uid(String value) {
    _uid = value;
  }


}