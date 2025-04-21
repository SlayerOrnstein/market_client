// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'enums.dart';

class MarketPlatformMapper extends EnumMapper<MarketPlatform> {
  MarketPlatformMapper._();

  static MarketPlatformMapper? _instance;
  static MarketPlatformMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MarketPlatformMapper._());
    }
    return _instance!;
  }

  static MarketPlatform fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MarketPlatform decode(dynamic value) {
    switch (value) {
      case r'pc':
        return MarketPlatform.pc;
      case r'ps4':
        return MarketPlatform.ps4;
      case r'swi':
        return MarketPlatform.swi;
      case r'xbox':
        return MarketPlatform.xbox;
      case r'mobile':
        return MarketPlatform.mobile;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MarketPlatform self) {
    switch (self) {
      case MarketPlatform.pc:
        return r'pc';
      case MarketPlatform.ps4:
        return r'ps4';
      case MarketPlatform.swi:
        return r'swi';
      case MarketPlatform.xbox:
        return r'xbox';
      case MarketPlatform.mobile:
        return r'mobile';
    }
  }
}

extension MarketPlatformMapperExtension on MarketPlatform {
  String toValue() {
    MarketPlatformMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MarketPlatform>(this) as String;
  }
}

class RarityMapper extends EnumMapper<Rarity> {
  RarityMapper._();

  static RarityMapper? _instance;
  static RarityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RarityMapper._());
    }
    return _instance!;
  }

  static Rarity fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Rarity decode(dynamic value) {
    switch (value) {
      case r'common':
        return Rarity.common;
      case r'uncommon':
        return Rarity.uncommon;
      case r'rare':
        return Rarity.rare;
      case r'legendary':
        return Rarity.legendary;
      case r'peculiar':
        return Rarity.peculiar;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Rarity self) {
    switch (self) {
      case Rarity.common:
        return r'common';
      case Rarity.uncommon:
        return r'uncommon';
      case Rarity.rare:
        return r'rare';
      case Rarity.legendary:
        return r'legendary';
      case Rarity.peculiar:
        return r'peculiar';
    }
  }
}

extension RarityMapperExtension on Rarity {
  String toValue() {
    RarityMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Rarity>(this) as String;
  }
}

class OrderTypeMapper extends EnumMapper<OrderType> {
  OrderTypeMapper._();

  static OrderTypeMapper? _instance;
  static OrderTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderTypeMapper._());
    }
    return _instance!;
  }

  static OrderType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  OrderType decode(dynamic value) {
    switch (value) {
      case r'sell':
        return OrderType.sell;
      case r'buy':
        return OrderType.buy;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(OrderType self) {
    switch (self) {
      case OrderType.sell:
        return r'sell';
      case OrderType.buy:
        return r'buy';
    }
  }
}

extension OrderTypeMapperExtension on OrderType {
  String toValue() {
    OrderTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<OrderType>(this) as String;
  }
}

class FactionMapper extends EnumMapper<Faction> {
  FactionMapper._();

  static FactionMapper? _instance;
  static FactionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FactionMapper._());
    }
    return _instance!;
  }

  static Faction fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Faction decode(dynamic value) {
    switch (value) {
      case r'infested':
        return Faction.infested;
      case r'grineer':
        return Faction.grineer;
      case r'corpus':
        return Faction.corpus;
      case r'corrupted':
        return Faction.corrupted;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Faction self) {
    switch (self) {
      case Faction.infested:
        return r'infested';
      case Faction.grineer:
        return r'grineer';
      case Faction.corpus:
        return r'corpus';
      case Faction.corrupted:
        return r'corrupted';
    }
  }
}

extension FactionMapperExtension on Faction {
  String toValue() {
    FactionMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Faction>(this) as String;
  }
}
