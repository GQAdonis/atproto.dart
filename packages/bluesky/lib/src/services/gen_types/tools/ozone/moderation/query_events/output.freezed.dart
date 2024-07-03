// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QueryEventsOutput _$QueryEventsOutputFromJson(Map<String, dynamic> json) {
  return _QueryEventsOutput.fromJson(json);
}

/// @nodoc
mixin _$QueryEventsOutput {
  String? get cursor => throw _privateConstructorUsedError;
  @ModEventViewConverter()
  List<ModEventView> get events => throw _privateConstructorUsedError;

  /// Contains unknown objects not defined in Lexicon.
  @JsonKey(name: r'$unknown')
  Map<String, dynamic>? get $unknown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryEventsOutputCopyWith<QueryEventsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryEventsOutputCopyWith<$Res> {
  factory $QueryEventsOutputCopyWith(
          QueryEventsOutput value, $Res Function(QueryEventsOutput) then) =
      _$QueryEventsOutputCopyWithImpl<$Res, QueryEventsOutput>;
  @useResult
  $Res call(
      {String? cursor,
      @ModEventViewConverter() List<ModEventView> events,
      @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown});
}

/// @nodoc
class _$QueryEventsOutputCopyWithImpl<$Res, $Val extends QueryEventsOutput>
    implements $QueryEventsOutputCopyWith<$Res> {
  _$QueryEventsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
    Object? events = null,
    Object? $unknown = freezed,
  }) {
    return _then(_value.copyWith(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<ModEventView>,
      $unknown: freezed == $unknown
          ? _value.$unknown
          : $unknown // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueryEventsOutputImplCopyWith<$Res>
    implements $QueryEventsOutputCopyWith<$Res> {
  factory _$$QueryEventsOutputImplCopyWith(_$QueryEventsOutputImpl value,
          $Res Function(_$QueryEventsOutputImpl) then) =
      __$$QueryEventsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? cursor,
      @ModEventViewConverter() List<ModEventView> events,
      @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown});
}

/// @nodoc
class __$$QueryEventsOutputImplCopyWithImpl<$Res>
    extends _$QueryEventsOutputCopyWithImpl<$Res, _$QueryEventsOutputImpl>
    implements _$$QueryEventsOutputImplCopyWith<$Res> {
  __$$QueryEventsOutputImplCopyWithImpl(_$QueryEventsOutputImpl _value,
      $Res Function(_$QueryEventsOutputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
    Object? events = null,
    Object? $unknown = freezed,
  }) {
    return _then(_$QueryEventsOutputImpl(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<ModEventView>,
      $unknown: freezed == $unknown
          ? _value._$unknown
          : $unknown // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$QueryEventsOutputImpl implements _QueryEventsOutput {
  const _$QueryEventsOutputImpl(
      {this.cursor,
      @ModEventViewConverter() required final List<ModEventView> events,
      @JsonKey(name: r'$unknown') final Map<String, dynamic>? $unknown})
      : _events = events,
        _$unknown = $unknown;

  factory _$QueryEventsOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueryEventsOutputImplFromJson(json);

  @override
  final String? cursor;
  final List<ModEventView> _events;
  @override
  @ModEventViewConverter()
  List<ModEventView> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  /// Contains unknown objects not defined in Lexicon.
  final Map<String, dynamic>? _$unknown;

  /// Contains unknown objects not defined in Lexicon.
  @override
  @JsonKey(name: r'$unknown')
  Map<String, dynamic>? get $unknown {
    final value = _$unknown;
    if (value == null) return null;
    if (_$unknown is EqualUnmodifiableMapView) return _$unknown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'QueryEventsOutput(cursor: $cursor, events: $events, \$unknown: ${$unknown})';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryEventsOutputImpl &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._$unknown, _$unknown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cursor,
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_$unknown));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryEventsOutputImplCopyWith<_$QueryEventsOutputImpl> get copyWith =>
      __$$QueryEventsOutputImplCopyWithImpl<_$QueryEventsOutputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueryEventsOutputImplToJson(
      this,
    );
  }
}

abstract class _QueryEventsOutput implements QueryEventsOutput {
  const factory _QueryEventsOutput(
          {final String? cursor,
          @ModEventViewConverter() required final List<ModEventView> events,
          @JsonKey(name: r'$unknown') final Map<String, dynamic>? $unknown}) =
      _$QueryEventsOutputImpl;

  factory _QueryEventsOutput.fromJson(Map<String, dynamic> json) =
      _$QueryEventsOutputImpl.fromJson;

  @override
  String? get cursor;
  @override
  @ModEventViewConverter()
  List<ModEventView> get events;
  @override

  /// Contains unknown objects not defined in Lexicon.
  @JsonKey(name: r'$unknown')
  Map<String, dynamic>? get $unknown;
  @override
  @JsonKey(ignore: true)
  _$$QueryEventsOutputImplCopyWith<_$QueryEventsOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
