import 'package:digital_marketplace/models/BuildingBlock.dart';
import 'package:digital_marketplace/models/MetaProperty.dart';
import 'package:flutter/material.dart';

class Continuum extends ChangeNotifier{
  Set<BuildingBlock>? _fundamentalABB;
  Set<BuildingBlock>? _fundamentalSBB;
  Set<BuildingBlock>? _commonSystemABB;
  Set<BuildingBlock>? _commonSystemSBB;
  Set<BuildingBlock>? _industryABB;
  Set<BuildingBlock>? _industrySBB;
  Set<BuildingBlock>? _organizationABB;
  Set<BuildingBlock>? _organizationSBB;

  Set<BuildingBlock>? get fundamentalABB => _fundamentalABB;
  Set<BuildingBlock>? get fundamentalSBB => _fundamentalSBB;
  Set<BuildingBlock>? get commonSystemABB => _commonSystemABB;
  Set<BuildingBlock>? get commonSystemSBB => _commonSystemSBB;
  Set<BuildingBlock>? get industryABB => _industryABB;
  Set<BuildingBlock>? get industrySBB => _industrySBB;
  Set<BuildingBlock>? get organizationABB => _organizationABB;
  Set<BuildingBlock>? get organizationSBB => _organizationSBB;

  Continuum(
      this._fundamentalABB,
      this._fundamentalSBB,
      this._commonSystemABB,
      this._commonSystemSBB,
      this._industryABB,
      this._industrySBB,
      this._organizationABB,
      this._organizationSBB);

  Continuum.init();

  void addBuildingBlock(String type,String archType,BuildingBlock bb) {
      switch (type) {
        case 'FUNDAMENTAL':
          archType == 'ABB' ? _fundamentalABB!.add(bb) :_fundamentalSBB!.add(bb);
          break;
        case 'COMMONSYSTEM':
          archType == 'ABB'? _commonSystemABB!.add(bb) : _commonSystemSBB!.add(bb);
          break;
        case 'INDUSTRY':
          archType == 'ABB' ? _industryABB!.add(bb) : _industrySBB!.add(bb);
          break;
        case 'ORGANIZATION':
          archType == 'ABB' ? _organizationABB!.add(bb) : _organizationSBB!.add(bb);
          break;
      }
      notifyListeners();
    }

    void modifyBuildingBlock(BuildingBlock modified){
      //TODO: get the block

    }
    void addMetaProp(MetaProperty mprop){

    }
    //void addMetaProperty();

}