// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'dashboard_showcase.dart';

class DashboardShowcaseMapper extends ClassMapperBase<DashboardShowcase> {
  DashboardShowcaseMapper._();

  static DashboardShowcaseMapper? _instance;
  static DashboardShowcaseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DashboardShowcaseMapper._());
      DashboardItemMapper.ensureInitialized();
      DashboardI18nMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DashboardShowcase';

  static List<DashboardItem> _$items(DashboardShowcase v) => v.items;
  static const Field<DashboardShowcase, List<DashboardItem>> _f$items =
      Field('items', _$items);
  static Map<String, DashboardI18n> _$i18n(DashboardShowcase v) => v.i18n;
  static const Field<DashboardShowcase, Map<String, DashboardI18n>> _f$i18n =
      Field('i18n', _$i18n);

  @override
  final MappableFields<DashboardShowcase> fields = const {
    #items: _f$items,
    #i18n: _f$i18n,
  };
  @override
  final bool ignoreNull = true;

  static DashboardShowcase _instantiate(DecodingData data) {
    return DashboardShowcase(
        items: data.dec(_f$items), i18n: data.dec(_f$i18n));
  }

  @override
  final Function instantiate = _instantiate;

  static DashboardShowcase fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DashboardShowcase>(map);
  }

  static DashboardShowcase fromJson(String json) {
    return ensureInitialized().decodeJson<DashboardShowcase>(json);
  }
}

mixin DashboardShowcaseMappable {
  String toJson() {
    return DashboardShowcaseMapper.ensureInitialized()
        .encodeJson<DashboardShowcase>(this as DashboardShowcase);
  }

  Map<String, dynamic> toMap() {
    return DashboardShowcaseMapper.ensureInitialized()
        .encodeMap<DashboardShowcase>(this as DashboardShowcase);
  }

  DashboardShowcaseCopyWith<DashboardShowcase, DashboardShowcase,
          DashboardShowcase>
      get copyWith =>
          _DashboardShowcaseCopyWithImpl<DashboardShowcase, DashboardShowcase>(
              this as DashboardShowcase, $identity, $identity);
  @override
  String toString() {
    return DashboardShowcaseMapper.ensureInitialized()
        .stringifyValue(this as DashboardShowcase);
  }

  @override
  bool operator ==(Object other) {
    return DashboardShowcaseMapper.ensureInitialized()
        .equalsValue(this as DashboardShowcase, other);
  }

  @override
  int get hashCode {
    return DashboardShowcaseMapper.ensureInitialized()
        .hashValue(this as DashboardShowcase);
  }
}

extension DashboardShowcaseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DashboardShowcase, $Out> {
  DashboardShowcaseCopyWith<$R, DashboardShowcase, $Out>
      get $asDashboardShowcase => $base
          .as((v, t, t2) => _DashboardShowcaseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DashboardShowcaseCopyWith<$R, $In extends DashboardShowcase,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, DashboardItem,
      DashboardItemCopyWith<$R, DashboardItem, DashboardItem>> get items;
  MapCopyWith<$R, String, DashboardI18n,
      DashboardI18nCopyWith<$R, DashboardI18n, DashboardI18n>> get i18n;
  $R call({List<DashboardItem>? items, Map<String, DashboardI18n>? i18n});
  DashboardShowcaseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DashboardShowcaseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DashboardShowcase, $Out>
    implements DashboardShowcaseCopyWith<$R, DashboardShowcase, $Out> {
  _DashboardShowcaseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DashboardShowcase> $mapper =
      DashboardShowcaseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, DashboardItem,
          DashboardItemCopyWith<$R, DashboardItem, DashboardItem>>
      get items => ListCopyWith(
          $value.items, (v, t) => v.copyWith.$chain(t), (v) => call(items: v));
  @override
  MapCopyWith<$R, String, DashboardI18n,
          DashboardI18nCopyWith<$R, DashboardI18n, DashboardI18n>>
      get i18n => MapCopyWith(
          $value.i18n, (v, t) => v.copyWith.$chain(t), (v) => call(i18n: v));
  @override
  $R call({List<DashboardItem>? items, Map<String, DashboardI18n>? i18n}) =>
      $apply(FieldCopyWithData(
          {if (items != null) #items: items, if (i18n != null) #i18n: i18n}));
  @override
  DashboardShowcase $make(CopyWithData data) => DashboardShowcase(
      items: data.get(#items, or: $value.items),
      i18n: data.get(#i18n, or: $value.i18n));

  @override
  DashboardShowcaseCopyWith<$R2, DashboardShowcase, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DashboardShowcaseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DashboardItemMapper extends ClassMapperBase<DashboardItem> {
  DashboardItemMapper._();

  static DashboardItemMapper? _instance;
  static DashboardItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DashboardItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DashboardItem';

  static String _$item(DashboardItem v) => v.item;
  static const Field<DashboardItem, String> _f$item = Field('item', _$item);
  static String _$background(DashboardItem v) => v.background;
  static const Field<DashboardItem, String> _f$background =
      Field('background', _$background);
  static bool _$isBigCard(DashboardItem v) => v.isBigCard;
  static const Field<DashboardItem, bool> _f$isBigCard =
      Field('isBigCard', _$isBigCard, key: r'bigCard');

  @override
  final MappableFields<DashboardItem> fields = const {
    #item: _f$item,
    #background: _f$background,
    #isBigCard: _f$isBigCard,
  };
  @override
  final bool ignoreNull = true;

  static DashboardItem _instantiate(DecodingData data) {
    return DashboardItem(
        item: data.dec(_f$item),
        background: data.dec(_f$background),
        isBigCard: data.dec(_f$isBigCard));
  }

  @override
  final Function instantiate = _instantiate;

  static DashboardItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DashboardItem>(map);
  }

  static DashboardItem fromJson(String json) {
    return ensureInitialized().decodeJson<DashboardItem>(json);
  }
}

mixin DashboardItemMappable {
  String toJson() {
    return DashboardItemMapper.ensureInitialized()
        .encodeJson<DashboardItem>(this as DashboardItem);
  }

  Map<String, dynamic> toMap() {
    return DashboardItemMapper.ensureInitialized()
        .encodeMap<DashboardItem>(this as DashboardItem);
  }

  DashboardItemCopyWith<DashboardItem, DashboardItem, DashboardItem>
      get copyWith => _DashboardItemCopyWithImpl<DashboardItem, DashboardItem>(
          this as DashboardItem, $identity, $identity);
  @override
  String toString() {
    return DashboardItemMapper.ensureInitialized()
        .stringifyValue(this as DashboardItem);
  }

  @override
  bool operator ==(Object other) {
    return DashboardItemMapper.ensureInitialized()
        .equalsValue(this as DashboardItem, other);
  }

  @override
  int get hashCode {
    return DashboardItemMapper.ensureInitialized()
        .hashValue(this as DashboardItem);
  }
}

extension DashboardItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DashboardItem, $Out> {
  DashboardItemCopyWith<$R, DashboardItem, $Out> get $asDashboardItem =>
      $base.as((v, t, t2) => _DashboardItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DashboardItemCopyWith<$R, $In extends DashboardItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? item, String? background, bool? isBigCard});
  DashboardItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DashboardItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DashboardItem, $Out>
    implements DashboardItemCopyWith<$R, DashboardItem, $Out> {
  _DashboardItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DashboardItem> $mapper =
      DashboardItemMapper.ensureInitialized();
  @override
  $R call({String? item, String? background, bool? isBigCard}) =>
      $apply(FieldCopyWithData({
        if (item != null) #item: item,
        if (background != null) #background: background,
        if (isBigCard != null) #isBigCard: isBigCard
      }));
  @override
  DashboardItem $make(CopyWithData data) => DashboardItem(
      item: data.get(#item, or: $value.item),
      background: data.get(#background, or: $value.background),
      isBigCard: data.get(#isBigCard, or: $value.isBigCard));

  @override
  DashboardItemCopyWith<$R2, DashboardItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DashboardItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
