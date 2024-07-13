// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'people_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PeopleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getpepoles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getpepoles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getpepoles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getpepoles value) getpepoles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getpepoles value)? getpepoles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getpepoles value)? getpepoles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleEventCopyWith<$Res> {
  factory $PeopleEventCopyWith(
          PeopleEvent value, $Res Function(PeopleEvent) then) =
      _$PeopleEventCopyWithImpl<$Res, PeopleEvent>;
}

/// @nodoc
class _$PeopleEventCopyWithImpl<$Res, $Val extends PeopleEvent>
    implements $PeopleEventCopyWith<$Res> {
  _$PeopleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetpepolesImplCopyWith<$Res> {
  factory _$$GetpepolesImplCopyWith(
          _$GetpepolesImpl value, $Res Function(_$GetpepolesImpl) then) =
      __$$GetpepolesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetpepolesImplCopyWithImpl<$Res>
    extends _$PeopleEventCopyWithImpl<$Res, _$GetpepolesImpl>
    implements _$$GetpepolesImplCopyWith<$Res> {
  __$$GetpepolesImplCopyWithImpl(
      _$GetpepolesImpl _value, $Res Function(_$GetpepolesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetpepolesImpl implements Getpepoles {
  const _$GetpepolesImpl();

  @override
  String toString() {
    return 'PeopleEvent.getpepoles()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetpepolesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getpepoles,
  }) {
    return getpepoles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getpepoles,
  }) {
    return getpepoles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getpepoles,
    required TResult orElse(),
  }) {
    if (getpepoles != null) {
      return getpepoles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getpepoles value) getpepoles,
  }) {
    return getpepoles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getpepoles value)? getpepoles,
  }) {
    return getpepoles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getpepoles value)? getpepoles,
    required TResult orElse(),
  }) {
    if (getpepoles != null) {
      return getpepoles(this);
    }
    return orElse();
  }
}

abstract class Getpepoles implements PeopleEvent {
  const factory Getpepoles() = _$GetpepolesImpl;
}

/// @nodoc
mixin _$PeopleState {
  List<Result>? get peoplelist => throw _privateConstructorUsedError;
  List<KnownFor> get peopledetailslist => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  bool get iserror => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PeopleStateCopyWith<PeopleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleStateCopyWith<$Res> {
  factory $PeopleStateCopyWith(
          PeopleState value, $Res Function(PeopleState) then) =
      _$PeopleStateCopyWithImpl<$Res, PeopleState>;
  @useResult
  $Res call(
      {List<Result>? peoplelist,
      List<KnownFor> peopledetailslist,
      bool isloading,
      bool iserror});
}

/// @nodoc
class _$PeopleStateCopyWithImpl<$Res, $Val extends PeopleState>
    implements $PeopleStateCopyWith<$Res> {
  _$PeopleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? peoplelist = freezed,
    Object? peopledetailslist = null,
    Object? isloading = null,
    Object? iserror = null,
  }) {
    return _then(_value.copyWith(
      peoplelist: freezed == peoplelist
          ? _value.peoplelist
          : peoplelist // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      peopledetailslist: null == peopledetailslist
          ? _value.peopledetailslist
          : peopledetailslist // ignore: cast_nullable_to_non_nullable
              as List<KnownFor>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeopleStateImplCopyWith<$Res>
    implements $PeopleStateCopyWith<$Res> {
  factory _$$PeopleStateImplCopyWith(
          _$PeopleStateImpl value, $Res Function(_$PeopleStateImpl) then) =
      __$$PeopleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Result>? peoplelist,
      List<KnownFor> peopledetailslist,
      bool isloading,
      bool iserror});
}

/// @nodoc
class __$$PeopleStateImplCopyWithImpl<$Res>
    extends _$PeopleStateCopyWithImpl<$Res, _$PeopleStateImpl>
    implements _$$PeopleStateImplCopyWith<$Res> {
  __$$PeopleStateImplCopyWithImpl(
      _$PeopleStateImpl _value, $Res Function(_$PeopleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? peoplelist = freezed,
    Object? peopledetailslist = null,
    Object? isloading = null,
    Object? iserror = null,
  }) {
    return _then(_$PeopleStateImpl(
      peoplelist: freezed == peoplelist
          ? _value._peoplelist
          : peoplelist // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      peopledetailslist: null == peopledetailslist
          ? _value._peopledetailslist
          : peopledetailslist // ignore: cast_nullable_to_non_nullable
              as List<KnownFor>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PeopleStateImpl implements _PeopleState {
  const _$PeopleStateImpl(
      {final List<Result>? peoplelist,
      required final List<KnownFor> peopledetailslist,
      required this.isloading,
      required this.iserror})
      : _peoplelist = peoplelist,
        _peopledetailslist = peopledetailslist;

  final List<Result>? _peoplelist;
  @override
  List<Result>? get peoplelist {
    final value = _peoplelist;
    if (value == null) return null;
    if (_peoplelist is EqualUnmodifiableListView) return _peoplelist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<KnownFor> _peopledetailslist;
  @override
  List<KnownFor> get peopledetailslist {
    if (_peopledetailslist is EqualUnmodifiableListView)
      return _peopledetailslist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peopledetailslist);
  }

  @override
  final bool isloading;
  @override
  final bool iserror;

  @override
  String toString() {
    return 'PeopleState(peoplelist: $peoplelist, peopledetailslist: $peopledetailslist, isloading: $isloading, iserror: $iserror)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeopleStateImpl &&
            const DeepCollectionEquality()
                .equals(other._peoplelist, _peoplelist) &&
            const DeepCollectionEquality()
                .equals(other._peopledetailslist, _peopledetailslist) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.iserror, iserror) || other.iserror == iserror));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_peoplelist),
      const DeepCollectionEquality().hash(_peopledetailslist),
      isloading,
      iserror);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeopleStateImplCopyWith<_$PeopleStateImpl> get copyWith =>
      __$$PeopleStateImplCopyWithImpl<_$PeopleStateImpl>(this, _$identity);
}

abstract class _PeopleState implements PeopleState {
  const factory _PeopleState(
      {final List<Result>? peoplelist,
      required final List<KnownFor> peopledetailslist,
      required final bool isloading,
      required final bool iserror}) = _$PeopleStateImpl;

  @override
  List<Result>? get peoplelist;
  @override
  List<KnownFor> get peopledetailslist;
  @override
  bool get isloading;
  @override
  bool get iserror;
  @override
  @JsonKey(ignore: true)
  _$$PeopleStateImplCopyWith<_$PeopleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
