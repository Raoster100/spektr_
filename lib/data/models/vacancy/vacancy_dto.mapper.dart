// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'vacancy_dto.dart';

class VacancyDtoMapper extends ClassMapperBase<VacancyDto> {
  VacancyDtoMapper._();

  static VacancyDtoMapper? _instance;
  static VacancyDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VacancyDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VacancyDto';

  static int? _$id(VacancyDto v) => v.id;
  static const Field<VacancyDto, int> _f$id = Field('id', _$id, opt: true);
  static String _$name(VacancyDto v) => v.name;
  static const Field<VacancyDto, String> _f$name = Field('name', _$name);
  static int _$price(VacancyDto v) => v.price;
  static const Field<VacancyDto, int> _f$price = Field('price', _$price);
  static String? _$description(VacancyDto v) => v.description;
  static const Field<VacancyDto, String> _f$description =
      Field('description', _$description, opt: true);

  @override
  final MappableFields<VacancyDto> fields = const {
    #id: _f$id,
    #name: _f$name,
    #price: _f$price,
    #description: _f$description,
  };

  static VacancyDto _instantiate(DecodingData data) {
    return VacancyDto(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        price: data.dec(_f$price),
        description: data.dec(_f$description));
  }

  @override
  final Function instantiate = _instantiate;

  static VacancyDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VacancyDto>(map);
  }

  static VacancyDto fromJson(String json) {
    return ensureInitialized().decodeJson<VacancyDto>(json);
  }
}

mixin VacancyDtoMappable {
  String toJson() {
    return VacancyDtoMapper.ensureInitialized()
        .encodeJson<VacancyDto>(this as VacancyDto);
  }

  Map<String, dynamic> toMap() {
    return VacancyDtoMapper.ensureInitialized()
        .encodeMap<VacancyDto>(this as VacancyDto);
  }

  VacancyDtoCopyWith<VacancyDto, VacancyDto, VacancyDto> get copyWith =>
      _VacancyDtoCopyWithImpl(this as VacancyDto, $identity, $identity);
  @override
  String toString() {
    return VacancyDtoMapper.ensureInitialized()
        .stringifyValue(this as VacancyDto);
  }

  @override
  bool operator ==(Object other) {
    return VacancyDtoMapper.ensureInitialized()
        .equalsValue(this as VacancyDto, other);
  }

  @override
  int get hashCode {
    return VacancyDtoMapper.ensureInitialized().hashValue(this as VacancyDto);
  }
}

extension VacancyDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VacancyDto, $Out> {
  VacancyDtoCopyWith<$R, VacancyDto, $Out> get $asVacancyDto =>
      $base.as((v, t, t2) => _VacancyDtoCopyWithImpl(v, t, t2));
}

abstract class VacancyDtoCopyWith<$R, $In extends VacancyDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name, int? price, String? description});
  VacancyDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VacancyDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VacancyDto, $Out>
    implements VacancyDtoCopyWith<$R, VacancyDto, $Out> {
  _VacancyDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VacancyDto> $mapper =
      VacancyDtoMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? name,
          int? price,
          Object? description = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (name != null) #name: name,
        if (price != null) #price: price,
        if (description != $none) #description: description
      }));
  @override
  VacancyDto $make(CopyWithData data) => VacancyDto(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      price: data.get(#price, or: $value.price),
      description: data.get(#description, or: $value.description));

  @override
  VacancyDtoCopyWith<$R2, VacancyDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VacancyDtoCopyWithImpl($value, $cast, t);
}
