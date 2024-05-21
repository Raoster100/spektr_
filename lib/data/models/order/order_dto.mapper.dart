// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order_dto.dart';

class OrderDtoMapper extends ClassMapperBase<OrderDto> {
  OrderDtoMapper._();

  static OrderDtoMapper? _instance;
  static OrderDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OrderDto';

  static int _$id(OrderDto v) => v.id;
  static const Field<OrderDto, int> _f$id = Field('id', _$id);
  static String _$name(OrderDto v) => v.name;
  static const Field<OrderDto, String> _f$name = Field('name', _$name);
  static String _$phone(OrderDto v) => v.phone;
  static const Field<OrderDto, String> _f$phone = Field('phone', _$phone);
  static String? _$type(OrderDto v) => v.type;
  static const Field<OrderDto, String> _f$type =
      Field('type', _$type, opt: true);
  static int? _$hours(OrderDto v) => v.hours;
  static const Field<OrderDto, int> _f$hours =
      Field('hours', _$hours, opt: true);

  @override
  final MappableFields<OrderDto> fields = const {
    #id: _f$id,
    #name: _f$name,
    #phone: _f$phone,
    #type: _f$type,
    #hours: _f$hours,
  };

  static OrderDto _instantiate(DecodingData data) {
    return OrderDto(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        phone: data.dec(_f$phone),
        type: data.dec(_f$type),
        hours: data.dec(_f$hours));
  }

  @override
  final Function instantiate = _instantiate;

  static OrderDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderDto>(map);
  }

  static OrderDto fromJson(String json) {
    return ensureInitialized().decodeJson<OrderDto>(json);
  }
}

mixin OrderDtoMappable {
  String toJson() {
    return OrderDtoMapper.ensureInitialized()
        .encodeJson<OrderDto>(this as OrderDto);
  }

  Map<String, dynamic> toMap() {
    return OrderDtoMapper.ensureInitialized()
        .encodeMap<OrderDto>(this as OrderDto);
  }

  OrderDtoCopyWith<OrderDto, OrderDto, OrderDto> get copyWith =>
      _OrderDtoCopyWithImpl(this as OrderDto, $identity, $identity);
  @override
  String toString() {
    return OrderDtoMapper.ensureInitialized().stringifyValue(this as OrderDto);
  }

  @override
  bool operator ==(Object other) {
    return OrderDtoMapper.ensureInitialized()
        .equalsValue(this as OrderDto, other);
  }

  @override
  int get hashCode {
    return OrderDtoMapper.ensureInitialized().hashValue(this as OrderDto);
  }
}

extension OrderDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, OrderDto, $Out> {
  OrderDtoCopyWith<$R, OrderDto, $Out> get $asOrderDto =>
      $base.as((v, t, t2) => _OrderDtoCopyWithImpl(v, t, t2));
}

abstract class OrderDtoCopyWith<$R, $In extends OrderDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name, String? phone, String? type, int? hours});
  OrderDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OrderDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderDto, $Out>
    implements OrderDtoCopyWith<$R, OrderDto, $Out> {
  _OrderDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderDto> $mapper =
      OrderDtoMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? name,
          String? phone,
          Object? type = $none,
          Object? hours = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (phone != null) #phone: phone,
        if (type != $none) #type: type,
        if (hours != $none) #hours: hours
      }));
  @override
  OrderDto $make(CopyWithData data) => OrderDto(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      phone: data.get(#phone, or: $value.phone),
      type: data.get(#type, or: $value.type),
      hours: data.get(#hours, or: $value.hours));

  @override
  OrderDtoCopyWith<$R2, OrderDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OrderDtoCopyWithImpl($value, $cast, t);
}
