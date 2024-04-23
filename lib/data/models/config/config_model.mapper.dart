// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'config_model.dart';

class ConfigModelMapper extends ClassMapperBase<ConfigModel> {
  ConfigModelMapper._();

  static ConfigModelMapper? _instance;
  static ConfigModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConfigModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ConfigModel';

  static int _$id(ConfigModel v) => v.id;
  static const Field<ConfigModel, int> _f$id = Field('id', _$id);
  static String _$address(ConfigModel v) => v.address;
  static const Field<ConfigModel, String> _f$address =
      Field('address', _$address);
  static String _$phone(ConfigModel v) => v.phone;
  static const Field<ConfigModel, String> _f$phone = Field('phone', _$phone);
  static double _$longitude(ConfigModel v) => v.longitude;
  static const Field<ConfigModel, double> _f$longitude =
      Field('longitude', _$longitude);
  static double _$latitude(ConfigModel v) => v.latitude;
  static const Field<ConfigModel, double> _f$latitude =
      Field('latitude', _$latitude);

  @override
  final MappableFields<ConfigModel> fields = const {
    #id: _f$id,
    #address: _f$address,
    #phone: _f$phone,
    #longitude: _f$longitude,
    #latitude: _f$latitude,
  };

  static ConfigModel _instantiate(DecodingData data) {
    return ConfigModel(
        id: data.dec(_f$id),
        address: data.dec(_f$address),
        phone: data.dec(_f$phone),
        longitude: data.dec(_f$longitude),
        latitude: data.dec(_f$latitude));
  }

  @override
  final Function instantiate = _instantiate;

  static ConfigModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ConfigModel>(map);
  }

  static ConfigModel fromJson(String json) {
    return ensureInitialized().decodeJson<ConfigModel>(json);
  }
}

mixin ConfigModelMappable {
  String toJson() {
    return ConfigModelMapper.ensureInitialized()
        .encodeJson<ConfigModel>(this as ConfigModel);
  }

  Map<String, dynamic> toMap() {
    return ConfigModelMapper.ensureInitialized()
        .encodeMap<ConfigModel>(this as ConfigModel);
  }

  ConfigModelCopyWith<ConfigModel, ConfigModel, ConfigModel> get copyWith =>
      _ConfigModelCopyWithImpl(this as ConfigModel, $identity, $identity);
  @override
  String toString() {
    return ConfigModelMapper.ensureInitialized()
        .stringifyValue(this as ConfigModel);
  }

  @override
  bool operator ==(Object other) {
    return ConfigModelMapper.ensureInitialized()
        .equalsValue(this as ConfigModel, other);
  }

  @override
  int get hashCode {
    return ConfigModelMapper.ensureInitialized().hashValue(this as ConfigModel);
  }
}

extension ConfigModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ConfigModel, $Out> {
  ConfigModelCopyWith<$R, ConfigModel, $Out> get $asConfigModel =>
      $base.as((v, t, t2) => _ConfigModelCopyWithImpl(v, t, t2));
}

abstract class ConfigModelCopyWith<$R, $In extends ConfigModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? address,
      String? phone,
      double? longitude,
      double? latitude});
  ConfigModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ConfigModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ConfigModel, $Out>
    implements ConfigModelCopyWith<$R, ConfigModel, $Out> {
  _ConfigModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ConfigModel> $mapper =
      ConfigModelMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? address,
          String? phone,
          double? longitude,
          double? latitude}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (address != null) #address: address,
        if (phone != null) #phone: phone,
        if (longitude != null) #longitude: longitude,
        if (latitude != null) #latitude: latitude
      }));
  @override
  ConfigModel $make(CopyWithData data) => ConfigModel(
      id: data.get(#id, or: $value.id),
      address: data.get(#address, or: $value.address),
      phone: data.get(#phone, or: $value.phone),
      longitude: data.get(#longitude, or: $value.longitude),
      latitude: data.get(#latitude, or: $value.latitude));

  @override
  ConfigModelCopyWith<$R2, ConfigModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ConfigModelCopyWithImpl($value, $cast, t);
}
