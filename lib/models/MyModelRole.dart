class MyModelRole {
  String _modelRef;
  int _modelAccess;
  int _domainAccess;
  int _CapabilityAccess;
  int _ServiceAccess;

  MyModelRole(this._modelRef, this._modelAccess, this._domainAccess,
      this._CapabilityAccess, this._ServiceAccess);

  int get ServiceAccess => _ServiceAccess;

  set ServiceAccess(int value) {
    _ServiceAccess = value;
  }

  int get CapabilityAccess => _CapabilityAccess;

  set CapabilityAccess(int value) {
    _CapabilityAccess = value;
  }

  int get domainAccess => _domainAccess;

  set domainAccess(int value) {
    _domainAccess = value;
  }

  int get modelAccess => _modelAccess;

  set modelAccess(int value) {
    _modelAccess = value;
  }

  String get modelRef => _modelRef;

  set modelRef(String value) {
    _modelRef = value;
  }


}