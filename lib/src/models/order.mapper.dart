// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order.dart';

class OrderMapper extends ClassMapperBase<Order> {
  OrderMapper._();

  static OrderMapper? _instance;
  static OrderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderMapper._());
      OrderWithUserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Order';

  static String _$id(Order v) => v.id;
  static const Field<Order, String> _f$id = Field('id', _$id);
  static OrderType _$type(Order v) => v.type;
  static const Field<Order, OrderType> _f$type = Field('type', _$type);
  static int _$platinum(Order v) => v.platinum;
  static const Field<Order, int> _f$platinum = Field('platinum', _$platinum);
  static int _$quantity(Order v) => v.quantity;
  static const Field<Order, int> _f$quantity = Field('quantity', _$quantity);
  static int? _$perTrade(Order v) => v.perTrade;
  static const Field<Order, int> _f$perTrade = Field('perTrade', _$perTrade);
  static int? _$rank(Order v) => v.rank;
  static const Field<Order, int> _f$rank = Field('rank', _$rank);
  static int? _$charges(Order v) => v.charges;
  static const Field<Order, int> _f$charges = Field('charges', _$charges);
  static String? _$subtype(Order v) => v.subtype;
  static const Field<Order, String> _f$subtype = Field('subtype', _$subtype);
  static int _$amberStars(Order v) => v.amberStars;
  static const Field<Order, int> _f$amberStars =
      Field('amberStars', _$amberStars);
  static int _$cyanStars(Order v) => v.cyanStars;
  static const Field<Order, int> _f$cyanStars = Field('cyanStars', _$cyanStars);
  static bool _$visible(Order v) => v.visible;
  static const Field<Order, bool> _f$visible = Field('visible', _$visible);
  static DateTime _$creationAt(Order v) => v.creationAt;
  static const Field<Order, DateTime> _f$creationAt =
      Field('creationAt', _$creationAt);
  static DateTime _$updateAt(Order v) => v.updateAt;
  static const Field<Order, DateTime> _f$updateAt =
      Field('updateAt', _$updateAt);
  static String? _$itemId(Order v) => v.itemId;
  static const Field<Order, String> _f$itemId = Field('itemId', _$itemId);
  static String _$group(Order v) => v.group;
  static const Field<Order, String> _f$group = Field('group', _$group);

  @override
  final MappableFields<Order> fields = const {
    #id: _f$id,
    #type: _f$type,
    #platinum: _f$platinum,
    #quantity: _f$quantity,
    #perTrade: _f$perTrade,
    #rank: _f$rank,
    #charges: _f$charges,
    #subtype: _f$subtype,
    #amberStars: _f$amberStars,
    #cyanStars: _f$cyanStars,
    #visible: _f$visible,
    #creationAt: _f$creationAt,
    #updateAt: _f$updateAt,
    #itemId: _f$itemId,
    #group: _f$group,
  };

  static Order _instantiate(DecodingData data) {
    return Order(
        id: data.dec(_f$id),
        type: data.dec(_f$type),
        platinum: data.dec(_f$platinum),
        quantity: data.dec(_f$quantity),
        perTrade: data.dec(_f$perTrade),
        rank: data.dec(_f$rank),
        charges: data.dec(_f$charges),
        subtype: data.dec(_f$subtype),
        amberStars: data.dec(_f$amberStars),
        cyanStars: data.dec(_f$cyanStars),
        visible: data.dec(_f$visible),
        creationAt: data.dec(_f$creationAt),
        updateAt: data.dec(_f$updateAt),
        itemId: data.dec(_f$itemId),
        group: data.dec(_f$group));
  }

  @override
  final Function instantiate = _instantiate;

  static Order fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Order>(map);
  }

  static Order fromJson(String json) {
    return ensureInitialized().decodeJson<Order>(json);
  }
}

mixin OrderMappable {
  String toJson() {
    return OrderMapper.ensureInitialized().encodeJson<Order>(this as Order);
  }

  Map<String, dynamic> toMap() {
    return OrderMapper.ensureInitialized().encodeMap<Order>(this as Order);
  }

  OrderCopyWith<Order, Order, Order> get copyWith =>
      _OrderCopyWithImpl(this as Order, $identity, $identity);
  @override
  String toString() {
    return OrderMapper.ensureInitialized().stringifyValue(this as Order);
  }

  @override
  bool operator ==(Object other) {
    return OrderMapper.ensureInitialized().equalsValue(this as Order, other);
  }

  @override
  int get hashCode {
    return OrderMapper.ensureInitialized().hashValue(this as Order);
  }
}

extension OrderValueCopy<$R, $Out> on ObjectCopyWith<$R, Order, $Out> {
  OrderCopyWith<$R, Order, $Out> get $asOrder =>
      $base.as((v, t, t2) => _OrderCopyWithImpl(v, t, t2));
}

abstract class OrderCopyWith<$R, $In extends Order, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      OrderType? type,
      int? platinum,
      int? quantity,
      int? perTrade,
      int? rank,
      int? charges,
      String? subtype,
      int? amberStars,
      int? cyanStars,
      bool? visible,
      DateTime? creationAt,
      DateTime? updateAt,
      String? itemId,
      String? group});
  OrderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OrderCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Order, $Out>
    implements OrderCopyWith<$R, Order, $Out> {
  _OrderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Order> $mapper = OrderMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          OrderType? type,
          int? platinum,
          int? quantity,
          Object? perTrade = $none,
          Object? rank = $none,
          Object? charges = $none,
          Object? subtype = $none,
          int? amberStars,
          int? cyanStars,
          bool? visible,
          DateTime? creationAt,
          DateTime? updateAt,
          Object? itemId = $none,
          String? group}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (type != null) #type: type,
        if (platinum != null) #platinum: platinum,
        if (quantity != null) #quantity: quantity,
        if (perTrade != $none) #perTrade: perTrade,
        if (rank != $none) #rank: rank,
        if (charges != $none) #charges: charges,
        if (subtype != $none) #subtype: subtype,
        if (amberStars != null) #amberStars: amberStars,
        if (cyanStars != null) #cyanStars: cyanStars,
        if (visible != null) #visible: visible,
        if (creationAt != null) #creationAt: creationAt,
        if (updateAt != null) #updateAt: updateAt,
        if (itemId != $none) #itemId: itemId,
        if (group != null) #group: group
      }));
  @override
  Order $make(CopyWithData data) => Order(
      id: data.get(#id, or: $value.id),
      type: data.get(#type, or: $value.type),
      platinum: data.get(#platinum, or: $value.platinum),
      quantity: data.get(#quantity, or: $value.quantity),
      perTrade: data.get(#perTrade, or: $value.perTrade),
      rank: data.get(#rank, or: $value.rank),
      charges: data.get(#charges, or: $value.charges),
      subtype: data.get(#subtype, or: $value.subtype),
      amberStars: data.get(#amberStars, or: $value.amberStars),
      cyanStars: data.get(#cyanStars, or: $value.cyanStars),
      visible: data.get(#visible, or: $value.visible),
      creationAt: data.get(#creationAt, or: $value.creationAt),
      updateAt: data.get(#updateAt, or: $value.updateAt),
      itemId: data.get(#itemId, or: $value.itemId),
      group: data.get(#group, or: $value.group));

  @override
  OrderCopyWith<$R2, Order, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _OrderCopyWithImpl($value, $cast, t);
}

class OrderWithUserMapper extends ClassMapperBase<OrderWithUser> {
  OrderWithUserMapper._();

  static OrderWithUserMapper? _instance;
  static OrderWithUserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderWithUserMapper._());
      OrderMapper.ensureInitialized();
      UserShortMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrderWithUser';

  static String _$id(OrderWithUser v) => v.id;
  static const Field<OrderWithUser, String> _f$id = Field('id', _$id);
  static OrderType _$type(OrderWithUser v) => v.type;
  static const Field<OrderWithUser, OrderType> _f$type = Field('type', _$type);
  static int _$platinum(OrderWithUser v) => v.platinum;
  static const Field<OrderWithUser, int> _f$platinum =
      Field('platinum', _$platinum);
  static int _$quantity(OrderWithUser v) => v.quantity;
  static const Field<OrderWithUser, int> _f$quantity =
      Field('quantity', _$quantity);
  static int? _$perTrade(OrderWithUser v) => v.perTrade;
  static const Field<OrderWithUser, int> _f$perTrade =
      Field('perTrade', _$perTrade);
  static int? _$rank(OrderWithUser v) => v.rank;
  static const Field<OrderWithUser, int> _f$rank = Field('rank', _$rank);
  static int? _$charges(OrderWithUser v) => v.charges;
  static const Field<OrderWithUser, int> _f$charges =
      Field('charges', _$charges);
  static String? _$subtype(OrderWithUser v) => v.subtype;
  static const Field<OrderWithUser, String> _f$subtype =
      Field('subtype', _$subtype);
  static int _$amberStars(OrderWithUser v) => v.amberStars;
  static const Field<OrderWithUser, int> _f$amberStars =
      Field('amberStars', _$amberStars);
  static int _$cyanStars(OrderWithUser v) => v.cyanStars;
  static const Field<OrderWithUser, int> _f$cyanStars =
      Field('cyanStars', _$cyanStars);
  static bool _$visible(OrderWithUser v) => v.visible;
  static const Field<OrderWithUser, bool> _f$visible =
      Field('visible', _$visible);
  static DateTime _$creationAt(OrderWithUser v) => v.creationAt;
  static const Field<OrderWithUser, DateTime> _f$creationAt =
      Field('creationAt', _$creationAt);
  static DateTime _$updateAt(OrderWithUser v) => v.updateAt;
  static const Field<OrderWithUser, DateTime> _f$updateAt =
      Field('updateAt', _$updateAt);
  static String? _$itemId(OrderWithUser v) => v.itemId;
  static const Field<OrderWithUser, String> _f$itemId =
      Field('itemId', _$itemId);
  static String _$group(OrderWithUser v) => v.group;
  static const Field<OrderWithUser, String> _f$group = Field('group', _$group);
  static UserShort _$user(OrderWithUser v) => v.user;
  static const Field<OrderWithUser, UserShort> _f$user = Field('user', _$user);

  @override
  final MappableFields<OrderWithUser> fields = const {
    #id: _f$id,
    #type: _f$type,
    #platinum: _f$platinum,
    #quantity: _f$quantity,
    #perTrade: _f$perTrade,
    #rank: _f$rank,
    #charges: _f$charges,
    #subtype: _f$subtype,
    #amberStars: _f$amberStars,
    #cyanStars: _f$cyanStars,
    #visible: _f$visible,
    #creationAt: _f$creationAt,
    #updateAt: _f$updateAt,
    #itemId: _f$itemId,
    #group: _f$group,
    #user: _f$user,
  };

  static OrderWithUser _instantiate(DecodingData data) {
    return OrderWithUser(
        id: data.dec(_f$id),
        type: data.dec(_f$type),
        platinum: data.dec(_f$platinum),
        quantity: data.dec(_f$quantity),
        perTrade: data.dec(_f$perTrade),
        rank: data.dec(_f$rank),
        charges: data.dec(_f$charges),
        subtype: data.dec(_f$subtype),
        amberStars: data.dec(_f$amberStars),
        cyanStars: data.dec(_f$cyanStars),
        visible: data.dec(_f$visible),
        creationAt: data.dec(_f$creationAt),
        updateAt: data.dec(_f$updateAt),
        itemId: data.dec(_f$itemId),
        group: data.dec(_f$group),
        user: data.dec(_f$user));
  }

  @override
  final Function instantiate = _instantiate;

  static OrderWithUser fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderWithUser>(map);
  }

  static OrderWithUser fromJson(String json) {
    return ensureInitialized().decodeJson<OrderWithUser>(json);
  }
}

mixin OrderWithUserMappable {
  String toJson() {
    return OrderWithUserMapper.ensureInitialized()
        .encodeJson<OrderWithUser>(this as OrderWithUser);
  }

  Map<String, dynamic> toMap() {
    return OrderWithUserMapper.ensureInitialized()
        .encodeMap<OrderWithUser>(this as OrderWithUser);
  }

  OrderWithUserCopyWith<OrderWithUser, OrderWithUser, OrderWithUser>
      get copyWith => _OrderWithUserCopyWithImpl(
          this as OrderWithUser, $identity, $identity);
  @override
  String toString() {
    return OrderWithUserMapper.ensureInitialized()
        .stringifyValue(this as OrderWithUser);
  }

  @override
  bool operator ==(Object other) {
    return OrderWithUserMapper.ensureInitialized()
        .equalsValue(this as OrderWithUser, other);
  }

  @override
  int get hashCode {
    return OrderWithUserMapper.ensureInitialized()
        .hashValue(this as OrderWithUser);
  }
}

extension OrderWithUserValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrderWithUser, $Out> {
  OrderWithUserCopyWith<$R, OrderWithUser, $Out> get $asOrderWithUser =>
      $base.as((v, t, t2) => _OrderWithUserCopyWithImpl(v, t, t2));
}

abstract class OrderWithUserCopyWith<$R, $In extends OrderWithUser, $Out>
    implements OrderCopyWith<$R, $In, $Out> {
  UserShortCopyWith<$R, UserShort, UserShort> get user;
  @override
  $R call(
      {String? id,
      OrderType? type,
      int? platinum,
      int? quantity,
      int? perTrade,
      int? rank,
      int? charges,
      String? subtype,
      int? amberStars,
      int? cyanStars,
      bool? visible,
      DateTime? creationAt,
      DateTime? updateAt,
      String? itemId,
      String? group,
      UserShort? user});
  OrderWithUserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OrderWithUserCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderWithUser, $Out>
    implements OrderWithUserCopyWith<$R, OrderWithUser, $Out> {
  _OrderWithUserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderWithUser> $mapper =
      OrderWithUserMapper.ensureInitialized();
  @override
  UserShortCopyWith<$R, UserShort, UserShort> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  $R call(
          {String? id,
          OrderType? type,
          int? platinum,
          int? quantity,
          Object? perTrade = $none,
          Object? rank = $none,
          Object? charges = $none,
          Object? subtype = $none,
          int? amberStars,
          int? cyanStars,
          bool? visible,
          DateTime? creationAt,
          DateTime? updateAt,
          Object? itemId = $none,
          String? group,
          UserShort? user}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (type != null) #type: type,
        if (platinum != null) #platinum: platinum,
        if (quantity != null) #quantity: quantity,
        if (perTrade != $none) #perTrade: perTrade,
        if (rank != $none) #rank: rank,
        if (charges != $none) #charges: charges,
        if (subtype != $none) #subtype: subtype,
        if (amberStars != null) #amberStars: amberStars,
        if (cyanStars != null) #cyanStars: cyanStars,
        if (visible != null) #visible: visible,
        if (creationAt != null) #creationAt: creationAt,
        if (updateAt != null) #updateAt: updateAt,
        if (itemId != $none) #itemId: itemId,
        if (group != null) #group: group,
        if (user != null) #user: user
      }));
  @override
  OrderWithUser $make(CopyWithData data) => OrderWithUser(
      id: data.get(#id, or: $value.id),
      type: data.get(#type, or: $value.type),
      platinum: data.get(#platinum, or: $value.platinum),
      quantity: data.get(#quantity, or: $value.quantity),
      perTrade: data.get(#perTrade, or: $value.perTrade),
      rank: data.get(#rank, or: $value.rank),
      charges: data.get(#charges, or: $value.charges),
      subtype: data.get(#subtype, or: $value.subtype),
      amberStars: data.get(#amberStars, or: $value.amberStars),
      cyanStars: data.get(#cyanStars, or: $value.cyanStars),
      visible: data.get(#visible, or: $value.visible),
      creationAt: data.get(#creationAt, or: $value.creationAt),
      updateAt: data.get(#updateAt, or: $value.updateAt),
      itemId: data.get(#itemId, or: $value.itemId),
      group: data.get(#group, or: $value.group),
      user: data.get(#user, or: $value.user));

  @override
  OrderWithUserCopyWith<$R2, OrderWithUser, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OrderWithUserCopyWithImpl($value, $cast, t);
}
