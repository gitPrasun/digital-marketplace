import 'package:digital_marketplace/models/MetaProperty.dart';
import 'package:digital_marketplace/models/Property.dart';

class BuildingBlock {
  String? _id; //For in cache
  String _name;
  String? _desc;
  String? _group;
  DateTime _lastUpdated;
  DateTime _createdOn;
  int? _maturityIndex;
  int? _popularityIndex;
  bool? _isReusable;
  bool? _isSellable;
  List<Property>? _properties;
  //List<MetaProperty>? _metaProperties;
  

  List<Property>? get properties => _properties;

  set properties(List<Property>? value) {
    _properties = value;
  }

  String? get group => _group;

  set group(String? value) {
    _group = value;
  }


  String? get id => _id;

  BuildingBlock(
      this._id,
      this._name,
      this._desc,
      this._lastUpdated,
      this._createdOn,
      this._maturityIndex,
      this._popularityIndex,
      this._isReusable,
      this._isSellable,
      this._group);


  BuildingBlock.init(this._id, this._name, this._lastUpdated, this._createdOn);

  bool? get isSellable => _isSellable;

  set isSellable(bool? value) {
    _isSellable = value;
  }

  bool? get isReusable => _isReusable;

  set isReusable(bool? value) {
    _isReusable = value;
  }

  int? get popularityIndex => _popularityIndex;

  set popularityIndex(int? value) {
    _popularityIndex = value;
  }

  int? get maturityIndex => _maturityIndex;

  set maturityIndex(int? value) {
    _maturityIndex = value;
  }

  DateTime get createdOn => _createdOn;

  set createdOn(DateTime value) {
    _createdOn = value;
  }

  DateTime get lastUpdated => _lastUpdated;

  set lastUpdated(DateTime value) {
    _lastUpdated = value;
  }

  String? get desc => _desc;

  set desc(String? value) {
    _desc = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}
