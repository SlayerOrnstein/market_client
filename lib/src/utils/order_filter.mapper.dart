// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order_filter.dart';

class OrderFilterMapper extends ClassMapperBase<OrderFilter> {
  OrderFilterMapper._();

  static OrderFilterMapper? _instance;
  static OrderFilterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderFilterMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OrderFilter';

  static int? _$rank(OrderFilter v) => v.rank;
  static const Field<OrderFilter, int> _f$rank =
      Field('rank', _$rank, opt: true);
  static int? _$rankLt(OrderFilter v) => v.rankLt;
  static const Field<OrderFilter, int> _f$rankLt =
      Field('rankLt', _$rankLt, opt: true);
  static int? _$charges(OrderFilter v) => v.charges;
  static const Field<OrderFilter, int> _f$charges =
      Field('charges', _$charges, opt: true);
  static int? _$chargesLt(OrderFilter v) => v.chargesLt;
  static const Field<OrderFilter, int> _f$chargesLt =
      Field('chargesLt', _$chargesLt, opt: true);
  static int? _$amberStars(OrderFilter v) => v.amberStars;
  static const Field<OrderFilter, int> _f$amberStars =
      Field('amberStars', _$amberStars, opt: true);
  static int? _$amberLt(OrderFilter v) => v.amberLt;
  static const Field<OrderFilter, int> _f$amberLt =
      Field('amberLt', _$amberLt, opt: true);
  static int? _$cyanStars(OrderFilter v) => v.cyanStars;
  static const Field<OrderFilter, int> _f$cyanStars =
      Field('cyanStars', _$cyanStars, opt: true);
  static int? _$cyanStarsLt(OrderFilter v) => v.cyanStarsLt;
  static const Field<OrderFilter, int> _f$cyanStarsLt =
      Field('cyanStarsLt', _$cyanStarsLt, opt: true);
  static String? _$subtype(OrderFilter v) => v.subtype;
  static const Field<OrderFilter, String> _f$subtype =
      Field('subtype', _$subtype, opt: true);

  @override
  final MappableFields<OrderFilter> fields = const {
    #rank: _f$rank,
    #rankLt: _f$rankLt,
    #charges: _f$charges,
    #chargesLt: _f$chargesLt,
    #amberStars: _f$amberStars,
    #amberLt: _f$amberLt,
    #cyanStars: _f$cyanStars,
    #cyanStarsLt: _f$cyanStarsLt,
    #subtype: _f$subtype,
  };
  @override
  final bool ignoreNull = true;

  static OrderFilter _instantiate(DecodingData data) {
    return OrderFilter(
        rank: data.dec(_f$rank),
        rankLt: data.dec(_f$rankLt),
        charges: data.dec(_f$charges),
        chargesLt: data.dec(_f$chargesLt),
        amberStars: data.dec(_f$amberStars),
        amberLt: data.dec(_f$amberLt),
        cyanStars: data.dec(_f$cyanStars),
        cyanStarsLt: data.dec(_f$cyanStarsLt),
        subtype: data.dec(_f$subtype));
  }

  @override
  final Function instantiate = _instantiate;

  static OrderFilter fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderFilter>(map);
  }

  static OrderFilter fromJson(String json) {
    return ensureInitialized().decodeJson<OrderFilter>(json);
  }
}

mixin OrderFilterMappable {
  String toJson() {
    return OrderFilterMapper.ensureInitialized()
        .encodeJson<OrderFilter>(this as OrderFilter);
  }

  Map<String, dynamic> toMap() {
    return OrderFilterMapper.ensureInitialized()
        .encodeMap<OrderFilter>(this as OrderFilter);
  }

  OrderFilterCopyWith<OrderFilter, OrderFilter, OrderFilter> get copyWith =>
      _OrderFilterCopyWithImpl(this as OrderFilter, $identity, $identity);
  @override
  String toString() {
    return OrderFilterMapper.ensureInitialized()
        .stringifyValue(this as OrderFilter);
  }

  @override
  bool operator ==(Object other) {
    return OrderFilterMapper.ensureInitialized()
        .equalsValue(this as OrderFilter, other);
  }

  @override
  int get hashCode {
    return OrderFilterMapper.ensureInitialized().hashValue(this as OrderFilter);
  }
}

extension OrderFilterValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrderFilter, $Out> {
  OrderFilterCopyWith<$R, OrderFilter, $Out> get $asOrderFilter =>
      $base.as((v, t, t2) => _OrderFilterCopyWithImpl(v, t, t2));
}

abstract class OrderFilterCopyWith<$R, $In extends OrderFilter, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? rank,
      int? rankLt,
      int? charges,
      int? chargesLt,
      int? amberStars,
      int? amberLt,
      int? cyanStars,
      int? cyanStarsLt,
      String? subtype});
  OrderFilterCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OrderFilterCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderFilter, $Out>
    implements OrderFilterCopyWith<$R, OrderFilter, $Out> {
  _OrderFilterCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderFilter> $mapper =
      OrderFilterMapper.ensureInitialized();
  @override
  $R call(
          {Object? rank = $none,
          Object? rankLt = $none,
          Object? charges = $none,
          Object? chargesLt = $none,
          Object? amberStars = $none,
          Object? amberLt = $none,
          Object? cyanStars = $none,
          Object? cyanStarsLt = $none,
          Object? subtype = $none}) =>
      $apply(FieldCopyWithData({
        if (rank != $none) #rank: rank,
        if (rankLt != $none) #rankLt: rankLt,
        if (charges != $none) #charges: charges,
        if (chargesLt != $none) #chargesLt: chargesLt,
        if (amberStars != $none) #amberStars: amberStars,
        if (amberLt != $none) #amberLt: amberLt,
        if (cyanStars != $none) #cyanStars: cyanStars,
        if (cyanStarsLt != $none) #cyanStarsLt: cyanStarsLt,
        if (subtype != $none) #subtype: subtype
      }));
  @override
  OrderFilter $make(CopyWithData data) => OrderFilter(
      rank: data.get(#rank, or: $value.rank),
      rankLt: data.get(#rankLt, or: $value.rankLt),
      charges: data.get(#charges, or: $value.charges),
      chargesLt: data.get(#chargesLt, or: $value.chargesLt),
      amberStars: data.get(#amberStars, or: $value.amberStars),
      amberLt: data.get(#amberLt, or: $value.amberLt),
      cyanStars: data.get(#cyanStars, or: $value.cyanStars),
      cyanStarsLt: data.get(#cyanStarsLt, or: $value.cyanStarsLt),
      subtype: data.get(#subtype, or: $value.subtype));

  @override
  OrderFilterCopyWith<$R2, OrderFilter, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OrderFilterCopyWithImpl($value, $cast, t);
}
