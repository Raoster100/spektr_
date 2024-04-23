// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'vacancy_model.dart';

class VacancyModelMapper extends ClassMapperBase<VacancyModel> {
  VacancyModelMapper._();

  static VacancyModelMapper? _instance;
  static VacancyModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VacancyModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VacancyModel';

  static int _$id(VacancyModel v) => v.id;
  static const Field<VacancyModel, int> _f$id = Field('id', _$id);
  static String _$name(VacancyModel v) => v.name;
  static const Field<VacancyModel, String> _f$name = Field('name', _$name);
  static int _$price(VacancyModel v) => v.price;
  static const Field<VacancyModel, int> _f$price = Field('price', _$price);
  static String _$description(VacancyModel v) => v.description;
  static const Field<VacancyModel, String> _f$description =
      Field('description', _$description);

  @override
  final MappableFields<VacancyModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #price: _f$price,
    #description: _f$description,
  };

  static VacancyModel _instantiate(DecodingData data) {
    return VacancyModel(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        price: data.dec(_f$price),
        description: data.dec(_f$description));
  }

  @override
  final Function instantiate = _instantiate;

  static VacancyModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VacancyModel>(map);
  }

  static VacancyModel fromJson(String json) {
    return ensureInitialized().decodeJson<VacancyModel>(json);
  }
}

mixin VacancyModelMappable {
  String toJson() {
    return VacancyModelMapper.ensureInitialized()
        .encodeJson<VacancyModel>(this as VacancyModel);
  }

  Map<String, dynamic> toMap() {
    return VacancyModelMapper.ensureInitialized()
        .encodeMap<VacancyModel>(this as VacancyModel);
  }

  VacancyModelCopyWith<VacancyModel, VacancyModel, VacancyModel> get copyWith =>
      _VacancyModelCopyWithImpl(this as VacancyModel, $identity, $identity);
  @override
  String toString() {
    return VacancyModelMapper.ensureInitialized()
        .stringifyValue(this as VacancyModel);
  }

  @override
  bool operator ==(Object other) {
    return VacancyModelMapper.ensureInitialized()
        .equalsValue(this as VacancyModel, other);
  }

  @override
  int get hashCode {
    return VacancyModelMapper.ensureInitialized()
        .hashValue(this as VacancyModel);
  }
}

extension VacancyModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VacancyModel, $Out> {
  VacancyModelCopyWith<$R, VacancyModel, $Out> get $asVacancyModel =>
      $base.as((v, t, t2) => _VacancyModelCopyWithImpl(v, t, t2));
}

abstract class VacancyModelCopyWith<$R, $In extends VacancyModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name, int? price, String? description});
  VacancyModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VacancyModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VacancyModel, $Out>
    implements VacancyModelCopyWith<$R, VacancyModel, $Out> {
  _VacancyModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VacancyModel> $mapper =
      VacancyModelMapper.ensureInitialized();
  @override
  $R call({int? id, String? name, int? price, String? description}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (price != null) #price: price,
        if (description != null) #description: description
      }));
  @override
  VacancyModel $make(CopyWithData data) => VacancyModel(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      price: data.get(#price, or: $value.price),
      description: data.get(#description, or: $value.description));

  @override
  VacancyModelCopyWith<$R2, VacancyModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VacancyModelCopyWithImpl($value, $cast, t);
}
