// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user.dart';

class UserShortMapper extends ClassMapperBase<UserShort> {
  UserShortMapper._();

  static UserShortMapper? _instance;
  static UserShortMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserShortMapper._());
      ActivityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserShort';

  static String _$id(UserShort v) => v.id;
  static const Field<UserShort, String> _f$id = Field('id', _$id);
  static String _$ingameName(UserShort v) => v.ingameName;
  static const Field<UserShort, String> _f$ingameName =
      Field('ingameName', _$ingameName);
  static String? _$avatar(UserShort v) => v.avatar;
  static const Field<UserShort, String> _f$avatar = Field('avatar', _$avatar);
  static int _$repoutation(UserShort v) => v.repoutation;
  static const Field<UserShort, int> _f$repoutation =
      Field('repoutation', _$repoutation);
  static String _$locale(UserShort v) => v.locale;
  static const Field<UserShort, String> _f$locale = Field('locale', _$locale);
  static MarketPlatform _$platform(UserShort v) => v.platform;
  static const Field<UserShort, MarketPlatform> _f$platform =
      Field('platform', _$platform);
  static bool _$crossplay(UserShort v) => v.crossplay;
  static const Field<UserShort, bool> _f$crossplay =
      Field('crossplay', _$crossplay);
  static UserStatus _$status(UserShort v) => v.status;
  static const Field<UserShort, UserStatus> _f$status =
      Field('status', _$status);
  static Activity _$activity(UserShort v) => v.activity;
  static const Field<UserShort, Activity> _f$activity =
      Field('activity', _$activity);
  static DateTime _$lastSeen(UserShort v) => v.lastSeen;
  static const Field<UserShort, DateTime> _f$lastSeen =
      Field('lastSeen', _$lastSeen);

  @override
  final MappableFields<UserShort> fields = const {
    #id: _f$id,
    #ingameName: _f$ingameName,
    #avatar: _f$avatar,
    #repoutation: _f$repoutation,
    #locale: _f$locale,
    #platform: _f$platform,
    #crossplay: _f$crossplay,
    #status: _f$status,
    #activity: _f$activity,
    #lastSeen: _f$lastSeen,
  };
  @override
  final bool ignoreNull = true;

  static UserShort _instantiate(DecodingData data) {
    return UserShort(
        id: data.dec(_f$id),
        ingameName: data.dec(_f$ingameName),
        avatar: data.dec(_f$avatar),
        repoutation: data.dec(_f$repoutation),
        locale: data.dec(_f$locale),
        platform: data.dec(_f$platform),
        crossplay: data.dec(_f$crossplay),
        status: data.dec(_f$status),
        activity: data.dec(_f$activity),
        lastSeen: data.dec(_f$lastSeen));
  }

  @override
  final Function instantiate = _instantiate;

  static UserShort fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserShort>(map);
  }

  static UserShort fromJson(String json) {
    return ensureInitialized().decodeJson<UserShort>(json);
  }
}

mixin UserShortMappable {
  String toJson() {
    return UserShortMapper.ensureInitialized()
        .encodeJson<UserShort>(this as UserShort);
  }

  Map<String, dynamic> toMap() {
    return UserShortMapper.ensureInitialized()
        .encodeMap<UserShort>(this as UserShort);
  }

  UserShortCopyWith<UserShort, UserShort, UserShort> get copyWith =>
      _UserShortCopyWithImpl(this as UserShort, $identity, $identity);
  @override
  String toString() {
    return UserShortMapper.ensureInitialized()
        .stringifyValue(this as UserShort);
  }

  @override
  bool operator ==(Object other) {
    return UserShortMapper.ensureInitialized()
        .equalsValue(this as UserShort, other);
  }

  @override
  int get hashCode {
    return UserShortMapper.ensureInitialized().hashValue(this as UserShort);
  }
}

extension UserShortValueCopy<$R, $Out> on ObjectCopyWith<$R, UserShort, $Out> {
  UserShortCopyWith<$R, UserShort, $Out> get $asUserShort =>
      $base.as((v, t, t2) => _UserShortCopyWithImpl(v, t, t2));
}

abstract class UserShortCopyWith<$R, $In extends UserShort, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ActivityCopyWith<$R, Activity, Activity> get activity;
  $R call(
      {String? id,
      String? ingameName,
      String? avatar,
      int? repoutation,
      String? locale,
      MarketPlatform? platform,
      bool? crossplay,
      UserStatus? status,
      Activity? activity,
      DateTime? lastSeen});
  UserShortCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserShortCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserShort, $Out>
    implements UserShortCopyWith<$R, UserShort, $Out> {
  _UserShortCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserShort> $mapper =
      UserShortMapper.ensureInitialized();
  @override
  ActivityCopyWith<$R, Activity, Activity> get activity =>
      $value.activity.copyWith.$chain((v) => call(activity: v));
  @override
  $R call(
          {String? id,
          String? ingameName,
          Object? avatar = $none,
          int? repoutation,
          String? locale,
          MarketPlatform? platform,
          bool? crossplay,
          UserStatus? status,
          Activity? activity,
          DateTime? lastSeen}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (ingameName != null) #ingameName: ingameName,
        if (avatar != $none) #avatar: avatar,
        if (repoutation != null) #repoutation: repoutation,
        if (locale != null) #locale: locale,
        if (platform != null) #platform: platform,
        if (crossplay != null) #crossplay: crossplay,
        if (status != null) #status: status,
        if (activity != null) #activity: activity,
        if (lastSeen != null) #lastSeen: lastSeen
      }));
  @override
  UserShort $make(CopyWithData data) => UserShort(
      id: data.get(#id, or: $value.id),
      ingameName: data.get(#ingameName, or: $value.ingameName),
      avatar: data.get(#avatar, or: $value.avatar),
      repoutation: data.get(#repoutation, or: $value.repoutation),
      locale: data.get(#locale, or: $value.locale),
      platform: data.get(#platform, or: $value.platform),
      crossplay: data.get(#crossplay, or: $value.crossplay),
      status: data.get(#status, or: $value.status),
      activity: data.get(#activity, or: $value.activity),
      lastSeen: data.get(#lastSeen, or: $value.lastSeen));

  @override
  UserShortCopyWith<$R2, UserShort, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserShortCopyWithImpl($value, $cast, t);
}

class ActivityMapper extends ClassMapperBase<Activity> {
  ActivityMapper._();

  static ActivityMapper? _instance;
  static ActivityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ActivityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Activity';

  static String _$type(Activity v) => v.type;
  static const Field<Activity, String> _f$type = Field('type', _$type);
  static String? _$details(Activity v) => v.details;
  static const Field<Activity, String> _f$details =
      Field('details', _$details, opt: true);
  static DateTime? _$startedAt(Activity v) => v.startedAt;
  static const Field<Activity, DateTime> _f$startedAt =
      Field('startedAt', _$startedAt, opt: true);

  @override
  final MappableFields<Activity> fields = const {
    #type: _f$type,
    #details: _f$details,
    #startedAt: _f$startedAt,
  };
  @override
  final bool ignoreNull = true;

  static Activity _instantiate(DecodingData data) {
    return Activity(
        type: data.dec(_f$type),
        details: data.dec(_f$details),
        startedAt: data.dec(_f$startedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static Activity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Activity>(map);
  }

  static Activity fromJson(String json) {
    return ensureInitialized().decodeJson<Activity>(json);
  }
}

mixin ActivityMappable {
  String toJson() {
    return ActivityMapper.ensureInitialized()
        .encodeJson<Activity>(this as Activity);
  }

  Map<String, dynamic> toMap() {
    return ActivityMapper.ensureInitialized()
        .encodeMap<Activity>(this as Activity);
  }

  ActivityCopyWith<Activity, Activity, Activity> get copyWith =>
      _ActivityCopyWithImpl(this as Activity, $identity, $identity);
  @override
  String toString() {
    return ActivityMapper.ensureInitialized().stringifyValue(this as Activity);
  }

  @override
  bool operator ==(Object other) {
    return ActivityMapper.ensureInitialized()
        .equalsValue(this as Activity, other);
  }

  @override
  int get hashCode {
    return ActivityMapper.ensureInitialized().hashValue(this as Activity);
  }
}

extension ActivityValueCopy<$R, $Out> on ObjectCopyWith<$R, Activity, $Out> {
  ActivityCopyWith<$R, Activity, $Out> get $asActivity =>
      $base.as((v, t, t2) => _ActivityCopyWithImpl(v, t, t2));
}

abstract class ActivityCopyWith<$R, $In extends Activity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? type, String? details, DateTime? startedAt});
  ActivityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ActivityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Activity, $Out>
    implements ActivityCopyWith<$R, Activity, $Out> {
  _ActivityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Activity> $mapper =
      ActivityMapper.ensureInitialized();
  @override
  $R call({String? type, Object? details = $none, Object? startedAt = $none}) =>
      $apply(FieldCopyWithData({
        if (type != null) #type: type,
        if (details != $none) #details: details,
        if (startedAt != $none) #startedAt: startedAt
      }));
  @override
  Activity $make(CopyWithData data) => Activity(
      type: data.get(#type, or: $value.type),
      details: data.get(#details, or: $value.details),
      startedAt: data.get(#startedAt, or: $value.startedAt));

  @override
  ActivityCopyWith<$R2, Activity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ActivityCopyWithImpl($value, $cast, t);
}

class UserPublicMapper extends ClassMapperBase<UserPublic> {
  UserPublicMapper._();

  static UserPublicMapper? _instance;
  static UserPublicMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserPublicMapper._());
      ActivityMapper.ensureInitialized();
      AchievementMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserPublic';

  static String _$id(UserPublic v) => v.id;
  static const Field<UserPublic, String> _f$id = Field('id', _$id);
  static String _$ingameName(UserPublic v) => v.ingameName;
  static const Field<UserPublic, String> _f$ingameName =
      Field('ingameName', _$ingameName);
  static String? _$avatar(UserPublic v) => v.avatar;
  static const Field<UserPublic, String> _f$avatar = Field('avatar', _$avatar);
  static int _$repoutation(UserPublic v) => v.repoutation;
  static const Field<UserPublic, int> _f$repoutation =
      Field('repoutation', _$repoutation);
  static String _$locale(UserPublic v) => v.locale;
  static const Field<UserPublic, String> _f$locale = Field('locale', _$locale);
  static MarketPlatform _$platform(UserPublic v) => v.platform;
  static const Field<UserPublic, MarketPlatform> _f$platform =
      Field('platform', _$platform);
  static bool _$crossplay(UserPublic v) => v.crossplay;
  static const Field<UserPublic, bool> _f$crossplay =
      Field('crossplay', _$crossplay);
  static UserStatus _$status(UserPublic v) => v.status;
  static const Field<UserPublic, UserStatus> _f$status =
      Field('status', _$status);
  static Activity _$activity(UserPublic v) => v.activity;
  static const Field<UserPublic, Activity> _f$activity =
      Field('activity', _$activity);
  static DateTime _$lastSeen(UserPublic v) => v.lastSeen;
  static const Field<UserPublic, DateTime> _f$lastSeen =
      Field('lastSeen', _$lastSeen);
  static String? _$background(UserPublic v) => v.background;
  static const Field<UserPublic, String> _f$background =
      Field('background', _$background);
  static String? _$about(UserPublic v) => v.about;
  static const Field<UserPublic, String> _f$about = Field('about', _$about);
  static int? _$masteryLevel(UserPublic v) => v.masteryLevel;
  static const Field<UserPublic, int> _f$masteryLevel =
      Field('masteryLevel', _$masteryLevel);
  static List<Achievement> _$achievementShowcase(UserPublic v) =>
      v.achievementShowcase;
  static const Field<UserPublic, List<Achievement>> _f$achievementShowcase =
      Field('achievementShowcase', _$achievementShowcase);
  static bool? _$banned(UserPublic v) => v.banned;
  static const Field<UserPublic, bool> _f$banned = Field('banned', _$banned);
  static DateTime? _$banUntil(UserPublic v) => v.banUntil;
  static const Field<UserPublic, DateTime> _f$banUntil =
      Field('banUntil', _$banUntil);
  static bool? _$warned(UserPublic v) => v.warned;
  static const Field<UserPublic, bool> _f$warned = Field('warned', _$warned);
  static String? _$warnMessage(UserPublic v) => v.warnMessage;
  static const Field<UserPublic, String> _f$warnMessage =
      Field('warnMessage', _$warnMessage);
  static String? _$banMessage(UserPublic v) => v.banMessage;
  static const Field<UserPublic, String> _f$banMessage =
      Field('banMessage', _$banMessage);

  @override
  final MappableFields<UserPublic> fields = const {
    #id: _f$id,
    #ingameName: _f$ingameName,
    #avatar: _f$avatar,
    #repoutation: _f$repoutation,
    #locale: _f$locale,
    #platform: _f$platform,
    #crossplay: _f$crossplay,
    #status: _f$status,
    #activity: _f$activity,
    #lastSeen: _f$lastSeen,
    #background: _f$background,
    #about: _f$about,
    #masteryLevel: _f$masteryLevel,
    #achievementShowcase: _f$achievementShowcase,
    #banned: _f$banned,
    #banUntil: _f$banUntil,
    #warned: _f$warned,
    #warnMessage: _f$warnMessage,
    #banMessage: _f$banMessage,
  };
  @override
  final bool ignoreNull = true;

  static UserPublic _instantiate(DecodingData data) {
    return UserPublic(
        id: data.dec(_f$id),
        ingameName: data.dec(_f$ingameName),
        avatar: data.dec(_f$avatar),
        repoutation: data.dec(_f$repoutation),
        locale: data.dec(_f$locale),
        platform: data.dec(_f$platform),
        crossplay: data.dec(_f$crossplay),
        status: data.dec(_f$status),
        activity: data.dec(_f$activity),
        lastSeen: data.dec(_f$lastSeen),
        background: data.dec(_f$background),
        about: data.dec(_f$about),
        masteryLevel: data.dec(_f$masteryLevel),
        achievementShowcase: data.dec(_f$achievementShowcase),
        banned: data.dec(_f$banned),
        banUntil: data.dec(_f$banUntil),
        warned: data.dec(_f$warned),
        warnMessage: data.dec(_f$warnMessage),
        banMessage: data.dec(_f$banMessage));
  }

  @override
  final Function instantiate = _instantiate;

  static UserPublic fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserPublic>(map);
  }

  static UserPublic fromJson(String json) {
    return ensureInitialized().decodeJson<UserPublic>(json);
  }
}

mixin UserPublicMappable {
  String toJson() {
    return UserPublicMapper.ensureInitialized()
        .encodeJson<UserPublic>(this as UserPublic);
  }

  Map<String, dynamic> toMap() {
    return UserPublicMapper.ensureInitialized()
        .encodeMap<UserPublic>(this as UserPublic);
  }

  UserPublicCopyWith<UserPublic, UserPublic, UserPublic> get copyWith =>
      _UserPublicCopyWithImpl(this as UserPublic, $identity, $identity);
  @override
  String toString() {
    return UserPublicMapper.ensureInitialized()
        .stringifyValue(this as UserPublic);
  }

  @override
  bool operator ==(Object other) {
    return UserPublicMapper.ensureInitialized()
        .equalsValue(this as UserPublic, other);
  }

  @override
  int get hashCode {
    return UserPublicMapper.ensureInitialized().hashValue(this as UserPublic);
  }
}

extension UserPublicValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserPublic, $Out> {
  UserPublicCopyWith<$R, UserPublic, $Out> get $asUserPublic =>
      $base.as((v, t, t2) => _UserPublicCopyWithImpl(v, t, t2));
}

abstract class UserPublicCopyWith<$R, $In extends UserPublic, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ActivityCopyWith<$R, Activity, Activity> get activity;
  ListCopyWith<$R, Achievement,
          AchievementCopyWith<$R, Achievement, Achievement>>
      get achievementShowcase;
  $R call(
      {String? id,
      String? ingameName,
      String? avatar,
      int? repoutation,
      String? locale,
      MarketPlatform? platform,
      bool? crossplay,
      UserStatus? status,
      Activity? activity,
      DateTime? lastSeen,
      String? background,
      String? about,
      int? masteryLevel,
      List<Achievement>? achievementShowcase,
      bool? banned,
      DateTime? banUntil,
      bool? warned,
      String? warnMessage,
      String? banMessage});
  UserPublicCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserPublicCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserPublic, $Out>
    implements UserPublicCopyWith<$R, UserPublic, $Out> {
  _UserPublicCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserPublic> $mapper =
      UserPublicMapper.ensureInitialized();
  @override
  ActivityCopyWith<$R, Activity, Activity> get activity =>
      $value.activity.copyWith.$chain((v) => call(activity: v));
  @override
  ListCopyWith<$R, Achievement,
          AchievementCopyWith<$R, Achievement, Achievement>>
      get achievementShowcase => ListCopyWith($value.achievementShowcase,
          (v, t) => v.copyWith.$chain(t), (v) => call(achievementShowcase: v));
  @override
  $R call(
          {String? id,
          String? ingameName,
          Object? avatar = $none,
          int? repoutation,
          String? locale,
          MarketPlatform? platform,
          bool? crossplay,
          UserStatus? status,
          Activity? activity,
          DateTime? lastSeen,
          Object? background = $none,
          Object? about = $none,
          Object? masteryLevel = $none,
          List<Achievement>? achievementShowcase,
          Object? banned = $none,
          Object? banUntil = $none,
          Object? warned = $none,
          Object? warnMessage = $none,
          Object? banMessage = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (ingameName != null) #ingameName: ingameName,
        if (avatar != $none) #avatar: avatar,
        if (repoutation != null) #repoutation: repoutation,
        if (locale != null) #locale: locale,
        if (platform != null) #platform: platform,
        if (crossplay != null) #crossplay: crossplay,
        if (status != null) #status: status,
        if (activity != null) #activity: activity,
        if (lastSeen != null) #lastSeen: lastSeen,
        if (background != $none) #background: background,
        if (about != $none) #about: about,
        if (masteryLevel != $none) #masteryLevel: masteryLevel,
        if (achievementShowcase != null)
          #achievementShowcase: achievementShowcase,
        if (banned != $none) #banned: banned,
        if (banUntil != $none) #banUntil: banUntil,
        if (warned != $none) #warned: warned,
        if (warnMessage != $none) #warnMessage: warnMessage,
        if (banMessage != $none) #banMessage: banMessage
      }));
  @override
  UserPublic $make(CopyWithData data) => UserPublic(
      id: data.get(#id, or: $value.id),
      ingameName: data.get(#ingameName, or: $value.ingameName),
      avatar: data.get(#avatar, or: $value.avatar),
      repoutation: data.get(#repoutation, or: $value.repoutation),
      locale: data.get(#locale, or: $value.locale),
      platform: data.get(#platform, or: $value.platform),
      crossplay: data.get(#crossplay, or: $value.crossplay),
      status: data.get(#status, or: $value.status),
      activity: data.get(#activity, or: $value.activity),
      lastSeen: data.get(#lastSeen, or: $value.lastSeen),
      background: data.get(#background, or: $value.background),
      about: data.get(#about, or: $value.about),
      masteryLevel: data.get(#masteryLevel, or: $value.masteryLevel),
      achievementShowcase:
          data.get(#achievementShowcase, or: $value.achievementShowcase),
      banned: data.get(#banned, or: $value.banned),
      banUntil: data.get(#banUntil, or: $value.banUntil),
      warned: data.get(#warned, or: $value.warned),
      warnMessage: data.get(#warnMessage, or: $value.warnMessage),
      banMessage: data.get(#banMessage, or: $value.banMessage));

  @override
  UserPublicCopyWith<$R2, UserPublic, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserPublicCopyWithImpl($value, $cast, t);
}

class AchievementMapper extends ClassMapperBase<Achievement> {
  AchievementMapper._();

  static AchievementMapper? _instance;
  static AchievementMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AchievementMapper._());
      _t$_R0Mapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Achievement';

  static String _$id(Achievement v) => v.id;
  static const Field<Achievement, String> _f$id = Field('id', _$id);
  static String _$icon(Achievement v) => v.icon;
  static const Field<Achievement, String> _f$icon = Field('icon', _$icon);
  static String _$thumb(Achievement v) => v.thumb;
  static const Field<Achievement, String> _f$thumb = Field('thumb', _$thumb);
  static String _$type(Achievement v) => v.type;
  static const Field<Achievement, String> _f$type = Field('type', _$type);
  static AchievementI18n _$i18n(Achievement v) => v.i18n;
  static const Field<Achievement, AchievementI18n> _f$i18n =
      Field('i18n', _$i18n);

  @override
  final MappableFields<Achievement> fields = const {
    #id: _f$id,
    #icon: _f$icon,
    #thumb: _f$thumb,
    #type: _f$type,
    #i18n: _f$i18n,
  };
  @override
  final bool ignoreNull = true;

  static Achievement _instantiate(DecodingData data) {
    return Achievement(
        id: data.dec(_f$id),
        icon: data.dec(_f$icon),
        thumb: data.dec(_f$thumb),
        type: data.dec(_f$type),
        i18n: data.dec(_f$i18n));
  }

  @override
  final Function instantiate = _instantiate;

  static Achievement fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Achievement>(map);
  }

  static Achievement fromJson(String json) {
    return ensureInitialized().decodeJson<Achievement>(json);
  }
}

mixin AchievementMappable {
  String toJson() {
    return AchievementMapper.ensureInitialized()
        .encodeJson<Achievement>(this as Achievement);
  }

  Map<String, dynamic> toMap() {
    return AchievementMapper.ensureInitialized()
        .encodeMap<Achievement>(this as Achievement);
  }

  AchievementCopyWith<Achievement, Achievement, Achievement> get copyWith =>
      _AchievementCopyWithImpl(this as Achievement, $identity, $identity);
  @override
  String toString() {
    return AchievementMapper.ensureInitialized()
        .stringifyValue(this as Achievement);
  }

  @override
  bool operator ==(Object other) {
    return AchievementMapper.ensureInitialized()
        .equalsValue(this as Achievement, other);
  }

  @override
  int get hashCode {
    return AchievementMapper.ensureInitialized().hashValue(this as Achievement);
  }
}

extension AchievementValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Achievement, $Out> {
  AchievementCopyWith<$R, Achievement, $Out> get $asAchievement =>
      $base.as((v, t, t2) => _AchievementCopyWithImpl(v, t, t2));
}

abstract class AchievementCopyWith<$R, $In extends Achievement, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? icon,
      String? thumb,
      String? type,
      AchievementI18n? i18n});
  AchievementCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AchievementCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Achievement, $Out>
    implements AchievementCopyWith<$R, Achievement, $Out> {
  _AchievementCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Achievement> $mapper =
      AchievementMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? icon,
          String? thumb,
          String? type,
          AchievementI18n? i18n}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (icon != null) #icon: icon,
        if (thumb != null) #thumb: thumb,
        if (type != null) #type: type,
        if (i18n != null) #i18n: i18n
      }));
  @override
  Achievement $make(CopyWithData data) => Achievement(
      id: data.get(#id, or: $value.id),
      icon: data.get(#icon, or: $value.icon),
      thumb: data.get(#thumb, or: $value.thumb),
      type: data.get(#type, or: $value.type),
      i18n: data.get(#i18n, or: $value.i18n));

  @override
  AchievementCopyWith<$R2, Achievement, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AchievementCopyWithImpl($value, $cast, t);
}

class UserPrivateMapper extends ClassMapperBase<UserPrivate> {
  UserPrivateMapper._();

  static UserPrivateMapper? _instance;
  static UserPrivateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserPrivateMapper._());
      ActivityMapper.ensureInitialized();
      AchievementMapper.ensureInitialized();
      LinkedAccountsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserPrivate';

  static String _$id(UserPrivate v) => v.id;
  static const Field<UserPrivate, String> _f$id = Field('id', _$id);
  static String _$ingameName(UserPrivate v) => v.ingameName;
  static const Field<UserPrivate, String> _f$ingameName =
      Field('ingameName', _$ingameName);
  static String? _$avatar(UserPrivate v) => v.avatar;
  static const Field<UserPrivate, String> _f$avatar = Field('avatar', _$avatar);
  static int _$repoutation(UserPrivate v) => v.repoutation;
  static const Field<UserPrivate, int> _f$repoutation =
      Field('repoutation', _$repoutation);
  static String _$locale(UserPrivate v) => v.locale;
  static const Field<UserPrivate, String> _f$locale = Field('locale', _$locale);
  static MarketPlatform _$platform(UserPrivate v) => v.platform;
  static const Field<UserPrivate, MarketPlatform> _f$platform =
      Field('platform', _$platform);
  static bool _$crossplay(UserPrivate v) => v.crossplay;
  static const Field<UserPrivate, bool> _f$crossplay =
      Field('crossplay', _$crossplay);
  static UserStatus _$status(UserPrivate v) => v.status;
  static const Field<UserPrivate, UserStatus> _f$status =
      Field('status', _$status);
  static Activity _$activity(UserPrivate v) => v.activity;
  static const Field<UserPrivate, Activity> _f$activity =
      Field('activity', _$activity, opt: true, def: const Activity(type: ''));
  static DateTime _$lastSeen(UserPrivate v) => v.lastSeen;
  static const Field<UserPrivate, DateTime> _f$lastSeen =
      Field('lastSeen', _$lastSeen);
  static Role _$role(UserPrivate v) => v.role;
  static const Field<UserPrivate, Role> _f$role = Field('role', _$role);
  static String? _$background(UserPrivate v) => v.background;
  static const Field<UserPrivate, String> _f$background =
      Field('background', _$background, opt: true);
  static String? _$about(UserPrivate v) => v.about;
  static const Field<UserPrivate, String> _f$about =
      Field('about', _$about, opt: true);
  static String? _$aboutRaw(UserPrivate v) => v.aboutRaw;
  static const Field<UserPrivate, String> _f$aboutRaw =
      Field('aboutRaw', _$aboutRaw, opt: true);
  static int _$reputation(UserPrivate v) => v.reputation;
  static const Field<UserPrivate, int> _f$reputation =
      Field('reputation', _$reputation);
  static int _$masteryRank(UserPrivate v) => v.masteryRank;
  static const Field<UserPrivate, int> _f$masteryRank =
      Field('masteryRank', _$masteryRank);
  static int _$credits(UserPrivate v) => v.credits;
  static const Field<UserPrivate, int> _f$credits = Field('credits', _$credits);
  static String _$theme(UserPrivate v) => v.theme;
  static const Field<UserPrivate, String> _f$theme = Field('theme', _$theme);
  static Achievement _$achievementShowcase(UserPrivate v) =>
      v.achievementShowcase;
  static const Field<UserPrivate, Achievement> _f$achievementShowcase =
      Field('achievementShowcase', _$achievementShowcase);
  static bool _$verification(UserPrivate v) => v.verification;
  static const Field<UserPrivate, bool> _f$verification =
      Field('verification', _$verification);
  static String _$checkCode(UserPrivate v) => v.checkCode;
  static const Field<UserPrivate, String> _f$checkCode =
      Field('checkCode', _$checkCode);
  static bool _$subscription(UserPrivate v) => v.subscription;
  static const Field<UserPrivate, bool> _f$subscription =
      Field('subscription', _$subscription);
  static bool? _$warned(UserPrivate v) => v.warned;
  static const Field<UserPrivate, bool> _f$warned =
      Field('warned', _$warned, opt: true);
  static String? _$warnMessage(UserPrivate v) => v.warnMessage;
  static const Field<UserPrivate, String> _f$warnMessage =
      Field('warnMessage', _$warnMessage, opt: true);
  static bool? _$banned(UserPrivate v) => v.banned;
  static const Field<UserPrivate, bool> _f$banned =
      Field('banned', _$banned, opt: true);
  static String? _$banMessage(UserPrivate v) => v.banMessage;
  static const Field<UserPrivate, String> _f$banMessage =
      Field('banMessage', _$banMessage, opt: true);
  static int _$reviewsLeft(UserPrivate v) => v.reviewsLeft;
  static const Field<UserPrivate, int> _f$reviewsLeft =
      Field('reviewsLeft', _$reviewsLeft);
  static int _$unreadMessages(UserPrivate v) => v.unreadMessages;
  static const Field<UserPrivate, int> _f$unreadMessages =
      Field('unreadMessages', _$unreadMessages);
  static List<String> _$ignoreList(UserPrivate v) => v.ignoreList;
  static const Field<UserPrivate, List<String>> _f$ignoreList =
      Field('ignoreList', _$ignoreList);
  static bool? _$deleteInProgress(UserPrivate v) => v.deleteInProgress;
  static const Field<UserPrivate, bool> _f$deleteInProgress =
      Field('deleteInProgress', _$deleteInProgress, opt: true);
  static String? _$deleteAt(UserPrivate v) => v.deleteAt;
  static const Field<UserPrivate, String> _f$deleteAt =
      Field('deleteAt', _$deleteAt, opt: true);
  static LinkedAccounts _$linkedAccounts(UserPrivate v) => v.linkedAccounts;
  static const Field<UserPrivate, LinkedAccounts> _f$linkedAccounts =
      Field('linkedAccounts', _$linkedAccounts, key: 'linked_accounts');
  static bool _$hasEmail(UserPrivate v) => v.hasEmail;
  static const Field<UserPrivate, bool> _f$hasEmail =
      Field('hasEmail', _$hasEmail);
  static int _$writtenReviews(UserPrivate v) => v.writtenReviews;
  static const Field<UserPrivate, int> _f$writtenReviews =
      Field('writtenReviews', _$writtenReviews, key: 'written_reviews');

  @override
  final MappableFields<UserPrivate> fields = const {
    #id: _f$id,
    #ingameName: _f$ingameName,
    #avatar: _f$avatar,
    #repoutation: _f$repoutation,
    #locale: _f$locale,
    #platform: _f$platform,
    #crossplay: _f$crossplay,
    #status: _f$status,
    #activity: _f$activity,
    #lastSeen: _f$lastSeen,
    #role: _f$role,
    #background: _f$background,
    #about: _f$about,
    #aboutRaw: _f$aboutRaw,
    #reputation: _f$reputation,
    #masteryRank: _f$masteryRank,
    #credits: _f$credits,
    #theme: _f$theme,
    #achievementShowcase: _f$achievementShowcase,
    #verification: _f$verification,
    #checkCode: _f$checkCode,
    #subscription: _f$subscription,
    #warned: _f$warned,
    #warnMessage: _f$warnMessage,
    #banned: _f$banned,
    #banMessage: _f$banMessage,
    #reviewsLeft: _f$reviewsLeft,
    #unreadMessages: _f$unreadMessages,
    #ignoreList: _f$ignoreList,
    #deleteInProgress: _f$deleteInProgress,
    #deleteAt: _f$deleteAt,
    #linkedAccounts: _f$linkedAccounts,
    #hasEmail: _f$hasEmail,
    #writtenReviews: _f$writtenReviews,
  };
  @override
  final bool ignoreNull = true;

  static UserPrivate _instantiate(DecodingData data) {
    return UserPrivate(
        id: data.dec(_f$id),
        ingameName: data.dec(_f$ingameName),
        avatar: data.dec(_f$avatar),
        repoutation: data.dec(_f$repoutation),
        locale: data.dec(_f$locale),
        platform: data.dec(_f$platform),
        crossplay: data.dec(_f$crossplay),
        status: data.dec(_f$status),
        activity: data.dec(_f$activity),
        lastSeen: data.dec(_f$lastSeen),
        role: data.dec(_f$role),
        background: data.dec(_f$background),
        about: data.dec(_f$about),
        aboutRaw: data.dec(_f$aboutRaw),
        reputation: data.dec(_f$reputation),
        masteryRank: data.dec(_f$masteryRank),
        credits: data.dec(_f$credits),
        theme: data.dec(_f$theme),
        achievementShowcase: data.dec(_f$achievementShowcase),
        verification: data.dec(_f$verification),
        checkCode: data.dec(_f$checkCode),
        subscription: data.dec(_f$subscription),
        warned: data.dec(_f$warned),
        warnMessage: data.dec(_f$warnMessage),
        banned: data.dec(_f$banned),
        banMessage: data.dec(_f$banMessage),
        reviewsLeft: data.dec(_f$reviewsLeft),
        unreadMessages: data.dec(_f$unreadMessages),
        ignoreList: data.dec(_f$ignoreList),
        deleteInProgress: data.dec(_f$deleteInProgress),
        deleteAt: data.dec(_f$deleteAt),
        linkedAccounts: data.dec(_f$linkedAccounts),
        hasEmail: data.dec(_f$hasEmail),
        writtenReviews: data.dec(_f$writtenReviews));
  }

  @override
  final Function instantiate = _instantiate;

  static UserPrivate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserPrivate>(map);
  }

  static UserPrivate fromJson(String json) {
    return ensureInitialized().decodeJson<UserPrivate>(json);
  }
}

mixin UserPrivateMappable {
  String toJson() {
    return UserPrivateMapper.ensureInitialized()
        .encodeJson<UserPrivate>(this as UserPrivate);
  }

  Map<String, dynamic> toMap() {
    return UserPrivateMapper.ensureInitialized()
        .encodeMap<UserPrivate>(this as UserPrivate);
  }

  UserPrivateCopyWith<UserPrivate, UserPrivate, UserPrivate> get copyWith =>
      _UserPrivateCopyWithImpl(this as UserPrivate, $identity, $identity);
  @override
  String toString() {
    return UserPrivateMapper.ensureInitialized()
        .stringifyValue(this as UserPrivate);
  }

  @override
  bool operator ==(Object other) {
    return UserPrivateMapper.ensureInitialized()
        .equalsValue(this as UserPrivate, other);
  }

  @override
  int get hashCode {
    return UserPrivateMapper.ensureInitialized().hashValue(this as UserPrivate);
  }
}

extension UserPrivateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserPrivate, $Out> {
  UserPrivateCopyWith<$R, UserPrivate, $Out> get $asUserPrivate =>
      $base.as((v, t, t2) => _UserPrivateCopyWithImpl(v, t, t2));
}

abstract class UserPrivateCopyWith<$R, $In extends UserPrivate, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ActivityCopyWith<$R, Activity, Activity> get activity;
  AchievementCopyWith<$R, Achievement, Achievement> get achievementShowcase;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get ignoreList;
  LinkedAccountsCopyWith<$R, LinkedAccounts, LinkedAccounts> get linkedAccounts;
  $R call(
      {String? id,
      String? ingameName,
      String? avatar,
      int? repoutation,
      String? locale,
      MarketPlatform? platform,
      bool? crossplay,
      UserStatus? status,
      Activity? activity,
      DateTime? lastSeen,
      Role? role,
      String? background,
      String? about,
      String? aboutRaw,
      int? reputation,
      int? masteryRank,
      int? credits,
      String? theme,
      Achievement? achievementShowcase,
      bool? verification,
      String? checkCode,
      bool? subscription,
      bool? warned,
      String? warnMessage,
      bool? banned,
      String? banMessage,
      int? reviewsLeft,
      int? unreadMessages,
      List<String>? ignoreList,
      bool? deleteInProgress,
      String? deleteAt,
      LinkedAccounts? linkedAccounts,
      bool? hasEmail,
      int? writtenReviews});
  UserPrivateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserPrivateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserPrivate, $Out>
    implements UserPrivateCopyWith<$R, UserPrivate, $Out> {
  _UserPrivateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserPrivate> $mapper =
      UserPrivateMapper.ensureInitialized();
  @override
  ActivityCopyWith<$R, Activity, Activity> get activity =>
      $value.activity.copyWith.$chain((v) => call(activity: v));
  @override
  AchievementCopyWith<$R, Achievement, Achievement> get achievementShowcase =>
      $value.achievementShowcase.copyWith
          .$chain((v) => call(achievementShowcase: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get ignoreList =>
      ListCopyWith($value.ignoreList, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(ignoreList: v));
  @override
  LinkedAccountsCopyWith<$R, LinkedAccounts, LinkedAccounts>
      get linkedAccounts =>
          $value.linkedAccounts.copyWith.$chain((v) => call(linkedAccounts: v));
  @override
  $R call(
          {String? id,
          String? ingameName,
          Object? avatar = $none,
          int? repoutation,
          String? locale,
          MarketPlatform? platform,
          bool? crossplay,
          UserStatus? status,
          Activity? activity,
          DateTime? lastSeen,
          Role? role,
          Object? background = $none,
          Object? about = $none,
          Object? aboutRaw = $none,
          int? reputation,
          int? masteryRank,
          int? credits,
          String? theme,
          Achievement? achievementShowcase,
          bool? verification,
          String? checkCode,
          bool? subscription,
          Object? warned = $none,
          Object? warnMessage = $none,
          Object? banned = $none,
          Object? banMessage = $none,
          int? reviewsLeft,
          int? unreadMessages,
          List<String>? ignoreList,
          Object? deleteInProgress = $none,
          Object? deleteAt = $none,
          LinkedAccounts? linkedAccounts,
          bool? hasEmail,
          int? writtenReviews}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (ingameName != null) #ingameName: ingameName,
        if (avatar != $none) #avatar: avatar,
        if (repoutation != null) #repoutation: repoutation,
        if (locale != null) #locale: locale,
        if (platform != null) #platform: platform,
        if (crossplay != null) #crossplay: crossplay,
        if (status != null) #status: status,
        if (activity != null) #activity: activity,
        if (lastSeen != null) #lastSeen: lastSeen,
        if (role != null) #role: role,
        if (background != $none) #background: background,
        if (about != $none) #about: about,
        if (aboutRaw != $none) #aboutRaw: aboutRaw,
        if (reputation != null) #reputation: reputation,
        if (masteryRank != null) #masteryRank: masteryRank,
        if (credits != null) #credits: credits,
        if (theme != null) #theme: theme,
        if (achievementShowcase != null)
          #achievementShowcase: achievementShowcase,
        if (verification != null) #verification: verification,
        if (checkCode != null) #checkCode: checkCode,
        if (subscription != null) #subscription: subscription,
        if (warned != $none) #warned: warned,
        if (warnMessage != $none) #warnMessage: warnMessage,
        if (banned != $none) #banned: banned,
        if (banMessage != $none) #banMessage: banMessage,
        if (reviewsLeft != null) #reviewsLeft: reviewsLeft,
        if (unreadMessages != null) #unreadMessages: unreadMessages,
        if (ignoreList != null) #ignoreList: ignoreList,
        if (deleteInProgress != $none) #deleteInProgress: deleteInProgress,
        if (deleteAt != $none) #deleteAt: deleteAt,
        if (linkedAccounts != null) #linkedAccounts: linkedAccounts,
        if (hasEmail != null) #hasEmail: hasEmail,
        if (writtenReviews != null) #writtenReviews: writtenReviews
      }));
  @override
  UserPrivate $make(CopyWithData data) => UserPrivate(
      id: data.get(#id, or: $value.id),
      ingameName: data.get(#ingameName, or: $value.ingameName),
      avatar: data.get(#avatar, or: $value.avatar),
      repoutation: data.get(#repoutation, or: $value.repoutation),
      locale: data.get(#locale, or: $value.locale),
      platform: data.get(#platform, or: $value.platform),
      crossplay: data.get(#crossplay, or: $value.crossplay),
      status: data.get(#status, or: $value.status),
      activity: data.get(#activity, or: $value.activity),
      lastSeen: data.get(#lastSeen, or: $value.lastSeen),
      role: data.get(#role, or: $value.role),
      background: data.get(#background, or: $value.background),
      about: data.get(#about, or: $value.about),
      aboutRaw: data.get(#aboutRaw, or: $value.aboutRaw),
      reputation: data.get(#reputation, or: $value.reputation),
      masteryRank: data.get(#masteryRank, or: $value.masteryRank),
      credits: data.get(#credits, or: $value.credits),
      theme: data.get(#theme, or: $value.theme),
      achievementShowcase:
          data.get(#achievementShowcase, or: $value.achievementShowcase),
      verification: data.get(#verification, or: $value.verification),
      checkCode: data.get(#checkCode, or: $value.checkCode),
      subscription: data.get(#subscription, or: $value.subscription),
      warned: data.get(#warned, or: $value.warned),
      warnMessage: data.get(#warnMessage, or: $value.warnMessage),
      banned: data.get(#banned, or: $value.banned),
      banMessage: data.get(#banMessage, or: $value.banMessage),
      reviewsLeft: data.get(#reviewsLeft, or: $value.reviewsLeft),
      unreadMessages: data.get(#unreadMessages, or: $value.unreadMessages),
      ignoreList: data.get(#ignoreList, or: $value.ignoreList),
      deleteInProgress:
          data.get(#deleteInProgress, or: $value.deleteInProgress),
      deleteAt: data.get(#deleteAt, or: $value.deleteAt),
      linkedAccounts: data.get(#linkedAccounts, or: $value.linkedAccounts),
      hasEmail: data.get(#hasEmail, or: $value.hasEmail),
      writtenReviews: data.get(#writtenReviews, or: $value.writtenReviews));

  @override
  UserPrivateCopyWith<$R2, UserPrivate, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserPrivateCopyWithImpl($value, $cast, t);
}

class LinkedAccountsMapper extends ClassMapperBase<LinkedAccounts> {
  LinkedAccountsMapper._();

  static LinkedAccountsMapper? _instance;
  static LinkedAccountsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LinkedAccountsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LinkedAccounts';

  static bool _$steamProfile(LinkedAccounts v) => v.steamProfile;
  static const Field<LinkedAccounts, bool> _f$steamProfile = Field(
      'steamProfile', _$steamProfile,
      key: 'steam_profile', opt: true, def: false);
  static bool _$patreonProfile(LinkedAccounts v) => v.patreonProfile;
  static const Field<LinkedAccounts, bool> _f$patreonProfile = Field(
      'patreonProfile', _$patreonProfile,
      key: 'patreon_profile', opt: true, def: false);
  static bool _$xboxProfile(LinkedAccounts v) => v.xboxProfile;
  static const Field<LinkedAccounts, bool> _f$xboxProfile = Field(
      'xboxProfile', _$xboxProfile,
      key: 'xbox_profile', opt: true, def: false);

  @override
  final MappableFields<LinkedAccounts> fields = const {
    #steamProfile: _f$steamProfile,
    #patreonProfile: _f$patreonProfile,
    #xboxProfile: _f$xboxProfile,
  };
  @override
  final bool ignoreNull = true;

  static LinkedAccounts _instantiate(DecodingData data) {
    return LinkedAccounts(
        steamProfile: data.dec(_f$steamProfile),
        patreonProfile: data.dec(_f$patreonProfile),
        xboxProfile: data.dec(_f$xboxProfile));
  }

  @override
  final Function instantiate = _instantiate;

  static LinkedAccounts fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LinkedAccounts>(map);
  }

  static LinkedAccounts fromJson(String json) {
    return ensureInitialized().decodeJson<LinkedAccounts>(json);
  }
}

mixin LinkedAccountsMappable {
  String toJson() {
    return LinkedAccountsMapper.ensureInitialized()
        .encodeJson<LinkedAccounts>(this as LinkedAccounts);
  }

  Map<String, dynamic> toMap() {
    return LinkedAccountsMapper.ensureInitialized()
        .encodeMap<LinkedAccounts>(this as LinkedAccounts);
  }

  LinkedAccountsCopyWith<LinkedAccounts, LinkedAccounts, LinkedAccounts>
      get copyWith => _LinkedAccountsCopyWithImpl(
          this as LinkedAccounts, $identity, $identity);
  @override
  String toString() {
    return LinkedAccountsMapper.ensureInitialized()
        .stringifyValue(this as LinkedAccounts);
  }

  @override
  bool operator ==(Object other) {
    return LinkedAccountsMapper.ensureInitialized()
        .equalsValue(this as LinkedAccounts, other);
  }

  @override
  int get hashCode {
    return LinkedAccountsMapper.ensureInitialized()
        .hashValue(this as LinkedAccounts);
  }
}

extension LinkedAccountsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LinkedAccounts, $Out> {
  LinkedAccountsCopyWith<$R, LinkedAccounts, $Out> get $asLinkedAccounts =>
      $base.as((v, t, t2) => _LinkedAccountsCopyWithImpl(v, t, t2));
}

abstract class LinkedAccountsCopyWith<$R, $In extends LinkedAccounts, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? steamProfile, bool? patreonProfile, bool? xboxProfile});
  LinkedAccountsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LinkedAccountsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LinkedAccounts, $Out>
    implements LinkedAccountsCopyWith<$R, LinkedAccounts, $Out> {
  _LinkedAccountsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LinkedAccounts> $mapper =
      LinkedAccountsMapper.ensureInitialized();
  @override
  $R call({bool? steamProfile, bool? patreonProfile, bool? xboxProfile}) =>
      $apply(FieldCopyWithData({
        if (steamProfile != null) #steamProfile: steamProfile,
        if (patreonProfile != null) #patreonProfile: patreonProfile,
        if (xboxProfile != null) #xboxProfile: xboxProfile
      }));
  @override
  LinkedAccounts $make(CopyWithData data) => LinkedAccounts(
      steamProfile: data.get(#steamProfile, or: $value.steamProfile),
      patreonProfile: data.get(#patreonProfile, or: $value.patreonProfile),
      xboxProfile: data.get(#xboxProfile, or: $value.xboxProfile));

  @override
  LinkedAccountsCopyWith<$R2, LinkedAccounts, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LinkedAccountsCopyWithImpl($value, $cast, t);
}

class PatreonProfileMapper extends ClassMapperBase<PatreonProfile> {
  PatreonProfileMapper._();

  static PatreonProfileMapper? _instance;
  static PatreonProfileMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PatreonProfileMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PatreonProfile';

  static bool _$patreonFounder(PatreonProfile v) => v.patreonFounder;
  static const Field<PatreonProfile, bool> _f$patreonFounder =
      Field('patreonFounder', _$patreonFounder, key: 'patreon_founder');
  static bool _$subscription(PatreonProfile v) => v.subscription;
  static const Field<PatreonProfile, bool> _f$subscription =
      Field('subscription', _$subscription);
  static PatreonBadge _$patreonBadge(PatreonProfile v) => v.patreonBadge;
  static const Field<PatreonProfile, PatreonBadge> _f$patreonBadge =
      Field('patreonBadge', _$patreonBadge, key: 'patreon_badge');

  @override
  final MappableFields<PatreonProfile> fields = const {
    #patreonFounder: _f$patreonFounder,
    #subscription: _f$subscription,
    #patreonBadge: _f$patreonBadge,
  };
  @override
  final bool ignoreNull = true;

  static PatreonProfile _instantiate(DecodingData data) {
    return PatreonProfile(
        patreonFounder: data.dec(_f$patreonFounder),
        subscription: data.dec(_f$subscription),
        patreonBadge: data.dec(_f$patreonBadge));
  }

  @override
  final Function instantiate = _instantiate;

  static PatreonProfile fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PatreonProfile>(map);
  }

  static PatreonProfile fromJson(String json) {
    return ensureInitialized().decodeJson<PatreonProfile>(json);
  }
}

mixin PatreonProfileMappable {
  String toJson() {
    return PatreonProfileMapper.ensureInitialized()
        .encodeJson<PatreonProfile>(this as PatreonProfile);
  }

  Map<String, dynamic> toMap() {
    return PatreonProfileMapper.ensureInitialized()
        .encodeMap<PatreonProfile>(this as PatreonProfile);
  }

  PatreonProfileCopyWith<PatreonProfile, PatreonProfile, PatreonProfile>
      get copyWith => _PatreonProfileCopyWithImpl(
          this as PatreonProfile, $identity, $identity);
  @override
  String toString() {
    return PatreonProfileMapper.ensureInitialized()
        .stringifyValue(this as PatreonProfile);
  }

  @override
  bool operator ==(Object other) {
    return PatreonProfileMapper.ensureInitialized()
        .equalsValue(this as PatreonProfile, other);
  }

  @override
  int get hashCode {
    return PatreonProfileMapper.ensureInitialized()
        .hashValue(this as PatreonProfile);
  }
}

extension PatreonProfileValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PatreonProfile, $Out> {
  PatreonProfileCopyWith<$R, PatreonProfile, $Out> get $asPatreonProfile =>
      $base.as((v, t, t2) => _PatreonProfileCopyWithImpl(v, t, t2));
}

abstract class PatreonProfileCopyWith<$R, $In extends PatreonProfile, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {bool? patreonFounder, bool? subscription, PatreonBadge? patreonBadge});
  PatreonProfileCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PatreonProfileCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PatreonProfile, $Out>
    implements PatreonProfileCopyWith<$R, PatreonProfile, $Out> {
  _PatreonProfileCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PatreonProfile> $mapper =
      PatreonProfileMapper.ensureInitialized();
  @override
  $R call(
          {bool? patreonFounder,
          bool? subscription,
          PatreonBadge? patreonBadge}) =>
      $apply(FieldCopyWithData({
        if (patreonFounder != null) #patreonFounder: patreonFounder,
        if (subscription != null) #subscription: subscription,
        if (patreonBadge != null) #patreonBadge: patreonBadge
      }));
  @override
  PatreonProfile $make(CopyWithData data) => PatreonProfile(
      patreonFounder: data.get(#patreonFounder, or: $value.patreonFounder),
      subscription: data.get(#subscription, or: $value.subscription),
      patreonBadge: data.get(#patreonBadge, or: $value.patreonBadge));

  @override
  PatreonProfileCopyWith<$R2, PatreonProfile, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PatreonProfileCopyWithImpl($value, $cast, t);
}

typedef _t$_R0<A, B> = ({A description, B name});

class _t$_R0Mapper extends RecordMapperBase<_t$_R0> {
  static _t$_R0Mapper? _instance;
  _t$_R0Mapper._();

  static _t$_R0Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R0Mapper._());
      MapperBase.addType(<A, B>(f) => f<({A description, B name})>());
    }
    return _instance!;
  }

  static dynamic _$description(_t$_R0 v) => v.description;
  static dynamic _arg$description<A, B>(f) => f<A>();
  static const Field<_t$_R0, dynamic> _f$description =
      Field('description', _$description, arg: _arg$description);
  static dynamic _$name(_t$_R0 v) => v.name;
  static dynamic _arg$name<A, B>(f) => f<B>();
  static const Field<_t$_R0, dynamic> _f$name =
      Field('name', _$name, arg: _arg$name);

  @override
  final MappableFields<_t$_R0> fields = const {
    #description: _f$description,
    #name: _f$name,
  };

  @override
  Function get typeFactory => <A, B>(f) => f<_t$_R0<A, B>>();

  static _t$_R0<A, B> _instantiate<A, B>(DecodingData<_t$_R0> data) {
    return (description: data.dec(_f$description), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R0<A, B> fromMap<A, B>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R0<A, B>>(map);
  }

  static _t$_R0<A, B> fromJson<A, B>(String json) {
    return ensureInitialized().decodeJson<_t$_R0<A, B>>(json);
  }
}
