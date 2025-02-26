// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'riven.dart';

class RivenTypeMapper extends EnumMapper<RivenType> {
  RivenTypeMapper._();

  static RivenTypeMapper? _instance;
  static RivenTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RivenTypeMapper._());
    }
    return _instance!;
  }

  static RivenType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  RivenType decode(dynamic value) {
    switch (value) {
      case 'kitgun':
        return RivenType.kitgun;
      case 'melee':
        return RivenType.melee;
      case 'pistol':
        return RivenType.pistol;
      case 'rifle':
        return RivenType.rifle;
      case 'shotgun':
        return RivenType.shotgun;
      case 'zaw':
        return RivenType.zaw;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(RivenType self) {
    switch (self) {
      case RivenType.kitgun:
        return 'kitgun';
      case RivenType.melee:
        return 'melee';
      case RivenType.pistol:
        return 'pistol';
      case RivenType.rifle:
        return 'rifle';
      case RivenType.shotgun:
        return 'shotgun';
      case RivenType.zaw:
        return 'zaw';
    }
  }
}

extension RivenTypeMapperExtension on RivenType {
  String toValue() {
    RivenTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<RivenType>(this) as String;
  }
}

class RivenMapper extends ClassMapperBase<Riven> {
  RivenMapper._();

  static RivenMapper? _instance;
  static RivenMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RivenMapper._());
      RivenTypeMapper.ensureInitialized();
      RivenI18nMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Riven';

  static String _$id(Riven v) => v.id;
  static const Field<Riven, String> _f$id = Field('id', _$id);
  static String _$slug(Riven v) => v.slug;
  static const Field<Riven, String> _f$slug = Field('slug', _$slug);
  static String _$gameRef(Riven v) => v.gameRef;
  static const Field<Riven, String> _f$gameRef = Field('gameRef', _$gameRef);
  static String? _$group(Riven v) => v.group;
  static const Field<Riven, String> _f$group = Field('group', _$group);
  static RivenType? _$rivenType(Riven v) => v.rivenType;
  static const Field<Riven, RivenType> _f$rivenType = Field('rivenType', _$rivenType);
  static double _$disposition(Riven v) => v.disposition;
  static const Field<Riven, double> _f$disposition = Field('disposition', _$disposition);
  static int _$reqMasteryRank(Riven v) => v.reqMasteryRank;
  static const Field<Riven, int> _f$reqMasteryRank = Field('reqMasteryRank', _$reqMasteryRank);
  static Map<String, RivenI18n> _$i18n(Riven v) => v.i18n;
  static const Field<Riven, Map<String, RivenI18n>> _f$i18n = Field('i18n', _$i18n);

  @override
  final MappableFields<Riven> fields = const {
    #id: _f$id,
    #slug: _f$slug,
    #gameRef: _f$gameRef,
    #group: _f$group,
    #rivenType: _f$rivenType,
    #disposition: _f$disposition,
    #reqMasteryRank: _f$reqMasteryRank,
    #i18n: _f$i18n,
  };
  @override
  final bool ignoreNull = true;

  static Riven _instantiate(DecodingData data) {
    return Riven(
      id: data.dec(_f$id),
      slug: data.dec(_f$slug),
      gameRef: data.dec(_f$gameRef),
      group: data.dec(_f$group),
      rivenType: data.dec(_f$rivenType),
      disposition: data.dec(_f$disposition),
      reqMasteryRank: data.dec(_f$reqMasteryRank),
      i18n: data.dec(_f$i18n),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Riven fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Riven>(map);
  }

  static Riven fromJson(String json) {
    return ensureInitialized().decodeJson<Riven>(json);
  }
}

mixin RivenMappable {
  String toJson() {
    return RivenMapper.ensureInitialized().encodeJson<Riven>(this as Riven);
  }

  Map<String, dynamic> toMap() {
    return RivenMapper.ensureInitialized().encodeMap<Riven>(this as Riven);
  }

  RivenCopyWith<Riven, Riven, Riven> get copyWith => _RivenCopyWithImpl(this as Riven, $identity, $identity);
  @override
  String toString() {
    return RivenMapper.ensureInitialized().stringifyValue(this as Riven);
  }

  @override
  bool operator ==(Object other) {
    return RivenMapper.ensureInitialized().equalsValue(this as Riven, other);
  }

  @override
  int get hashCode {
    return RivenMapper.ensureInitialized().hashValue(this as Riven);
  }
}

extension RivenValueCopy<$R, $Out> on ObjectCopyWith<$R, Riven, $Out> {
  RivenCopyWith<$R, Riven, $Out> get $asRiven => $base.as((v, t, t2) => _RivenCopyWithImpl(v, t, t2));
}

abstract class RivenCopyWith<$R, $In extends Riven, $Out> implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, RivenI18n, RivenI18nCopyWith<$R, RivenI18n, RivenI18n>> get i18n;
  $R call({
    String? id,
    String? slug,
    String? gameRef,
    String? group,
    RivenType? rivenType,
    double? disposition,
    int? reqMasteryRank,
    Map<String, RivenI18n>? i18n,
  });
  RivenCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RivenCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Riven, $Out>
    implements RivenCopyWith<$R, Riven, $Out> {
  _RivenCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Riven> $mapper = RivenMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, RivenI18n, RivenI18nCopyWith<$R, RivenI18n, RivenI18n>> get i18n =>
      MapCopyWith($value.i18n, (v, t) => v.copyWith.$chain(t), (v) => call(i18n: v));
  @override
  $R call({
    String? id,
    String? slug,
    String? gameRef,
    Object? group = $none,
    Object? rivenType = $none,
    double? disposition,
    int? reqMasteryRank,
    Map<String, RivenI18n>? i18n,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (slug != null) #slug: slug,
      if (gameRef != null) #gameRef: gameRef,
      if (group != $none) #group: group,
      if (rivenType != $none) #rivenType: rivenType,
      if (disposition != null) #disposition: disposition,
      if (reqMasteryRank != null) #reqMasteryRank: reqMasteryRank,
      if (i18n != null) #i18n: i18n,
    }),
  );
  @override
  Riven $make(CopyWithData data) => Riven(
    id: data.get(#id, or: $value.id),
    slug: data.get(#slug, or: $value.slug),
    gameRef: data.get(#gameRef, or: $value.gameRef),
    group: data.get(#group, or: $value.group),
    rivenType: data.get(#rivenType, or: $value.rivenType),
    disposition: data.get(#disposition, or: $value.disposition),
    reqMasteryRank: data.get(#reqMasteryRank, or: $value.reqMasteryRank),
    i18n: data.get(#i18n, or: $value.i18n),
  );

  @override
  RivenCopyWith<$R2, Riven, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) => _RivenCopyWithImpl($value, $cast, t);
}

class RivenI18nMapper extends ClassMapperBase<RivenI18n> {
  RivenI18nMapper._();

  static RivenI18nMapper? _instance;
  static RivenI18nMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RivenI18nMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RivenI18n';

  static String _$itemName(RivenI18n v) => v.itemName;
  static const Field<RivenI18n, String> _f$itemName = Field('itemName', _$itemName);
  static String? _$wikiLink(RivenI18n v) => v.wikiLink;
  static const Field<RivenI18n, String> _f$wikiLink = Field('wikiLink', _$wikiLink);
  static String _$icon(RivenI18n v) => v.icon;
  static const Field<RivenI18n, String> _f$icon = Field('icon', _$icon);
  static String _$thumb(RivenI18n v) => v.thumb;
  static const Field<RivenI18n, String> _f$thumb = Field('thumb', _$thumb);

  @override
  final MappableFields<RivenI18n> fields = const {
    #itemName: _f$itemName,
    #wikiLink: _f$wikiLink,
    #icon: _f$icon,
    #thumb: _f$thumb,
  };
  @override
  final bool ignoreNull = true;

  static RivenI18n _instantiate(DecodingData data) {
    return RivenI18n(
      itemName: data.dec(_f$itemName),
      wikiLink: data.dec(_f$wikiLink),
      icon: data.dec(_f$icon),
      thumb: data.dec(_f$thumb),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RivenI18n fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RivenI18n>(map);
  }

  static RivenI18n fromJson(String json) {
    return ensureInitialized().decodeJson<RivenI18n>(json);
  }
}

mixin RivenI18nMappable {
  String toJson() {
    return RivenI18nMapper.ensureInitialized().encodeJson<RivenI18n>(this as RivenI18n);
  }

  Map<String, dynamic> toMap() {
    return RivenI18nMapper.ensureInitialized().encodeMap<RivenI18n>(this as RivenI18n);
  }

  RivenI18nCopyWith<RivenI18n, RivenI18n, RivenI18n> get copyWith =>
      _RivenI18nCopyWithImpl(this as RivenI18n, $identity, $identity);
  @override
  String toString() {
    return RivenI18nMapper.ensureInitialized().stringifyValue(this as RivenI18n);
  }

  @override
  bool operator ==(Object other) {
    return RivenI18nMapper.ensureInitialized().equalsValue(this as RivenI18n, other);
  }

  @override
  int get hashCode {
    return RivenI18nMapper.ensureInitialized().hashValue(this as RivenI18n);
  }
}

extension RivenI18nValueCopy<$R, $Out> on ObjectCopyWith<$R, RivenI18n, $Out> {
  RivenI18nCopyWith<$R, RivenI18n, $Out> get $asRivenI18n => $base.as((v, t, t2) => _RivenI18nCopyWithImpl(v, t, t2));
}

abstract class RivenI18nCopyWith<$R, $In extends RivenI18n, $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? itemName, String? wikiLink, String? icon, String? thumb});
  RivenI18nCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RivenI18nCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, RivenI18n, $Out>
    implements RivenI18nCopyWith<$R, RivenI18n, $Out> {
  _RivenI18nCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RivenI18n> $mapper = RivenI18nMapper.ensureInitialized();
  @override
  $R call({String? itemName, Object? wikiLink = $none, String? icon, String? thumb}) => $apply(
    FieldCopyWithData({
      if (itemName != null) #itemName: itemName,
      if (wikiLink != $none) #wikiLink: wikiLink,
      if (icon != null) #icon: icon,
      if (thumb != null) #thumb: thumb,
    }),
  );
  @override
  RivenI18n $make(CopyWithData data) => RivenI18n(
    itemName: data.get(#itemName, or: $value.itemName),
    wikiLink: data.get(#wikiLink, or: $value.wikiLink),
    icon: data.get(#icon, or: $value.icon),
    thumb: data.get(#thumb, or: $value.thumb),
  );

  @override
  RivenI18nCopyWith<$R2, RivenI18n, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RivenI18nCopyWithImpl($value, $cast, t);
}
