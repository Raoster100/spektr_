// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'work_model.dart';

class WorkModelMapper extends ClassMapperBase<WorkModel> {
  WorkModelMapper._();

  static WorkModelMapper? _instance;
  static WorkModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorkModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WorkModel';

  static int _$id(WorkModel v) => v.id;
  static const Field<WorkModel, int> _f$id = Field('id', _$id);
  static String _$name(WorkModel v) => v.name;
  static const Field<WorkModel, String> _f$name = Field('name', _$name);
  static int _$price(WorkModel v) => v.price;
  static const Field<WorkModel, int> _f$price = Field('price', _$price);
  static String _$description(WorkModel v) => v.description;
  static const Field<WorkModel, String> _f$description =
      Field('description', _$description);

  @override
  final MappableFields<WorkModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #price: _f$price,
    #description: _f$description,
  };

  static WorkModel _instantiate(DecodingData data) {
    return WorkModel(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        price: data.dec(_f$price),
        description: data.dec(_f$description));
  }

  @override
  final Function instantiate = _instantiate;

  static WorkModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WorkModel>(map);
  }

  static WorkModel fromJson(String json) {
    return ensureInitialized().decodeJson<WorkModel>(json);
  }
}

mixin WorkModelMappable {
  String toJson() {
    return WorkModelMapper.ensureInitialized()
        .encodeJson<WorkModel>(this as WorkModel);
  }

  Map<String, dynamic> toMap() {
    return WorkModelMapper.ensureInitialized()
        .encodeMap<WorkModel>(this as WorkModel);
  }

  WorkModelCopyWith<WorkModel, WorkModel, WorkModel> get copyWith =>
      _WorkModelCopyWithImpl(this as WorkModel, $identity, $identity);
  @override
  String toString() {
    return WorkModelMapper.ensureInitialized()
        .stringifyValue(this as WorkModel);
  }

  @override
  bool operator ==(Object other) {
    return WorkModelMapper.ensureInitialized()
        .equalsValue(this as WorkModel, other);
  }

  @override
  int get hashCode {
    return WorkModelMapper.ensureInitialized().hashValue(this as WorkModel);
  }
}

extension WorkModelValueCopy<$R, $Out> on ObjectCopyWith<$R, WorkModel, $Out> {
  WorkModelCopyWith<$R, WorkModel, $Out> get $asWorkModel =>
      $base.as((v, t, t2) => _WorkModelCopyWithImpl(v, t, t2));
}

abstract class WorkModelCopyWith<$R, $In extends WorkModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name, int? price, String? description});
  WorkModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WorkModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WorkModel, $Out>
    implements WorkModelCopyWith<$R, WorkModel, $Out> {
  _WorkModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WorkModel> $mapper =
      WorkModelMapper.ensureInitialized();
  @override
  $R call({int? id, String? name, int? price, String? description}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (price != null) #price: price,
        if (description != null) #description: description
      }));
  @override
  WorkModel $make(CopyWithData data) => WorkModel(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      price: data.get(#price, or: $value.price),
      description: data.get(#description, or: $value.description));

  @override
  WorkModelCopyWith<$R2, WorkModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _WorkModelCopyWithImpl($value, $cast, t);
}
