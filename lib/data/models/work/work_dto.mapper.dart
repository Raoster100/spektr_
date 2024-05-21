// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'work_dto.dart';

class WorkDtoMapper extends ClassMapperBase<WorkDto> {
  WorkDtoMapper._();

  static WorkDtoMapper? _instance;
  static WorkDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorkDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WorkDto';

  static int _$id(WorkDto v) => v.id;
  static const Field<WorkDto, int> _f$id = Field('id', _$id);
  static String _$name(WorkDto v) => v.name;
  static const Field<WorkDto, String> _f$name = Field('name', _$name);
  static int _$price(WorkDto v) => v.price;
  static const Field<WorkDto, int> _f$price = Field('price', _$price);
  static String? _$description(WorkDto v) => v.description;
  static const Field<WorkDto, String> _f$description =
      Field('description', _$description, opt: true);

  @override
  final MappableFields<WorkDto> fields = const {
    #id: _f$id,
    #name: _f$name,
    #price: _f$price,
    #description: _f$description,
  };

  static WorkDto _instantiate(DecodingData data) {
    return WorkDto(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        price: data.dec(_f$price),
        description: data.dec(_f$description));
  }

  @override
  final Function instantiate = _instantiate;

  static WorkDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WorkDto>(map);
  }

  static WorkDto fromJson(String json) {
    return ensureInitialized().decodeJson<WorkDto>(json);
  }
}

mixin WorkDtoMappable {
  String toJson() {
    return WorkDtoMapper.ensureInitialized()
        .encodeJson<WorkDto>(this as WorkDto);
  }

  Map<String, dynamic> toMap() {
    return WorkDtoMapper.ensureInitialized()
        .encodeMap<WorkDto>(this as WorkDto);
  }

  WorkDtoCopyWith<WorkDto, WorkDto, WorkDto> get copyWith =>
      _WorkDtoCopyWithImpl(this as WorkDto, $identity, $identity);
  @override
  String toString() {
    return WorkDtoMapper.ensureInitialized().stringifyValue(this as WorkDto);
  }

  @override
  bool operator ==(Object other) {
    return WorkDtoMapper.ensureInitialized()
        .equalsValue(this as WorkDto, other);
  }

  @override
  int get hashCode {
    return WorkDtoMapper.ensureInitialized().hashValue(this as WorkDto);
  }
}

extension WorkDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, WorkDto, $Out> {
  WorkDtoCopyWith<$R, WorkDto, $Out> get $asWorkDto =>
      $base.as((v, t, t2) => _WorkDtoCopyWithImpl(v, t, t2));
}

abstract class WorkDtoCopyWith<$R, $In extends WorkDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name, int? price, String? description});
  WorkDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WorkDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WorkDto, $Out>
    implements WorkDtoCopyWith<$R, WorkDto, $Out> {
  _WorkDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WorkDto> $mapper =
      WorkDtoMapper.ensureInitialized();
  @override
  $R call({int? id, String? name, int? price, Object? description = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (price != null) #price: price,
        if (description != $none) #description: description
      }));
  @override
  WorkDto $make(CopyWithData data) => WorkDto(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      price: data.get(#price, or: $value.price),
      description: data.get(#description, or: $value.description));

  @override
  WorkDtoCopyWith<$R2, WorkDto, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _WorkDtoCopyWithImpl($value, $cast, t);
}
