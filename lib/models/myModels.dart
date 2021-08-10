import 'package:digital_marketplace/models/BuildingBlock.dart';
import 'package:digital_marketplace/models/Continuum.dart';
import 'package:digital_marketplace/models/MetaProperty.dart';
import 'package:digital_marketplace/models/OwnerRoles.Dart.dart';
import 'package:digital_marketplace/models/Property.dart';
import 'package:flutter/material.dart';

class MyModels extends ChangeNotifier{
  //TODO:Update update login
  OwnerRoles? _myRoles;
  List<Continuum>? _models;
  //myOwnerRoles
  //models

  //TODO: my model cache
  //myCurrentModel
   Continuum? _currentModel;

  OwnerRoles? get myRoles => _myRoles;

  List<Continuum>? get models => _models;

  Continuum? get currentModel => _currentModel;

  addRoles(OwnerRoles roles){
    //TODO: Commit Role to DB
  }

  createNewModel(Continuum model){
    this._currentModel = model;
    //TODO: Adapt to backend graph
    //TODO: Invoke backend API / commit changes
    notifyListeners();
  }
  addMetaPropertyToCurrentModel(MetaProperty metaProp){
    //TODO: Add to Current Model
    //TODO: Adapt to backend graph
    //TODO: Invoke backend API
    notifyListeners();
  }
  addModifyModelProperty(Property property, BuildingBlockRef){
    //TODO: Add to Current Model/ find in current Model
    //TODO: Adapt to backend graph
    //TODO: Invoke backend API / commit
    notifyListeners();
  }
  addModifyModelCapability(BuildingBlock capability){ // ? What requires a modify of the Element itself ? might be needed until the capability is created
    //TODO: Add to Current Model
    //TODO: Adapt to backend graph
      //TODO: Determine type, MetaProperty,service
    //TODO: Invoke backend API /commit changes
    notifyListeners();
  }

}