// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'riven_attribute.dart';

class RivenAttributeMapper extends ClassMapperBase<RivenAttribute> {
  RivenAttributeMapper._();

  static RivenAttributeMapper? _instance;
  static RivenAttributeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RivenAttributeMapper._());
      _t$_R0Mapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RivenAttribute';

  static String _$id(RivenAttribute v) => v.id;
  static const Field<RivenAttribute, String> _f$id = Field('id', _$id);
  static String _$slug(RivenAttribute v) => v.slug;
  static const Field<RivenAttribute, String> _f$slug = Field('slug', _$slug);
  static String _$gameRef(RivenAttribute v) => v.gameRef;
  static const Field<RivenAttribute, String> _f$gameRef =
      Field('gameRef', _$gameRef);
  static String? _$group(RivenAttribute v) => v.group;
  static const Field<RivenAttribute, String> _f$group = Field('group', _$group);
  static String _$prefix(RivenAttribute v) => v.prefix;
  static const Field<RivenAttribute, String> _f$prefix =
      Field('prefix', _$prefix);
  static String _$suffix(RivenAttribute v) => v.suffix;
  static const Field<RivenAttribute, String> _f$suffix =
      Field('suffix', _$suffix);
  static List<String>? _$exclusiveTo(RivenAttribute v) => v.exclusiveTo;
  static const Field<RivenAttribute, List<String>> _f$exclusiveTo =
      Field('exclusiveTo', _$exclusiveTo);
  static bool? _$positiveIsNegative(RivenAttribute v) => v.positiveIsNegative;
  static const Field<RivenAttribute, bool> _f$positiveIsNegative =
      Field('positiveIsNegative', _$positiveIsNegative);
  static String? _$unit(RivenAttribute v) => v.unit;
  static const Field<RivenAttribute, String> _f$unit = Field('unit', _$unit);
  static bool? _$positiveOnly(RivenAttribute v) => v.positiveOnly;
  static const Field<RivenAttribute, bool> _f$positiveOnly =
      Field('positiveOnly', _$positiveOnly);
  static bool? _$negativeOnly(RivenAttribute v) => v.negativeOnly;
  static const Field<RivenAttribute, bool> _f$negativeOnly =
      Field('negativeOnly', _$negativeOnly);
  static Map<String, RivenAttributeI18n> _$i18n(RivenAttribute v) => v.i18n;
  static const Field<RivenAttribute, Map<String, RivenAttributeI18n>> _f$i18n =
      Field('i18n', _$i18n);

  @override
  final MappableFields<RivenAttribute> fields = const {
    #id: _f$id,
    #slug: _f$slug,
    #gameRef: _f$gameRef,
    #group: _f$group,
    #prefix: _f$prefix,
    #suffix: _f$suffix,
    #exclusiveTo: _f$exclusiveTo,
    #positiveIsNegative: _f$positiveIsNegative,
    #unit: _f$unit,
    #positiveOnly: _f$positiveOnly,
    #negativeOnly: _f$negativeOnly,
    #i18n: _f$i18n,
  };
  @override
  final bool ignoreNull = true;

  static RivenAttribute _instantiate(DecodingData data) {
    return RivenAttribute(
        id: data.dec(_f$id),
        slug: data.dec(_f$slug),
        gameRef: data.dec(_f$gameRef),
        group: data.dec(_f$group),
        prefix: data.dec(_f$prefix),
        suffix: data.dec(_f$suffix),
        exclusiveTo: data.dec(_f$exclusiveTo),
        positiveIsNegative: data.dec(_f$positiveIsNegative),
        unit: data.dec(_f$unit),
        positiveOnly: data.dec(_f$positiveOnly),
        negativeOnly: data.dec(_f$negativeOnly),
        i18n: data.dec(_f$i18n));
  }

  @override
  final Function instantiate = _instantiate;

  static RivenAttribute fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RivenAttribute>(map);
  }

  static RivenAttribute fromJson(String json) {
    return ensureInitialized().decodeJson<RivenAttribute>(json);
  }
}

mixin RivenAttributeMappable {
  String toJson() {
    return RivenAttributeMapper.ensureInitialized()
        .encodeJson<RivenAttribute>(this as RivenAttribute);
  }

  Map<String, dynamic> toMap() {
    return RivenAttributeMapper.ensureInitialized()
        .encodeMap<RivenAttribute>(this as RivenAttribute);
  }

  RivenAttributeCopyWith<RivenAttribute, RivenAttribute, RivenAttribute>
      get copyWith => _RivenAttributeCopyWithImpl(
          this as RivenAttribute, $identity, $identity);
  @override
  String toString() {
    return RivenAttributeMapper.ensureInitialized()
        .stringifyValue(this as RivenAttribute);
  }

  @override
  bool operator ==(Object other) {
    return RivenAttributeMapper.ensureInitialized()
        .equalsValue(this as RivenAttribute, other);
  }

  @override
  int get hashCode {
    return RivenAttributeMapper.ensureInitialized()
        .hashValue(this as RivenAttribute);
  }
}

extension RivenAttributeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RivenAttribute, $Out> {
  RivenAttributeCopyWith<$R, RivenAttribute, $Out> get $asRivenAttribute =>
      $base.as((v, t, t2) => _RivenAttributeCopyWithImpl(v, t, t2));
}

abstract class RivenAttributeCopyWith<$R, $In extends RivenAttribute, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get exclusiveTo;
  MapCopyWith<$R, String, RivenAttributeI18n,
      ObjectCopyWith<$R, RivenAttributeI18n, RivenAttributeI18n>> get i18n;
  $R call(
      {String? id,
      String? slug,
      String? gameRef,
      String? group,
      String? prefix,
      String? suffix,
      List<String>? exclusiveTo,
      bool? positiveIsNegative,
      String? unit,
      bool? positiveOnly,
      bool? negativeOnly,
      Map<String, RivenAttributeI18n>? i18n});
  RivenAttributeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RivenAttributeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RivenAttribute, $Out>
    implements RivenAttributeCopyWith<$R, RivenAttribute, $Out> {
  _RivenAttributeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RivenAttribute> $mapper =
      RivenAttributeMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get exclusiveTo => $value.exclusiveTo != null
          ? ListCopyWith(
              $value.exclusiveTo!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(exclusiveTo: v))
          : null;
  @override
  MapCopyWith<$R, String, RivenAttributeI18n,
          ObjectCopyWith<$R, RivenAttributeI18n, RivenAttributeI18n>>
      get i18n => MapCopyWith($value.i18n,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(i18n: v));
  @override
  $R call(
          {String? id,
          String? slug,
          String? gameRef,
          Object? group = $none,
          String? prefix,
          String? suffix,
          Object? exclusiveTo = $none,
          Object? positiveIsNegative = $none,
          Object? unit = $none,
          Object? positiveOnly = $none,
          Object? negativeOnly = $none,
          Map<String, RivenAttributeI18n>? i18n}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (slug != null) #slug: slug,
        if (gameRef != null) #gameRef: gameRef,
        if (group != $none) #group: group,
        if (prefix != null) #prefix: prefix,
        if (suffix != null) #suffix: suffix,
        if (exclusiveTo != $none) #exclusiveTo: exclusiveTo,
        if (positiveIsNegative != $none)
          #positiveIsNegative: positiveIsNegative,
        if (unit != $none) #unit: unit,
        if (positiveOnly != $none) #positiveOnly: positiveOnly,
        if (negativeOnly != $none) #negativeOnly: negativeOnly,
        if (i18n != null) #i18n: i18n
      }));
  @override
  RivenAttribute $make(CopyWithData data) => RivenAttribute(
      id: data.get(#id, or: $value.id),
      slug: data.get(#slug, or: $value.slug),
      gameRef: data.get(#gameRef, or: $value.gameRef),
      group: data.get(#group, or: $value.group),
      prefix: data.get(#prefix, or: $value.prefix),
      suffix: data.get(#suffix, or: $value.suffix),
      exclusiveTo: data.get(#exclusiveTo, or: $value.exclusiveTo),
      positiveIsNegative:
          data.get(#positiveIsNegative, or: $value.positiveIsNegative),
      unit: data.get(#unit, or: $value.unit),
      positiveOnly: data.get(#positiveOnly, or: $value.positiveOnly),
      negativeOnly: data.get(#negativeOnly, or: $value.negativeOnly),
      i18n: data.get(#i18n, or: $value.i18n));

  @override
  RivenAttributeCopyWith<$R2, RivenAttribute, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RivenAttributeCopyWithImpl($value, $cast, t);
}

typedef _t$_R0<A, B, C> = ({A effect, B icon, C thumb});

class _t$_R0Mapper extends RecordMapperBase<_t$_R0> {
  static _t$_R0Mapper? _instance;
  _t$_R0Mapper._();

  static _t$_R0Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R0Mapper._());
      MapperBase.addType(<A, B, C>(f) => f<({A effect, B icon, C thumb})>());
    }
    return _instance!;
  }

  static dynamic _$effect(_t$_R0 v) => v.effect;
  static dynamic _arg$effect<A, B, C>(f) => f<A>();
  static const Field<_t$_R0, dynamic> _f$effect =
      Field('effect', _$effect, arg: _arg$effect);
  static dynamic _$icon(_t$_R0 v) => v.icon;
  static dynamic _arg$icon<A, B, C>(f) => f<B>();
  static const Field<_t$_R0, dynamic> _f$icon =
      Field('icon', _$icon, arg: _arg$icon);
  static dynamic _$thumb(_t$_R0 v) => v.thumb;
  static dynamic _arg$thumb<A, B, C>(f) => f<C>();
  static const Field<_t$_R0, dynamic> _f$thumb =
      Field('thumb', _$thumb, arg: _arg$thumb);

  @override
  final MappableFields<_t$_R0> fields = const {
    #effect: _f$effect,
    #icon: _f$icon,
    #thumb: _f$thumb,
  };

  @override
  Function get typeFactory => <A, B, C>(f) => f<_t$_R0<A, B, C>>();

  static _t$_R0<A, B, C> _instantiate<A, B, C>(DecodingData<_t$_R0> data) {
    return (
      effect: data.dec(_f$effect),
      icon: data.dec(_f$icon),
      thumb: data.dec(_f$thumb)
    );
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R0<A, B, C> fromMap<A, B, C>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R0<A, B, C>>(map);
  }

  static _t$_R0<A, B, C> fromJson<A, B, C>(String json) {
    return ensureInitialized().decodeJson<_t$_R0<A, B, C>>(json);
  }
}
