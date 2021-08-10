class MetaProperty{
  String? _id; //for cacheed ones
  String  _name;
  String? _description;
  String? _type; //entity
  String? _UIContext;
  String _baseType;
  List<String>? _restrictedValues;
  String? _strdefault;
  int? _min;
  int? _max;
  int? _cardinality;
  int? _optionality;

  MetaProperty(this._name, this._baseType);


  String? get strdefault => _strdefault;

  set strdefault(String? value) {
    _strdefault = value;
  }

  int? get optionality => _optionality;

  set optionality(int? value) {
    _optionality = value;
  }

  int? get cardinality => _cardinality;

  set cardinality(int? value) {
    _cardinality = value;
  }

  int? get max => _max;

  set max(int? value) {
    _max = value;
  }

  int? get min => _min;

  set min(int? value) {
    _min = value;
  }



  List<String>? get restrictedValues => _restrictedValues;

  set restrictedValues(List<String>? value) {
    _restrictedValues = value;
  }

  String get baseType => _baseType;

  set baseType(String value) {
    _baseType = value;
  }

  String? get UIContext => _UIContext;

  set UIContext(String? value) {
    _UIContext = value;
  }

  String? get type => _type;

  set type(String? value) {
    _type = value;
  }

  String? get description => _description;

  set description(String? value) {
    _description = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String? get id => _id;

  set id(String? value) {
    _id = value;
  }
}