// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'item.dart';

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
      _ItemI18nCopyWithImpl(this as ItemI18n, $identity, $identity);
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
      $base.as((v, t, t2) => _ItemI18nCopyWithImpl(v, t, t2));
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
      _ItemI18nCopyWithImpl($value, $cast, t);
}

class ItemShortMapper extends ClassMapperBase<ItemShort> {
  ItemShortMapper._();

  static ItemShortMapper? _instance;
  static ItemShortMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemShortMapper._());
      ItemI18nMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ItemShort';

  static String _$id(ItemShort v) => v.id;
  static const Field<ItemShort, String> _f$id = Field('id', _$id);
  static String _$slug(ItemShort v) => v.slug;
  static const Field<ItemShort, String> _f$slug = Field('slug', _$slug);
  static String _$gameRef(ItemShort v) => v.gameRef;
  static const Field<ItemShort, String> _f$gameRef =
      Field('gameRef', _$gameRef);
  static Map<String, ItemI18n> _$i18n(ItemShort v) => v.i18n;
  static const Field<ItemShort, Map<String, ItemI18n>> _f$i18n =
      Field('i18n', _$i18n);
  static List<String> _$tags(ItemShort v) => v.tags;
  static const Field<ItemShort, List<String>> _f$tags = Field('tags', _$tags);
  static int? _$maxRank(ItemShort v) => v.maxRank;
  static const Field<ItemShort, int> _f$maxRank = Field('maxRank', _$maxRank);
  static int? _$maxCharges(ItemShort v) => v.maxCharges;
  static const Field<ItemShort, int> _f$maxCharges =
      Field('maxCharges', _$maxCharges);
  static bool? _$vaulted(ItemShort v) => v.vaulted;
  static const Field<ItemShort, bool> _f$vaulted = Field('vaulted', _$vaulted);
  static bool? _$bulkTradable(ItemShort v) => v.bulkTradable;
  static const Field<ItemShort, bool> _f$bulkTradable =
      Field('bulkTradable', _$bulkTradable);
  static int? _$ducats(ItemShort v) => v.ducats;
  static const Field<ItemShort, int> _f$ducats = Field('ducats', _$ducats);
  static int? _$maxAmberStars(ItemShort v) => v.maxAmberStars;
  static const Field<ItemShort, int> _f$maxAmberStars =
      Field('maxAmberStars', _$maxAmberStars);
  static int? _$maxCyanStars(ItemShort v) => v.maxCyanStars;
  static const Field<ItemShort, int> _f$maxCyanStars =
      Field('maxCyanStars', _$maxCyanStars);
  static int? _$baseEndo(ItemShort v) => v.baseEndo;
  static const Field<ItemShort, int> _f$baseEndo =
      Field('baseEndo', _$baseEndo);
  static int? _$endoMultiplier(ItemShort v) => v.endoMultiplier;
  static const Field<ItemShort, int> _f$endoMultiplier =
      Field('endoMultiplier', _$endoMultiplier);
  static List<String>? _$subtypes(ItemShort v) => v.subtypes;
  static const Field<ItemShort, List<String>> _f$subtypes =
      Field('subtypes', _$subtypes);

  @override
  final MappableFields<ItemShort> fields = const {
    #id: _f$id,
    #slug: _f$slug,
    #gameRef: _f$gameRef,
    #i18n: _f$i18n,
    #tags: _f$tags,
    #maxRank: _f$maxRank,
    #maxCharges: _f$maxCharges,
    #vaulted: _f$vaulted,
    #bulkTradable: _f$bulkTradable,
    #ducats: _f$ducats,
    #maxAmberStars: _f$maxAmberStars,
    #maxCyanStars: _f$maxCyanStars,
    #baseEndo: _f$baseEndo,
    #endoMultiplier: _f$endoMultiplier,
    #subtypes: _f$subtypes,
  };
  @override
  final bool ignoreNull = true;

  static ItemShort _instantiate(DecodingData data) {
    return ItemShort(
        id: data.dec(_f$id),
        slug: data.dec(_f$slug),
        gameRef: data.dec(_f$gameRef),
        i18n: data.dec(_f$i18n),
        tags: data.dec(_f$tags),
        maxRank: data.dec(_f$maxRank),
        maxCharges: data.dec(_f$maxCharges),
        vaulted: data.dec(_f$vaulted),
        bulkTradable: data.dec(_f$bulkTradable),
        ducats: data.dec(_f$ducats),
        maxAmberStars: data.dec(_f$maxAmberStars),
        maxCyanStars: data.dec(_f$maxCyanStars),
        baseEndo: data.dec(_f$baseEndo),
        endoMultiplier: data.dec(_f$endoMultiplier),
        subtypes: data.dec(_f$subtypes));
  }

  @override
  final Function instantiate = _instantiate;

  static ItemShort fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ItemShort>(map);
  }

  static ItemShort fromJson(String json) {
    return ensureInitialized().decodeJson<ItemShort>(json);
  }
}

mixin ItemShortMappable {
  String toJson() {
    return ItemShortMapper.ensureInitialized()
        .encodeJson<ItemShort>(this as ItemShort);
  }

  Map<String, dynamic> toMap() {
    return ItemShortMapper.ensureInitialized()
        .encodeMap<ItemShort>(this as ItemShort);
  }

  ItemShortCopyWith<ItemShort, ItemShort, ItemShort> get copyWith =>
      _ItemShortCopyWithImpl(this as ItemShort, $identity, $identity);
  @override
  String toString() {
    return ItemShortMapper.ensureInitialized()
        .stringifyValue(this as ItemShort);
  }

  @override
  bool operator ==(Object other) {
    return ItemShortMapper.ensureInitialized()
        .equalsValue(this as ItemShort, other);
  }

  @override
  int get hashCode {
    return ItemShortMapper.ensureInitialized().hashValue(this as ItemShort);
  }
}

extension ItemShortValueCopy<$R, $Out> on ObjectCopyWith<$R, ItemShort, $Out> {
  ItemShortCopyWith<$R, ItemShort, $Out> get $asItemShort =>
      $base.as((v, t, t2) => _ItemShortCopyWithImpl(v, t, t2));
}

abstract class ItemShortCopyWith<$R, $In extends ItemShort, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, ItemI18n, ItemI18nCopyWith<$R, ItemI18n, ItemI18n>>
      get i18n;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get subtypes;
  $R call(
      {String? id,
      String? slug,
      String? gameRef,
      Map<String, ItemI18n>? i18n,
      List<String>? tags,
      int? maxRank,
      int? maxCharges,
      bool? vaulted,
      bool? bulkTradable,
      int? ducats,
      int? maxAmberStars,
      int? maxCyanStars,
      int? baseEndo,
      int? endoMultiplier,
      List<String>? subtypes});
  ItemShortCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ItemShortCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ItemShort, $Out>
    implements ItemShortCopyWith<$R, ItemShort, $Out> {
  _ItemShortCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ItemShort> $mapper =
      ItemShortMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, ItemI18n, ItemI18nCopyWith<$R, ItemI18n, ItemI18n>>
      get i18n => MapCopyWith(
          $value.i18n, (v, t) => v.copyWith.$chain(t), (v) => call(i18n: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags =>
      ListCopyWith($value.tags, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(tags: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get subtypes =>
      $value.subtypes != null
          ? ListCopyWith(
              $value.subtypes!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(subtypes: v))
          : null;
  @override
  $R call(
          {String? id,
          String? slug,
          String? gameRef,
          Map<String, ItemI18n>? i18n,
          List<String>? tags,
          Object? maxRank = $none,
          Object? maxCharges = $none,
          Object? vaulted = $none,
          Object? bulkTradable = $none,
          Object? ducats = $none,
          Object? maxAmberStars = $none,
          Object? maxCyanStars = $none,
          Object? baseEndo = $none,
          Object? endoMultiplier = $none,
          Object? subtypes = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (slug != null) #slug: slug,
        if (gameRef != null) #gameRef: gameRef,
        if (i18n != null) #i18n: i18n,
        if (tags != null) #tags: tags,
        if (maxRank != $none) #maxRank: maxRank,
        if (maxCharges != $none) #maxCharges: maxCharges,
        if (vaulted != $none) #vaulted: vaulted,
        if (bulkTradable != $none) #bulkTradable: bulkTradable,
        if (ducats != $none) #ducats: ducats,
        if (maxAmberStars != $none) #maxAmberStars: maxAmberStars,
        if (maxCyanStars != $none) #maxCyanStars: maxCyanStars,
        if (baseEndo != $none) #baseEndo: baseEndo,
        if (endoMultiplier != $none) #endoMultiplier: endoMultiplier,
        if (subtypes != $none) #subtypes: subtypes
      }));
  @override
  ItemShort $make(CopyWithData data) => ItemShort(
      id: data.get(#id, or: $value.id),
      slug: data.get(#slug, or: $value.slug),
      gameRef: data.get(#gameRef, or: $value.gameRef),
      i18n: data.get(#i18n, or: $value.i18n),
      tags: data.get(#tags, or: $value.tags),
      maxRank: data.get(#maxRank, or: $value.maxRank),
      maxCharges: data.get(#maxCharges, or: $value.maxCharges),
      vaulted: data.get(#vaulted, or: $value.vaulted),
      bulkTradable: data.get(#bulkTradable, or: $value.bulkTradable),
      ducats: data.get(#ducats, or: $value.ducats),
      maxAmberStars: data.get(#maxAmberStars, or: $value.maxAmberStars),
      maxCyanStars: data.get(#maxCyanStars, or: $value.maxCyanStars),
      baseEndo: data.get(#baseEndo, or: $value.baseEndo),
      endoMultiplier: data.get(#endoMultiplier, or: $value.endoMultiplier),
      subtypes: data.get(#subtypes, or: $value.subtypes));

  @override
  ItemShortCopyWith<$R2, ItemShort, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ItemShortCopyWithImpl($value, $cast, t);
}

class ItemFullMapper extends ClassMapperBase<ItemFull> {
  ItemFullMapper._();

  static ItemFullMapper? _instance;
  static ItemFullMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemFullMapper._());
      ItemI18nMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ItemFull';

  static String _$id(ItemFull v) => v.id;
  static const Field<ItemFull, String> _f$id = Field('id', _$id);
  static String _$slug(ItemFull v) => v.slug;
  static const Field<ItemFull, String> _f$slug = Field('slug', _$slug);
  static String _$gameRef(ItemFull v) => v.gameRef;
  static const Field<ItemFull, String> _f$gameRef = Field('gameRef', _$gameRef);
  static Map<String, ItemI18n> _$i18n(ItemFull v) => v.i18n;
  static const Field<ItemFull, Map<String, ItemI18n>> _f$i18n =
      Field('i18n', _$i18n);
  static List<String> _$tags(ItemFull v) => v.tags;
  static const Field<ItemFull, List<String>> _f$tags = Field('tags', _$tags);
  static int? _$maxRank(ItemFull v) => v.maxRank;
  static const Field<ItemFull, int> _f$maxRank = Field('maxRank', _$maxRank);
  static int? _$maxCharges(ItemFull v) => v.maxCharges;
  static const Field<ItemFull, int> _f$maxCharges =
      Field('maxCharges', _$maxCharges);
  static bool? _$vaulted(ItemFull v) => v.vaulted;
  static const Field<ItemFull, bool> _f$vaulted = Field('vaulted', _$vaulted);
  static bool? _$bulkTradable(ItemFull v) => v.bulkTradable;
  static const Field<ItemFull, bool> _f$bulkTradable =
      Field('bulkTradable', _$bulkTradable);
  static int? _$ducats(ItemFull v) => v.ducats;
  static const Field<ItemFull, int> _f$ducats = Field('ducats', _$ducats);
  static int? _$maxAmberStars(ItemFull v) => v.maxAmberStars;
  static const Field<ItemFull, int> _f$maxAmberStars =
      Field('maxAmberStars', _$maxAmberStars);
  static int? _$maxCyanStars(ItemFull v) => v.maxCyanStars;
  static const Field<ItemFull, int> _f$maxCyanStars =
      Field('maxCyanStars', _$maxCyanStars);
  static int? _$baseEndo(ItemFull v) => v.baseEndo;
  static const Field<ItemFull, int> _f$baseEndo = Field('baseEndo', _$baseEndo);
  static int? _$endoMultiplier(ItemFull v) => v.endoMultiplier;
  static const Field<ItemFull, int> _f$endoMultiplier =
      Field('endoMultiplier', _$endoMultiplier);
  static List<String>? _$subtypes(ItemFull v) => v.subtypes;
  static const Field<ItemFull, List<String>> _f$subtypes =
      Field('subtypes', _$subtypes);
  static bool _$tradable(ItemFull v) => v.tradable;
  static const Field<ItemFull, bool> _f$tradable =
      Field('tradable', _$tradable);
  static bool? _$setRoot(ItemFull v) => v.setRoot;
  static const Field<ItemFull, bool> _f$setRoot = Field('setRoot', _$setRoot);
  static List<String> _$setParts(ItemFull v) => v.setParts;
  static const Field<ItemFull, List<String>> _f$setParts =
      Field('setParts', _$setParts);
  static int _$quantityInSet(ItemFull v) => v.quantityInSet;
  static const Field<ItemFull, int> _f$quantityInSet =
      Field('quantityInSet', _$quantityInSet);
  static String? _$rarity(ItemFull v) => v.rarity;
  static const Field<ItemFull, String> _f$rarity = Field('rarity', _$rarity);
  static int? _$reqMasteryRank(ItemFull v) => v.reqMasteryRank;
  static const Field<ItemFull, int> _f$reqMasteryRank =
      Field('reqMasteryRank', _$reqMasteryRank);
  static int? _$tradingTax(ItemFull v) => v.tradingTax;
  static const Field<ItemFull, int> _f$tradingTax =
      Field('tradingTax', _$tradingTax);

  @override
  final MappableFields<ItemFull> fields = const {
    #id: _f$id,
    #slug: _f$slug,
    #gameRef: _f$gameRef,
    #i18n: _f$i18n,
    #tags: _f$tags,
    #maxRank: _f$maxRank,
    #maxCharges: _f$maxCharges,
    #vaulted: _f$vaulted,
    #bulkTradable: _f$bulkTradable,
    #ducats: _f$ducats,
    #maxAmberStars: _f$maxAmberStars,
    #maxCyanStars: _f$maxCyanStars,
    #baseEndo: _f$baseEndo,
    #endoMultiplier: _f$endoMultiplier,
    #subtypes: _f$subtypes,
    #tradable: _f$tradable,
    #setRoot: _f$setRoot,
    #setParts: _f$setParts,
    #quantityInSet: _f$quantityInSet,
    #rarity: _f$rarity,
    #reqMasteryRank: _f$reqMasteryRank,
    #tradingTax: _f$tradingTax,
  };
  @override
  final bool ignoreNull = true;

  static ItemFull _instantiate(DecodingData data) {
    return ItemFull(
        id: data.dec(_f$id),
        slug: data.dec(_f$slug),
        gameRef: data.dec(_f$gameRef),
        i18n: data.dec(_f$i18n),
        tags: data.dec(_f$tags),
        maxRank: data.dec(_f$maxRank),
        maxCharges: data.dec(_f$maxCharges),
        vaulted: data.dec(_f$vaulted),
        bulkTradable: data.dec(_f$bulkTradable),
        ducats: data.dec(_f$ducats),
        maxAmberStars: data.dec(_f$maxAmberStars),
        maxCyanStars: data.dec(_f$maxCyanStars),
        baseEndo: data.dec(_f$baseEndo),
        endoMultiplier: data.dec(_f$endoMultiplier),
        subtypes: data.dec(_f$subtypes),
        tradable: data.dec(_f$tradable),
        setRoot: data.dec(_f$setRoot),
        setParts: data.dec(_f$setParts),
        quantityInSet: data.dec(_f$quantityInSet),
        rarity: data.dec(_f$rarity),
        reqMasteryRank: data.dec(_f$reqMasteryRank),
        tradingTax: data.dec(_f$tradingTax));
  }

  @override
  final Function instantiate = _instantiate;

  static ItemFull fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ItemFull>(map);
  }

  static ItemFull fromJson(String json) {
    return ensureInitialized().decodeJson<ItemFull>(json);
  }
}

mixin ItemFullMappable {
  String toJson() {
    return ItemFullMapper.ensureInitialized()
        .encodeJson<ItemFull>(this as ItemFull);
  }

  Map<String, dynamic> toMap() {
    return ItemFullMapper.ensureInitialized()
        .encodeMap<ItemFull>(this as ItemFull);
  }

  ItemFullCopyWith<ItemFull, ItemFull, ItemFull> get copyWith =>
      _ItemFullCopyWithImpl(this as ItemFull, $identity, $identity);
  @override
  String toString() {
    return ItemFullMapper.ensureInitialized().stringifyValue(this as ItemFull);
  }

  @override
  bool operator ==(Object other) {
    return ItemFullMapper.ensureInitialized()
        .equalsValue(this as ItemFull, other);
  }

  @override
  int get hashCode {
    return ItemFullMapper.ensureInitialized().hashValue(this as ItemFull);
  }
}

extension ItemFullValueCopy<$R, $Out> on ObjectCopyWith<$R, ItemFull, $Out> {
  ItemFullCopyWith<$R, ItemFull, $Out> get $asItemFull =>
      $base.as((v, t, t2) => _ItemFullCopyWithImpl(v, t, t2));
}

abstract class ItemFullCopyWith<$R, $In extends ItemFull, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, ItemI18n, ItemI18nCopyWith<$R, ItemI18n, ItemI18n>>
      get i18n;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get subtypes;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get setParts;
  $R call(
      {String? id,
      String? slug,
      String? gameRef,
      Map<String, ItemI18n>? i18n,
      List<String>? tags,
      int? maxRank,
      int? maxCharges,
      bool? vaulted,
      bool? bulkTradable,
      int? ducats,
      int? maxAmberStars,
      int? maxCyanStars,
      int? baseEndo,
      int? endoMultiplier,
      List<String>? subtypes,
      bool? tradable,
      bool? setRoot,
      List<String>? setParts,
      int? quantityInSet,
      String? rarity,
      int? reqMasteryRank,
      int? tradingTax});
  ItemFullCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ItemFullCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ItemFull, $Out>
    implements ItemFullCopyWith<$R, ItemFull, $Out> {
  _ItemFullCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ItemFull> $mapper =
      ItemFullMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, ItemI18n, ItemI18nCopyWith<$R, ItemI18n, ItemI18n>>
      get i18n => MapCopyWith(
          $value.i18n, (v, t) => v.copyWith.$chain(t), (v) => call(i18n: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags =>
      ListCopyWith($value.tags, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(tags: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get subtypes =>
      $value.subtypes != null
          ? ListCopyWith(
              $value.subtypes!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(subtypes: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get setParts =>
      ListCopyWith($value.setParts, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(setParts: v));
  @override
  $R call(
          {String? id,
          String? slug,
          String? gameRef,
          Map<String, ItemI18n>? i18n,
          List<String>? tags,
          Object? maxRank = $none,
          Object? maxCharges = $none,
          Object? vaulted = $none,
          Object? bulkTradable = $none,
          Object? ducats = $none,
          Object? maxAmberStars = $none,
          Object? maxCyanStars = $none,
          Object? baseEndo = $none,
          Object? endoMultiplier = $none,
          Object? subtypes = $none,
          bool? tradable,
          Object? setRoot = $none,
          List<String>? setParts,
          int? quantityInSet,
          Object? rarity = $none,
          Object? reqMasteryRank = $none,
          Object? tradingTax = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (slug != null) #slug: slug,
        if (gameRef != null) #gameRef: gameRef,
        if (i18n != null) #i18n: i18n,
        if (tags != null) #tags: tags,
        if (maxRank != $none) #maxRank: maxRank,
        if (maxCharges != $none) #maxCharges: maxCharges,
        if (vaulted != $none) #vaulted: vaulted,
        if (bulkTradable != $none) #bulkTradable: bulkTradable,
        if (ducats != $none) #ducats: ducats,
        if (maxAmberStars != $none) #maxAmberStars: maxAmberStars,
        if (maxCyanStars != $none) #maxCyanStars: maxCyanStars,
        if (baseEndo != $none) #baseEndo: baseEndo,
        if (endoMultiplier != $none) #endoMultiplier: endoMultiplier,
        if (subtypes != $none) #subtypes: subtypes,
        if (tradable != null) #tradable: tradable,
        if (setRoot != $none) #setRoot: setRoot,
        if (setParts != null) #setParts: setParts,
        if (quantityInSet != null) #quantityInSet: quantityInSet,
        if (rarity != $none) #rarity: rarity,
        if (reqMasteryRank != $none) #reqMasteryRank: reqMasteryRank,
        if (tradingTax != $none) #tradingTax: tradingTax
      }));
  @override
  ItemFull $make(CopyWithData data) => ItemFull(
      id: data.get(#id, or: $value.id),
      slug: data.get(#slug, or: $value.slug),
      gameRef: data.get(#gameRef, or: $value.gameRef),
      i18n: data.get(#i18n, or: $value.i18n),
      tags: data.get(#tags, or: $value.tags),
      maxRank: data.get(#maxRank, or: $value.maxRank),
      maxCharges: data.get(#maxCharges, or: $value.maxCharges),
      vaulted: data.get(#vaulted, or: $value.vaulted),
      bulkTradable: data.get(#bulkTradable, or: $value.bulkTradable),
      ducats: data.get(#ducats, or: $value.ducats),
      maxAmberStars: data.get(#maxAmberStars, or: $value.maxAmberStars),
      maxCyanStars: data.get(#maxCyanStars, or: $value.maxCyanStars),
      baseEndo: data.get(#baseEndo, or: $value.baseEndo),
      endoMultiplier: data.get(#endoMultiplier, or: $value.endoMultiplier),
      subtypes: data.get(#subtypes, or: $value.subtypes),
      tradable: data.get(#tradable, or: $value.tradable),
      setRoot: data.get(#setRoot, or: $value.setRoot),
      setParts: data.get(#setParts, or: $value.setParts),
      quantityInSet: data.get(#quantityInSet, or: $value.quantityInSet),
      rarity: data.get(#rarity, or: $value.rarity),
      reqMasteryRank: data.get(#reqMasteryRank, or: $value.reqMasteryRank),
      tradingTax: data.get(#tradingTax, or: $value.tradingTax));

  @override
  ItemFullCopyWith<$R2, ItemFull, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ItemFullCopyWithImpl($value, $cast, t);
}
