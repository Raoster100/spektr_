// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order_model.dart';

class OrderModelMapper extends ClassMapperBase<OrderModel> {
  OrderModelMapper._();

  static OrderModelMapper? _instance;
  static OrderModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OrderModel';

  static int _$id(OrderModel v) => v.id;
  static const Field<OrderModel, int> _f$id = Field('id', _$id);
  static String _$name(OrderModel v) => v.name;
  static const Field<OrderModel, String> _f$name = Field('name', _$name);
  static String _$phone(OrderModel v) => v.phone;
  static const Field<OrderModel, String> _f$phone = Field('phone', _$phone);
  static String _$type(OrderModel v) => v.type;
  static const Field<OrderModel, String> _f$type = Field('type', _$type);
  static int _$hours(OrderModel v) => v.hours;
  static const Field<OrderModel, int> _f$hours = Field('hours', _$hours);

  @override
  final MappableFields<OrderModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #phone: _f$phone,
    #type: _f$type,
    #hours: _f$hours,
  };

  static OrderModel _instantiate(DecodingData data) {
    return OrderModel(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        phone: data.dec(_f$phone),
        type: data.dec(_f$type),
        hours: data.dec(_f$hours));
  }

  @override
  final Function instantiate = _instantiate;

  static OrderModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderModel>(map);
  }

  static OrderModel fromJson(String json) {
    return ensureInitialized().decodeJson<OrderModel>(json);
  }
}

mixin OrderModelMappable {
  String toJson() {
    return OrderModelMapper.ensureInitialized()
        .encodeJson<OrderModel>(this as OrderModel);
  }

  Map<String, dynamic> toMap() {
    return OrderModelMapper.ensureInitialized()
        .encodeMap<OrderModel>(this as OrderModel);
  }

  OrderModelCopyWith<OrderModel, OrderModel, OrderModel> get copyWith =>
      _OrderModelCopyWithImpl(this as OrderModel, $identity, $identity);
  @override
  String toString() {
    return OrderModelMapper.ensureInitialized()
        .stringifyValue(this as OrderModel);
  }

  @override
  bool operator ==(Object other) {
    return OrderModelMapper.ensureInitialized()
        .equalsValue(this as OrderModel, other);
  }

  @override
  int get hashCode {
    return OrderModelMapper.ensureInitialized().hashValue(this as OrderModel);
  }
}

extension OrderModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrderModel, $Out> {
  OrderModelCopyWith<$R, OrderModel, $Out> get $asOrderModel =>
      $base.as((v, t, t2) => _OrderModelCopyWithImpl(v, t, t2));
}

abstract class OrderModelCopyWith<$R, $In extends OrderModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name, String? phone, String? type, int? hours});
  OrderModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OrderModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderModel, $Out>
    implements OrderModelCopyWith<$R, OrderModel, $Out> {
  _OrderModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderModel> $mapper =
      OrderModelMapper.ensureInitialized();
  @override
  $R call({int? id, String? name, String? phone, String? type, int? hours}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (phone != null) #phone: phone,
        if (type != null) #type: type,
        if (hours != null) #hours: hours
      }));
  @override
  OrderModel $make(CopyWithData data) => OrderModel(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      phone: data.get(#phone, or: $value.phone),
      type: data.get(#type, or: $value.type),
      hours: data.get(#hours, or: $value.hours));

  @override
  OrderModelCopyWith<$R2, OrderModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OrderModelCopyWithImpl($value, $cast, t);
}
