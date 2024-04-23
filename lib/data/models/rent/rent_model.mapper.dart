// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rent_model.dart';

class RentModelMapper extends ClassMapperBase<RentModel> {
  RentModelMapper._();

  static RentModelMapper? _instance;
  static RentModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RentModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RentModel';

  static int _$id(RentModel v) => v.id;
  static const Field<RentModel, int> _f$id = Field('id', _$id);
  static String _$name(RentModel v) => v.name;
  static const Field<RentModel, String> _f$name = Field('name', _$name);
  static int _$price(RentModel v) => v.price;
  static const Field<RentModel, int> _f$price = Field('price', _$price);
  static String _$description(RentModel v) => v.description;
  static const Field<RentModel, String> _f$description =
      Field('description', _$description);
  static Uint8List _$image(RentModel v) => v.image;
  static const Field<RentModel, Uint8List> _f$image = Field('image', _$image);

  @override
  final MappableFields<RentModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #price: _f$price,
    #description: _f$description,
    #image: _f$image,
  };

  static RentModel _instantiate(DecodingData data) {
    return RentModel(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        price: data.dec(_f$price),
        description: data.dec(_f$description),
        image: data.dec(_f$image));
  }

  @override
  final Function instantiate = _instantiate;

  static RentModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RentModel>(map);
  }

  static RentModel fromJson(String json) {
    return ensureInitialized().decodeJson<RentModel>(json);
  }
}

mixin RentModelMappable {
  String toJson() {
    return RentModelMapper.ensureInitialized()
        .encodeJson<RentModel>(this as RentModel);
  }

  Map<String, dynamic> toMap() {
    return RentModelMapper.ensureInitialized()
        .encodeMap<RentModel>(this as RentModel);
  }

  RentModelCopyWith<RentModel, RentModel, RentModel> get copyWith =>
      _RentModelCopyWithImpl(this as RentModel, $identity, $identity);
  @override
  String toString() {
    return RentModelMapper.ensureInitialized()
        .stringifyValue(this as RentModel);
  }

  @override
  bool operator ==(Object other) {
    return RentModelMapper.ensureInitialized()
        .equalsValue(this as RentModel, other);
  }

  @override
  int get hashCode {
    return RentModelMapper.ensureInitialized().hashValue(this as RentModel);
  }
}

extension RentModelValueCopy<$R, $Out> on ObjectCopyWith<$R, RentModel, $Out> {
  RentModelCopyWith<$R, RentModel, $Out> get $asRentModel =>
      $base.as((v, t, t2) => _RentModelCopyWithImpl(v, t, t2));
}

abstract class RentModelCopyWith<$R, $In extends RentModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? name,
      int? price,
      String? description,
      Uint8List? image});
  RentModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RentModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RentModel, $Out>
    implements RentModelCopyWith<$R, RentModel, $Out> {
  _RentModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RentModel> $mapper =
      RentModelMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? name,
          int? price,
          String? description,
          Uint8List? image}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (price != null) #price: price,
        if (description != null) #description: description,
        if (image != null) #image: image
      }));
  @override
  RentModel $make(CopyWithData data) => RentModel(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      price: data.get(#price, or: $value.price),
      description: data.get(#description, or: $value.description),
      image: data.get(#image, or: $value.image));

  @override
  RentModelCopyWith<$R2, RentModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RentModelCopyWithImpl($value, $cast, t);
}
