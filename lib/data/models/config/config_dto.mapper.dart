// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'config_dto.dart';

class ConfigDtoMapper extends ClassMapperBase<ConfigDto> {
  ConfigDtoMapper._();

  static ConfigDtoMapper? _instance;
  static ConfigDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConfigDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ConfigDto';

  static int _$id(ConfigDto v) => v.id;
  static const Field<ConfigDto, int> _f$id = Field('id', _$id);
  static String? _$address(ConfigDto v) => v.address;
  static const Field<ConfigDto, String> _f$address =
      Field('address', _$address, opt: true);
  static String? _$phone(ConfigDto v) => v.phone;
  static const Field<ConfigDto, String> _f$phone =
      Field('phone', _$phone, opt: true);
  static double? _$longitude(ConfigDto v) => v.longitude;
  static const Field<ConfigDto, double> _f$longitude =
      Field('longitude', _$longitude, opt: true);
  static double? _$latitude(ConfigDto v) => v.latitude;
  static const Field<ConfigDto, double> _f$latitude =
      Field('latitude', _$latitude, opt: true);

  @override
  final MappableFields<ConfigDto> fields = const {
    #id: _f$id,
    #address: _f$address,
    #phone: _f$phone,
    #longitude: _f$longitude,
    #latitude: _f$latitude,
  };

  static ConfigDto _instantiate(DecodingData data) {
    return ConfigDto(
        id: data.dec(_f$id),
        address: data.dec(_f$address),
        phone: data.dec(_f$phone),
        longitude: data.dec(_f$longitude),
        latitude: data.dec(_f$latitude));
  }

  @override
  final Function instantiate = _instantiate;

  static ConfigDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ConfigDto>(map);
  }

  static ConfigDto fromJson(String json) {
    return ensureInitialized().decodeJson<ConfigDto>(json);
  }
}

mixin ConfigDtoMappable {
  String toJson() {
    return ConfigDtoMapper.ensureInitialized()
        .encodeJson<ConfigDto>(this as ConfigDto);
  }

  Map<String, dynamic> toMap() {
    return ConfigDtoMapper.ensureInitialized()
        .encodeMap<ConfigDto>(this as ConfigDto);
  }

  ConfigDtoCopyWith<ConfigDto, ConfigDto, ConfigDto> get copyWith =>
      _ConfigDtoCopyWithImpl(this as ConfigDto, $identity, $identity);
  @override
  String toString() {
    return ConfigDtoMapper.ensureInitialized()
        .stringifyValue(this as ConfigDto);
  }

  @override
  bool operator ==(Object other) {
    return ConfigDtoMapper.ensureInitialized()
        .equalsValue(this as ConfigDto, other);
  }

  @override
  int get hashCode {
    return ConfigDtoMapper.ensureInitialized().hashValue(this as ConfigDto);
  }
}

extension ConfigDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, ConfigDto, $Out> {
  ConfigDtoCopyWith<$R, ConfigDto, $Out> get $asConfigDto =>
      $base.as((v, t, t2) => _ConfigDtoCopyWithImpl(v, t, t2));
}

abstract class ConfigDtoCopyWith<$R, $In extends ConfigDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? address,
      String? phone,
      double? longitude,
      double? latitude});
  ConfigDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ConfigDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ConfigDto, $Out>
    implements ConfigDtoCopyWith<$R, ConfigDto, $Out> {
  _ConfigDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ConfigDto> $mapper =
      ConfigDtoMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          Object? address = $none,
          Object? phone = $none,
          Object? longitude = $none,
          Object? latitude = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (address != $none) #address: address,
        if (phone != $none) #phone: phone,
        if (longitude != $none) #longitude: longitude,
        if (latitude != $none) #latitude: latitude
      }));
  @override
  ConfigDto $make(CopyWithData data) => ConfigDto(
      id: data.get(#id, or: $value.id),
      address: data.get(#address, or: $value.address),
      phone: data.get(#phone, or: $value.phone),
      longitude: data.get(#longitude, or: $value.longitude),
      latitude: data.get(#latitude, or: $value.latitude));

  @override
  ConfigDtoCopyWith<$R2, ConfigDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ConfigDtoCopyWithImpl($value, $cast, t);
}
