// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rent_dto.dart';

class RentDtoMapper extends ClassMapperBase<RentDto> {
  RentDtoMapper._();

  static RentDtoMapper? _instance;
  static RentDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RentDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RentDto';

  static int? _$id(RentDto v) => v.id;
  static const Field<RentDto, int> _f$id = Field('id', _$id, opt: true);
  static String _$name(RentDto v) => v.name;
  static const Field<RentDto, String> _f$name = Field('name', _$name);
  static int _$price(RentDto v) => v.price;
  static const Field<RentDto, int> _f$price = Field('price', _$price);
  static String? _$description(RentDto v) => v.description;
  static const Field<RentDto, String> _f$description =
      Field('description', _$description, opt: true);
  static Uint8List? _$imageUrl(RentDto v) => v.imageUrl;
  static const Field<RentDto, Uint8List> _f$imageUrl =
      Field('imageUrl', _$imageUrl, opt: true);

  @override
  final MappableFields<RentDto> fields = const {
    #id: _f$id,
    #name: _f$name,
    #price: _f$price,
    #description: _f$description,
    #imageUrl: _f$imageUrl,
  };

  static RentDto _instantiate(DecodingData data) {
    return RentDto(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        price: data.dec(_f$price),
        description: data.dec(_f$description),
        imageUrl: data.dec(_f$imageUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static RentDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RentDto>(map);
  }

  static RentDto fromJson(String json) {
    return ensureInitialized().decodeJson<RentDto>(json);
  }
}

mixin RentDtoMappable {
  String toJson() {
    return RentDtoMapper.ensureInitialized()
        .encodeJson<RentDto>(this as RentDto);
  }

  Map<String, dynamic> toMap() {
    return RentDtoMapper.ensureInitialized()
        .encodeMap<RentDto>(this as RentDto);
  }

  RentDtoCopyWith<RentDto, RentDto, RentDto> get copyWith =>
      _RentDtoCopyWithImpl(this as RentDto, $identity, $identity);
  @override
  String toString() {
    return RentDtoMapper.ensureInitialized().stringifyValue(this as RentDto);
  }

  @override
  bool operator ==(Object other) {
    return RentDtoMapper.ensureInitialized()
        .equalsValue(this as RentDto, other);
  }

  @override
  int get hashCode {
    return RentDtoMapper.ensureInitialized().hashValue(this as RentDto);
  }
}

extension RentDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, RentDto, $Out> {
  RentDtoCopyWith<$R, RentDto, $Out> get $asRentDto =>
      $base.as((v, t, t2) => _RentDtoCopyWithImpl(v, t, t2));
}

abstract class RentDtoCopyWith<$R, $In extends RentDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? name,
      int? price,
      String? description,
      Uint8List? imageUrl});
  RentDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RentDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RentDto, $Out>
    implements RentDtoCopyWith<$R, RentDto, $Out> {
  _RentDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RentDto> $mapper =
      RentDtoMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? name,
          int? price,
          Object? description = $none,
          Object? imageUrl = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (name != null) #name: name,
        if (price != null) #price: price,
        if (description != $none) #description: description,
        if (imageUrl != $none) #imageUrl: imageUrl
      }));
  @override
  RentDto $make(CopyWithData data) => RentDto(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      price: data.get(#price, or: $value.price),
      description: data.get(#description, or: $value.description),
      imageUrl: data.get(#imageUrl, or: $value.imageUrl));

  @override
  RentDtoCopyWith<$R2, RentDto, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RentDtoCopyWithImpl($value, $cast, t);
}
