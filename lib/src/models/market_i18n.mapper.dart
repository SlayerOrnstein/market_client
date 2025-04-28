// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'market_i18n.dart';

class DashboardI18nMapper extends ClassMapperBase<DashboardI18n> {
  DashboardI18nMapper._();

  static DashboardI18nMapper? _instance;
  static DashboardI18nMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DashboardI18nMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DashboardI18n';

  static String _$title(DashboardI18n v) => v.title;
  static const Field<DashboardI18n, String> _f$title = Field('title', _$title);
  static String? _$description(DashboardI18n v) => v.description;
  static const Field<DashboardI18n, String> _f$description =
      Field('description', _$description);

  @override
  final MappableFields<DashboardI18n> fields = const {
    #title: _f$title,
    #description: _f$description,
  };
  @override
  final bool ignoreNull = true;

  static DashboardI18n _instantiate(DecodingData data) {
    return DashboardI18n(
        title: data.dec(_f$title), description: data.dec(_f$description));
  }

  @override
  final Function instantiate = _instantiate;

  static DashboardI18n fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DashboardI18n>(map);
  }

  static DashboardI18n fromJson(String json) {
    return ensureInitialized().decodeJson<DashboardI18n>(json);
  }
}

mixin DashboardI18nMappable {
  String toJson() {
    return DashboardI18nMapper.ensureInitialized()
        .encodeJson<DashboardI18n>(this as DashboardI18n);
  }

  Map<String, dynamic> toMap() {
    return DashboardI18nMapper.ensureInitialized()
        .encodeMap<DashboardI18n>(this as DashboardI18n);
  }

  DashboardI18nCopyWith<DashboardI18n, DashboardI18n, DashboardI18n>
      get copyWith => _DashboardI18nCopyWithImpl<DashboardI18n, DashboardI18n>(
          this as DashboardI18n, $identity, $identity);
  @override
  String toString() {
    return DashboardI18nMapper.ensureInitialized()
        .stringifyValue(this as DashboardI18n);
  }

  @override
  bool operator ==(Object other) {
    return DashboardI18nMapper.ensureInitialized()
        .equalsValue(this as DashboardI18n, other);
  }

  @override
  int get hashCode {
    return DashboardI18nMapper.ensureInitialized()
        .hashValue(this as DashboardI18n);
  }
}

extension DashboardI18nValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DashboardI18n, $Out> {
  DashboardI18nCopyWith<$R, DashboardI18n, $Out> get $asDashboardI18n =>
      $base.as((v, t, t2) => _DashboardI18nCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DashboardI18nCopyWith<$R, $In extends DashboardI18n, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? title, String? description});
  DashboardI18nCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DashboardI18nCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DashboardI18n, $Out>
    implements DashboardI18nCopyWith<$R, DashboardI18n, $Out> {
  _DashboardI18nCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DashboardI18n> $mapper =
      DashboardI18nMapper.ensureInitialized();
  @override
  $R call({String? title, Object? description = $none}) =>
      $apply(FieldCopyWithData({
        if (title != null) #title: title,
        if (description != $none) #description: description
      }));
  @override
  DashboardI18n $make(CopyWithData data) => DashboardI18n(
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description));

  @override
  DashboardI18nCopyWith<$R2, DashboardI18n, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DashboardI18nCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ItemI18nMapper extends ClassMapperBase<ItemI18n> {
  ItemI18nMapper._();

  static ItemI18nMapper? _instance;
  static ItemI18nMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemI18nMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ItemI18n';

  static String _$name(ItemI18n v) => v.name;
  static const Field<ItemI18n, String> _f$name = Field('name', _$name);
  static String? _$description(ItemI18n v) => v.description;
  static const Field<ItemI18n, String> _f$description =
      Field('description', _$description, opt: true);
  static String? _$wikiLink(ItemI18n v) => v.wikiLink;
  static const Field<ItemI18n, String> _f$wikiLink =
      Field('wikiLink', _$wikiLink, opt: true);
  static String _$icon(ItemI18n v) => v.icon;
  static const Field<ItemI18n, String> _f$icon = Field('icon', _$icon);
  static String _$thumb(ItemI18n v) => v.thumb;
  static const Field<ItemI18n, String> _f$thumb = Field('thumb', _$thumb);
  static String? _$subIcon(ItemI18n v) => v.subIcon;
  static const Field<ItemI18n, String> _f$subIcon =
      Field('subIcon', _$subIcon, opt: true);

  @override
  final MappableFields<ItemI18n> fields = const {
    #name: _f$name,
    #description: _f$description,
    #wikiLink: _f$wikiLink,
    #icon: _f$icon,
    #thumb: _f$thumb,
    #subIcon: _f$subIcon,
  };
  @override
  final bool ignoreNull = true;

  static ItemI18n _instantiate(DecodingData data) {
    return ItemI18n(
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        wikiLink: data.dec(_f$wikiLink),
        icon: data.dec(_f$icon),
        thumb: data.dec(_f$thumb),
        subIcon: data.dec(_f$subIcon));
  }

  @override
  final Function instantiate = _instantiate;

  static ItemI18n fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ItemI18n>(map);
  }

  static ItemI18n fromJson(String json) {
    return ensureInitialized().decodeJson<ItemI18n>(json);
  }
}

mixin ItemI18nMappable {
  String toJson() {
    return ItemI18nMapper.ensureInitialized()
        .encodeJson<ItemI18n>(this as ItemI18n);
  }

  Map<String, dynamic> toMap() {
    return ItemI18nMapper.ensureInitialized()
        .encodeMap<ItemI18n>(this as ItemI18n);
  }

  ItemI18nCopyWith<ItemI18n, ItemI18n, ItemI18n> get copyWith =>
      _ItemI18nCopyWithImpl<ItemI18n, ItemI18n>(
          this as ItemI18n, $identity, $identity);
  @override
  String toString() {
    return ItemI18nMapper.ensureInitialized().stringifyValue(this as ItemI18n);
  }

  @override
  bool operator ==(Object other) {
    return ItemI18nMapper.ensureInitialized()
        .equalsValue(this as ItemI18n, other);
  }

  @override
  int get hashCode {
    return ItemI18nMapper.ensureInitialized().hashValue(this as ItemI18n);
  }
}

extension ItemI18nValueCopy<$R, $Out> on ObjectCopyWith<$R, ItemI18n, $Out> {
  ItemI18nCopyWith<$R, ItemI18n, $Out> get $asItemI18n =>
      $base.as((v, t, t2) => _ItemI18nCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ItemI18nCopyWith<$R, $In extends ItemI18n, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? name,
      String? description,
      String? wikiLink,
      String? icon,
      String? thumb,
      String? subIcon});
  ItemI18nCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ItemI18nCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ItemI18n, $Out>
    implements ItemI18nCopyWith<$R, ItemI18n, $Out> {
  _ItemI18nCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ItemI18n> $mapper =
      ItemI18nMapper.ensureInitialized();
  @override
  $R call(
          {String? name,
          Object? description = $none,
          Object? wikiLink = $none,
          String? icon,
          String? thumb,
          Object? subIcon = $none}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (description != $none) #description: description,
        if (wikiLink != $none) #wikiLink: wikiLink,
        if (icon != null) #icon: icon,
        if (thumb != null) #thumb: thumb,
        if (subIcon != $none) #subIcon: subIcon
      }));
  @override
  ItemI18n $make(CopyWithData data) => ItemI18n(
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      wikiLink: data.get(#wikiLink, or: $value.wikiLink),
      icon: data.get(#icon, or: $value.icon),
      thumb: data.get(#thumb, or: $value.thumb),
      subIcon: data.get(#subIcon, or: $value.subIcon));

  @override
  ItemI18nCopyWith<$R2, ItemI18n, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ItemI18nCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class NemesisI18nMapper extends ClassMapperBase<NemesisI18n> {
  NemesisI18nMapper._();

  static NemesisI18nMapper? _instance;
  static NemesisI18nMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NemesisI18nMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NemesisI18n';

  static String _$itemName(NemesisI18n v) => v.itemName;
  static const Field<NemesisI18n, String> _f$itemName =
      Field('itemName', _$itemName);
  static String? _$description(NemesisI18n v) => v.description;
  static const Field<NemesisI18n, String> _f$description =
      Field('description', _$description);
  static String? _$wikiLink(NemesisI18n v) => v.wikiLink;
  static const Field<NemesisI18n, String> _f$wikiLink =
      Field('wikiLink', _$wikiLink);
  static String? _$icon(NemesisI18n v) => v.icon;
  static const Field<NemesisI18n, String> _f$icon = Field('icon', _$icon);
  static String? _$thumb(NemesisI18n v) => v.thumb;
  static const Field<NemesisI18n, String> _f$thumb = Field('thumb', _$thumb);

  @override
  final MappableFields<NemesisI18n> fields = const {
    #itemName: _f$itemName,
    #description: _f$description,
    #wikiLink: _f$wikiLink,
    #icon: _f$icon,
    #thumb: _f$thumb,
  };
  @override
  final bool ignoreNull = true;

  static NemesisI18n _instantiate(DecodingData data) {
    return NemesisI18n(
        itemName: data.dec(_f$itemName),
        description: data.dec(_f$description),
        wikiLink: data.dec(_f$wikiLink),
        icon: data.dec(_f$icon),
        thumb: data.dec(_f$thumb));
  }

  @override
  final Function instantiate = _instantiate;

  static NemesisI18n fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NemesisI18n>(map);
  }

  static NemesisI18n fromJson(String json) {
    return ensureInitialized().decodeJson<NemesisI18n>(json);
  }
}

mixin NemesisI18nMappable {
  String toJson() {
    return NemesisI18nMapper.ensureInitialized()
        .encodeJson<NemesisI18n>(this as NemesisI18n);
  }

  Map<String, dynamic> toMap() {
    return NemesisI18nMapper.ensureInitialized()
        .encodeMap<NemesisI18n>(this as NemesisI18n);
  }

  NemesisI18nCopyWith<NemesisI18n, NemesisI18n, NemesisI18n> get copyWith =>
      _NemesisI18nCopyWithImpl<NemesisI18n, NemesisI18n>(
          this as NemesisI18n, $identity, $identity);
  @override
  String toString() {
    return NemesisI18nMapper.ensureInitialized()
        .stringifyValue(this as NemesisI18n);
  }

  @override
  bool operator ==(Object other) {
    return NemesisI18nMapper.ensureInitialized()
        .equalsValue(this as NemesisI18n, other);
  }

  @override
  int get hashCode {
    return NemesisI18nMapper.ensureInitialized().hashValue(this as NemesisI18n);
  }
}

extension NemesisI18nValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NemesisI18n, $Out> {
  NemesisI18nCopyWith<$R, NemesisI18n, $Out> get $asNemesisI18n =>
      $base.as((v, t, t2) => _NemesisI18nCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NemesisI18nCopyWith<$R, $In extends NemesisI18n, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? itemName,
      String? description,
      String? wikiLink,
      String? icon,
      String? thumb});
  NemesisI18nCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NemesisI18nCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NemesisI18n, $Out>
    implements NemesisI18nCopyWith<$R, NemesisI18n, $Out> {
  _NemesisI18nCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NemesisI18n> $mapper =
      NemesisI18nMapper.ensureInitialized();
  @override
  $R call(
          {String? itemName,
          Object? description = $none,
          Object? wikiLink = $none,
          Object? icon = $none,
          Object? thumb = $none}) =>
      $apply(FieldCopyWithData({
        if (itemName != null) #itemName: itemName,
        if (description != $none) #description: description,
        if (wikiLink != $none) #wikiLink: wikiLink,
        if (icon != $none) #icon: icon,
        if (thumb != $none) #thumb: thumb
      }));
  @override
  NemesisI18n $make(CopyWithData data) => NemesisI18n(
      itemName: data.get(#itemName, or: $value.itemName),
      description: data.get(#description, or: $value.description),
      wikiLink: data.get(#wikiLink, or: $value.wikiLink),
      icon: data.get(#icon, or: $value.icon),
      thumb: data.get(#thumb, or: $value.thumb));

  @override
  NemesisI18nCopyWith<$R2, NemesisI18n, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NemesisI18nCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
