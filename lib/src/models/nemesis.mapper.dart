// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nemesis.dart';

class NemesisWeaponMapper extends ClassMapperBase<NemesisWeapon> {
  NemesisWeaponMapper._();

  static NemesisWeaponMapper? _instance;
  static NemesisWeaponMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NemesisWeaponMapper._());
      NemesisI18nMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NemesisWeapon';

  static String _$id(NemesisWeapon v) => v.id;
  static const Field<NemesisWeapon, String> _f$id = Field('id', _$id);
  static String _$slug(NemesisWeapon v) => v.slug;
  static const Field<NemesisWeapon, String> _f$slug = Field('slug', _$slug);
  static String _$gameRef(NemesisWeapon v) => v.gameRef;
  static const Field<NemesisWeapon, String> _f$gameRef =
      Field('gameRef', _$gameRef);
  static int _$reqMasteryRank(NemesisWeapon v) => v.reqMasteryRank;
  static const Field<NemesisWeapon, int> _f$reqMasteryRank =
      Field('reqMasteryRank', _$reqMasteryRank);
  static Map<String, NemesisI18n> _$i18n(NemesisWeapon v) => v.i18n;
  static const Field<NemesisWeapon, Map<String, NemesisI18n>> _f$i18n =
      Field('i18n', _$i18n);

  @override
  final MappableFields<NemesisWeapon> fields = const {
    #id: _f$id,
    #slug: _f$slug,
    #gameRef: _f$gameRef,
    #reqMasteryRank: _f$reqMasteryRank,
    #i18n: _f$i18n,
  };
  @override
  final bool ignoreNull = true;

  static NemesisWeapon _instantiate(DecodingData data) {
    return NemesisWeapon(
        id: data.dec(_f$id),
        slug: data.dec(_f$slug),
        gameRef: data.dec(_f$gameRef),
        reqMasteryRank: data.dec(_f$reqMasteryRank),
        i18n: data.dec(_f$i18n));
  }

  @override
  final Function instantiate = _instantiate;

  static NemesisWeapon fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NemesisWeapon>(map);
  }

  static NemesisWeapon fromJson(String json) {
    return ensureInitialized().decodeJson<NemesisWeapon>(json);
  }
}

mixin NemesisWeaponMappable {
  String toJson() {
    return NemesisWeaponMapper.ensureInitialized()
        .encodeJson<NemesisWeapon>(this as NemesisWeapon);
  }

  Map<String, dynamic> toMap() {
    return NemesisWeaponMapper.ensureInitialized()
        .encodeMap<NemesisWeapon>(this as NemesisWeapon);
  }

  NemesisWeaponCopyWith<NemesisWeapon, NemesisWeapon, NemesisWeapon>
      get copyWith => _NemesisWeaponCopyWithImpl<NemesisWeapon, NemesisWeapon>(
          this as NemesisWeapon, $identity, $identity);
  @override
  String toString() {
    return NemesisWeaponMapper.ensureInitialized()
        .stringifyValue(this as NemesisWeapon);
  }

  @override
  bool operator ==(Object other) {
    return NemesisWeaponMapper.ensureInitialized()
        .equalsValue(this as NemesisWeapon, other);
  }

  @override
  int get hashCode {
    return NemesisWeaponMapper.ensureInitialized()
        .hashValue(this as NemesisWeapon);
  }
}

extension NemesisWeaponValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NemesisWeapon, $Out> {
  NemesisWeaponCopyWith<$R, NemesisWeapon, $Out> get $asNemesisWeapon =>
      $base.as((v, t, t2) => _NemesisWeaponCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NemesisWeaponCopyWith<$R, $In extends NemesisWeapon, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, NemesisI18n,
      NemesisI18nCopyWith<$R, NemesisI18n, NemesisI18n>> get i18n;
  $R call(
      {String? id,
      String? slug,
      String? gameRef,
      int? reqMasteryRank,
      Map<String, NemesisI18n>? i18n});
  NemesisWeaponCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NemesisWeaponCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NemesisWeapon, $Out>
    implements NemesisWeaponCopyWith<$R, NemesisWeapon, $Out> {
  _NemesisWeaponCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NemesisWeapon> $mapper =
      NemesisWeaponMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, NemesisI18n,
          NemesisI18nCopyWith<$R, NemesisI18n, NemesisI18n>>
      get i18n => MapCopyWith(
          $value.i18n, (v, t) => v.copyWith.$chain(t), (v) => call(i18n: v));
  @override
  $R call(
          {String? id,
          String? slug,
          String? gameRef,
          int? reqMasteryRank,
          Map<String, NemesisI18n>? i18n}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (slug != null) #slug: slug,
        if (gameRef != null) #gameRef: gameRef,
        if (reqMasteryRank != null) #reqMasteryRank: reqMasteryRank,
        if (i18n != null) #i18n: i18n
      }));
  @override
  NemesisWeapon $make(CopyWithData data) => NemesisWeapon(
      id: data.get(#id, or: $value.id),
      slug: data.get(#slug, or: $value.slug),
      gameRef: data.get(#gameRef, or: $value.gameRef),
      reqMasteryRank: data.get(#reqMasteryRank, or: $value.reqMasteryRank),
      i18n: data.get(#i18n, or: $value.i18n));

  @override
  NemesisWeaponCopyWith<$R2, NemesisWeapon, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NemesisWeaponCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class NemesisEphemeraMapper extends ClassMapperBase<NemesisEphemera> {
  NemesisEphemeraMapper._();

  static NemesisEphemeraMapper? _instance;
  static NemesisEphemeraMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NemesisEphemeraMapper._());
      NemesisI18nMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NemesisEphemera';

  static String _$id(NemesisEphemera v) => v.id;
  static const Field<NemesisEphemera, String> _f$id = Field('id', _$id);
  static String _$slug(NemesisEphemera v) => v.slug;
  static const Field<NemesisEphemera, String> _f$slug = Field('slug', _$slug);
  static String _$gameRef(NemesisEphemera v) => v.gameRef;
  static const Field<NemesisEphemera, String> _f$gameRef =
      Field('gameRef', _$gameRef);
  static String _$animation(NemesisEphemera v) => v.animation;
  static const Field<NemesisEphemera, String> _f$animation =
      Field('animation', _$animation);
  static String _$element(NemesisEphemera v) => v.element;
  static const Field<NemesisEphemera, String> _f$element =
      Field('element', _$element);
  static Map<String, NemesisI18n> _$i18n(NemesisEphemera v) => v.i18n;
  static const Field<NemesisEphemera, Map<String, NemesisI18n>> _f$i18n =
      Field('i18n', _$i18n);

  @override
  final MappableFields<NemesisEphemera> fields = const {
    #id: _f$id,
    #slug: _f$slug,
    #gameRef: _f$gameRef,
    #animation: _f$animation,
    #element: _f$element,
    #i18n: _f$i18n,
  };
  @override
  final bool ignoreNull = true;

  static NemesisEphemera _instantiate(DecodingData data) {
    return NemesisEphemera(
        id: data.dec(_f$id),
        slug: data.dec(_f$slug),
        gameRef: data.dec(_f$gameRef),
        animation: data.dec(_f$animation),
        element: data.dec(_f$element),
        i18n: data.dec(_f$i18n));
  }

  @override
  final Function instantiate = _instantiate;

  static NemesisEphemera fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NemesisEphemera>(map);
  }

  static NemesisEphemera fromJson(String json) {
    return ensureInitialized().decodeJson<NemesisEphemera>(json);
  }
}

mixin NemesisEphemeraMappable {
  String toJson() {
    return NemesisEphemeraMapper.ensureInitialized()
        .encodeJson<NemesisEphemera>(this as NemesisEphemera);
  }

  Map<String, dynamic> toMap() {
    return NemesisEphemeraMapper.ensureInitialized()
        .encodeMap<NemesisEphemera>(this as NemesisEphemera);
  }

  NemesisEphemeraCopyWith<NemesisEphemera, NemesisEphemera, NemesisEphemera>
      get copyWith =>
          _NemesisEphemeraCopyWithImpl<NemesisEphemera, NemesisEphemera>(
              this as NemesisEphemera, $identity, $identity);
  @override
  String toString() {
    return NemesisEphemeraMapper.ensureInitialized()
        .stringifyValue(this as NemesisEphemera);
  }

  @override
  bool operator ==(Object other) {
    return NemesisEphemeraMapper.ensureInitialized()
        .equalsValue(this as NemesisEphemera, other);
  }

  @override
  int get hashCode {
    return NemesisEphemeraMapper.ensureInitialized()
        .hashValue(this as NemesisEphemera);
  }
}

extension NemesisEphemeraValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NemesisEphemera, $Out> {
  NemesisEphemeraCopyWith<$R, NemesisEphemera, $Out> get $asNemesisEphemera =>
      $base.as((v, t, t2) => _NemesisEphemeraCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NemesisEphemeraCopyWith<$R, $In extends NemesisEphemera, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, NemesisI18n,
      NemesisI18nCopyWith<$R, NemesisI18n, NemesisI18n>> get i18n;
  $R call(
      {String? id,
      String? slug,
      String? gameRef,
      String? animation,
      String? element,
      Map<String, NemesisI18n>? i18n});
  NemesisEphemeraCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NemesisEphemeraCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NemesisEphemera, $Out>
    implements NemesisEphemeraCopyWith<$R, NemesisEphemera, $Out> {
  _NemesisEphemeraCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NemesisEphemera> $mapper =
      NemesisEphemeraMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, NemesisI18n,
          NemesisI18nCopyWith<$R, NemesisI18n, NemesisI18n>>
      get i18n => MapCopyWith(
          $value.i18n, (v, t) => v.copyWith.$chain(t), (v) => call(i18n: v));
  @override
  $R call(
          {String? id,
          String? slug,
          String? gameRef,
          String? animation,
          String? element,
          Map<String, NemesisI18n>? i18n}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (slug != null) #slug: slug,
        if (gameRef != null) #gameRef: gameRef,
        if (animation != null) #animation: animation,
        if (element != null) #element: element,
        if (i18n != null) #i18n: i18n
      }));
  @override
  NemesisEphemera $make(CopyWithData data) => NemesisEphemera(
      id: data.get(#id, or: $value.id),
      slug: data.get(#slug, or: $value.slug),
      gameRef: data.get(#gameRef, or: $value.gameRef),
      animation: data.get(#animation, or: $value.animation),
      element: data.get(#element, or: $value.element),
      i18n: data.get(#i18n, or: $value.i18n));

  @override
  NemesisEphemeraCopyWith<$R2, NemesisEphemera, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NemesisEphemeraCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class NemesisQuirkMapper extends ClassMapperBase<NemesisQuirk> {
  NemesisQuirkMapper._();

  static NemesisQuirkMapper? _instance;
  static NemesisQuirkMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NemesisQuirkMapper._());
      NemesisI18nMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NemesisQuirk';

  static String _$id(NemesisQuirk v) => v.id;
  static const Field<NemesisQuirk, String> _f$id = Field('id', _$id);
  static String _$slug(NemesisQuirk v) => v.slug;
  static const Field<NemesisQuirk, String> _f$slug = Field('slug', _$slug);
  static String? _$group(NemesisQuirk v) => v.group;
  static const Field<NemesisQuirk, String> _f$group = Field('group', _$group);
  static Map<String, NemesisI18n> _$i18n(NemesisQuirk v) => v.i18n;
  static const Field<NemesisQuirk, Map<String, NemesisI18n>> _f$i18n =
      Field('i18n', _$i18n);

  @override
  final MappableFields<NemesisQuirk> fields = const {
    #id: _f$id,
    #slug: _f$slug,
    #group: _f$group,
    #i18n: _f$i18n,
  };
  @override
  final bool ignoreNull = true;

  static NemesisQuirk _instantiate(DecodingData data) {
    return NemesisQuirk(
        id: data.dec(_f$id),
        slug: data.dec(_f$slug),
        group: data.dec(_f$group),
        i18n: data.dec(_f$i18n));
  }

  @override
  final Function instantiate = _instantiate;

  static NemesisQuirk fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NemesisQuirk>(map);
  }

  static NemesisQuirk fromJson(String json) {
    return ensureInitialized().decodeJson<NemesisQuirk>(json);
  }
}

mixin NemesisQuirkMappable {
  String toJson() {
    return NemesisQuirkMapper.ensureInitialized()
        .encodeJson<NemesisQuirk>(this as NemesisQuirk);
  }

  Map<String, dynamic> toMap() {
    return NemesisQuirkMapper.ensureInitialized()
        .encodeMap<NemesisQuirk>(this as NemesisQuirk);
  }

  NemesisQuirkCopyWith<NemesisQuirk, NemesisQuirk, NemesisQuirk> get copyWith =>
      _NemesisQuirkCopyWithImpl<NemesisQuirk, NemesisQuirk>(
          this as NemesisQuirk, $identity, $identity);
  @override
  String toString() {
    return NemesisQuirkMapper.ensureInitialized()
        .stringifyValue(this as NemesisQuirk);
  }

  @override
  bool operator ==(Object other) {
    return NemesisQuirkMapper.ensureInitialized()
        .equalsValue(this as NemesisQuirk, other);
  }

  @override
  int get hashCode {
    return NemesisQuirkMapper.ensureInitialized()
        .hashValue(this as NemesisQuirk);
  }
}

extension NemesisQuirkValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NemesisQuirk, $Out> {
  NemesisQuirkCopyWith<$R, NemesisQuirk, $Out> get $asNemesisQuirk =>
      $base.as((v, t, t2) => _NemesisQuirkCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NemesisQuirkCopyWith<$R, $In extends NemesisQuirk, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, NemesisI18n,
      NemesisI18nCopyWith<$R, NemesisI18n, NemesisI18n>> get i18n;
  $R call(
      {String? id,
      String? slug,
      String? group,
      Map<String, NemesisI18n>? i18n});
  NemesisQuirkCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NemesisQuirkCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NemesisQuirk, $Out>
    implements NemesisQuirkCopyWith<$R, NemesisQuirk, $Out> {
  _NemesisQuirkCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NemesisQuirk> $mapper =
      NemesisQuirkMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, NemesisI18n,
          NemesisI18nCopyWith<$R, NemesisI18n, NemesisI18n>>
      get i18n => MapCopyWith(
          $value.i18n, (v, t) => v.copyWith.$chain(t), (v) => call(i18n: v));
  @override
  $R call(
          {String? id,
          String? slug,
          Object? group = $none,
          Map<String, NemesisI18n>? i18n}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (slug != null) #slug: slug,
        if (group != $none) #group: group,
        if (i18n != null) #i18n: i18n
      }));
  @override
  NemesisQuirk $make(CopyWithData data) => NemesisQuirk(
      id: data.get(#id, or: $value.id),
      slug: data.get(#slug, or: $value.slug),
      group: data.get(#group, or: $value.group),
      i18n: data.get(#i18n, or: $value.i18n));

  @override
  NemesisQuirkCopyWith<$R2, NemesisQuirk, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NemesisQuirkCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
