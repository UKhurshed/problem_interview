// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_repositories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchRepositoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchRepositoriesByQuery,
    required TResult Function(List<ViewData> list) updateSearchReposList,
    required TResult Function(SearchSort searchSort) sortBy,
    required TResult Function() clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchRepositoriesByQuery,
    TResult? Function(List<ViewData> list)? updateSearchReposList,
    TResult? Function(SearchSort searchSort)? sortBy,
    TResult? Function()? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchRepositoriesByQuery,
    TResult Function(List<ViewData> list)? updateSearchReposList,
    TResult Function(SearchSort searchSort)? sortBy,
    TResult Function()? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepositoriesByQuery value)
        searchRepositoriesByQuery,
    required TResult Function(UpdateSearchReposList value)
        updateSearchReposList,
    required TResult Function(SortBy value) sortBy,
    required TResult Function(ClearState value) clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepositoriesByQuery value)?
        searchRepositoriesByQuery,
    TResult? Function(UpdateSearchReposList value)? updateSearchReposList,
    TResult? Function(SortBy value)? sortBy,
    TResult? Function(ClearState value)? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepositoriesByQuery value)?
        searchRepositoriesByQuery,
    TResult Function(UpdateSearchReposList value)? updateSearchReposList,
    TResult Function(SortBy value)? sortBy,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRepositoriesEventCopyWith<$Res> {
  factory $SearchRepositoriesEventCopyWith(SearchRepositoriesEvent value,
          $Res Function(SearchRepositoriesEvent) then) =
      _$SearchRepositoriesEventCopyWithImpl<$Res, SearchRepositoriesEvent>;
}

/// @nodoc
class _$SearchRepositoriesEventCopyWithImpl<$Res,
        $Val extends SearchRepositoriesEvent>
    implements $SearchRepositoriesEventCopyWith<$Res> {
  _$SearchRepositoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchRepositoriesByQueryCopyWith<$Res> {
  factory _$$SearchRepositoriesByQueryCopyWith(
          _$SearchRepositoriesByQuery value,
          $Res Function(_$SearchRepositoriesByQuery) then) =
      __$$SearchRepositoriesByQueryCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchRepositoriesByQueryCopyWithImpl<$Res>
    extends _$SearchRepositoriesEventCopyWithImpl<$Res,
        _$SearchRepositoriesByQuery>
    implements _$$SearchRepositoriesByQueryCopyWith<$Res> {
  __$$SearchRepositoriesByQueryCopyWithImpl(_$SearchRepositoriesByQuery _value,
      $Res Function(_$SearchRepositoriesByQuery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchRepositoriesByQuery(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchRepositoriesByQuery implements SearchRepositoriesByQuery {
  const _$SearchRepositoriesByQuery({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchRepositoriesEvent.searchRepositoriesByQuery(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoriesByQuery &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRepositoriesByQueryCopyWith<_$SearchRepositoriesByQuery>
      get copyWith => __$$SearchRepositoriesByQueryCopyWithImpl<
          _$SearchRepositoriesByQuery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchRepositoriesByQuery,
    required TResult Function(List<ViewData> list) updateSearchReposList,
    required TResult Function(SearchSort searchSort) sortBy,
    required TResult Function() clearState,
  }) {
    return searchRepositoriesByQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchRepositoriesByQuery,
    TResult? Function(List<ViewData> list)? updateSearchReposList,
    TResult? Function(SearchSort searchSort)? sortBy,
    TResult? Function()? clearState,
  }) {
    return searchRepositoriesByQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchRepositoriesByQuery,
    TResult Function(List<ViewData> list)? updateSearchReposList,
    TResult Function(SearchSort searchSort)? sortBy,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (searchRepositoriesByQuery != null) {
      return searchRepositoriesByQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepositoriesByQuery value)
        searchRepositoriesByQuery,
    required TResult Function(UpdateSearchReposList value)
        updateSearchReposList,
    required TResult Function(SortBy value) sortBy,
    required TResult Function(ClearState value) clearState,
  }) {
    return searchRepositoriesByQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepositoriesByQuery value)?
        searchRepositoriesByQuery,
    TResult? Function(UpdateSearchReposList value)? updateSearchReposList,
    TResult? Function(SortBy value)? sortBy,
    TResult? Function(ClearState value)? clearState,
  }) {
    return searchRepositoriesByQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepositoriesByQuery value)?
        searchRepositoriesByQuery,
    TResult Function(UpdateSearchReposList value)? updateSearchReposList,
    TResult Function(SortBy value)? sortBy,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (searchRepositoriesByQuery != null) {
      return searchRepositoriesByQuery(this);
    }
    return orElse();
  }
}

abstract class SearchRepositoriesByQuery implements SearchRepositoriesEvent {
  const factory SearchRepositoriesByQuery({required final String query}) =
      _$SearchRepositoriesByQuery;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchRepositoriesByQueryCopyWith<_$SearchRepositoriesByQuery>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSearchReposListCopyWith<$Res> {
  factory _$$UpdateSearchReposListCopyWith(_$UpdateSearchReposList value,
          $Res Function(_$UpdateSearchReposList) then) =
      __$$UpdateSearchReposListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ViewData> list});
}

/// @nodoc
class __$$UpdateSearchReposListCopyWithImpl<$Res>
    extends _$SearchRepositoriesEventCopyWithImpl<$Res, _$UpdateSearchReposList>
    implements _$$UpdateSearchReposListCopyWith<$Res> {
  __$$UpdateSearchReposListCopyWithImpl(_$UpdateSearchReposList _value,
      $Res Function(_$UpdateSearchReposList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$UpdateSearchReposList(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ViewData>,
    ));
  }
}

/// @nodoc

class _$UpdateSearchReposList implements UpdateSearchReposList {
  const _$UpdateSearchReposList({required final List<ViewData> list})
      : _list = list;

  final List<ViewData> _list;
  @override
  List<ViewData> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'SearchRepositoriesEvent.updateSearchReposList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSearchReposList &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSearchReposListCopyWith<_$UpdateSearchReposList> get copyWith =>
      __$$UpdateSearchReposListCopyWithImpl<_$UpdateSearchReposList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchRepositoriesByQuery,
    required TResult Function(List<ViewData> list) updateSearchReposList,
    required TResult Function(SearchSort searchSort) sortBy,
    required TResult Function() clearState,
  }) {
    return updateSearchReposList(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchRepositoriesByQuery,
    TResult? Function(List<ViewData> list)? updateSearchReposList,
    TResult? Function(SearchSort searchSort)? sortBy,
    TResult? Function()? clearState,
  }) {
    return updateSearchReposList?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchRepositoriesByQuery,
    TResult Function(List<ViewData> list)? updateSearchReposList,
    TResult Function(SearchSort searchSort)? sortBy,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (updateSearchReposList != null) {
      return updateSearchReposList(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepositoriesByQuery value)
        searchRepositoriesByQuery,
    required TResult Function(UpdateSearchReposList value)
        updateSearchReposList,
    required TResult Function(SortBy value) sortBy,
    required TResult Function(ClearState value) clearState,
  }) {
    return updateSearchReposList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepositoriesByQuery value)?
        searchRepositoriesByQuery,
    TResult? Function(UpdateSearchReposList value)? updateSearchReposList,
    TResult? Function(SortBy value)? sortBy,
    TResult? Function(ClearState value)? clearState,
  }) {
    return updateSearchReposList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepositoriesByQuery value)?
        searchRepositoriesByQuery,
    TResult Function(UpdateSearchReposList value)? updateSearchReposList,
    TResult Function(SortBy value)? sortBy,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (updateSearchReposList != null) {
      return updateSearchReposList(this);
    }
    return orElse();
  }
}

abstract class UpdateSearchReposList implements SearchRepositoriesEvent {
  const factory UpdateSearchReposList({required final List<ViewData> list}) =
      _$UpdateSearchReposList;

  List<ViewData> get list;
  @JsonKey(ignore: true)
  _$$UpdateSearchReposListCopyWith<_$UpdateSearchReposList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortByCopyWith<$Res> {
  factory _$$SortByCopyWith(_$SortBy value, $Res Function(_$SortBy) then) =
      __$$SortByCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchSort searchSort});
}

/// @nodoc
class __$$SortByCopyWithImpl<$Res>
    extends _$SearchRepositoriesEventCopyWithImpl<$Res, _$SortBy>
    implements _$$SortByCopyWith<$Res> {
  __$$SortByCopyWithImpl(_$SortBy _value, $Res Function(_$SortBy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchSort = null,
  }) {
    return _then(_$SortBy(
      searchSort: null == searchSort
          ? _value.searchSort
          : searchSort // ignore: cast_nullable_to_non_nullable
              as SearchSort,
    ));
  }
}

/// @nodoc

class _$SortBy implements SortBy {
  const _$SortBy({required this.searchSort});

  @override
  final SearchSort searchSort;

  @override
  String toString() {
    return 'SearchRepositoriesEvent.sortBy(searchSort: $searchSort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortBy &&
            (identical(other.searchSort, searchSort) ||
                other.searchSort == searchSort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchSort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortByCopyWith<_$SortBy> get copyWith =>
      __$$SortByCopyWithImpl<_$SortBy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchRepositoriesByQuery,
    required TResult Function(List<ViewData> list) updateSearchReposList,
    required TResult Function(SearchSort searchSort) sortBy,
    required TResult Function() clearState,
  }) {
    return sortBy(searchSort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchRepositoriesByQuery,
    TResult? Function(List<ViewData> list)? updateSearchReposList,
    TResult? Function(SearchSort searchSort)? sortBy,
    TResult? Function()? clearState,
  }) {
    return sortBy?.call(searchSort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchRepositoriesByQuery,
    TResult Function(List<ViewData> list)? updateSearchReposList,
    TResult Function(SearchSort searchSort)? sortBy,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (sortBy != null) {
      return sortBy(searchSort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepositoriesByQuery value)
        searchRepositoriesByQuery,
    required TResult Function(UpdateSearchReposList value)
        updateSearchReposList,
    required TResult Function(SortBy value) sortBy,
    required TResult Function(ClearState value) clearState,
  }) {
    return sortBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepositoriesByQuery value)?
        searchRepositoriesByQuery,
    TResult? Function(UpdateSearchReposList value)? updateSearchReposList,
    TResult? Function(SortBy value)? sortBy,
    TResult? Function(ClearState value)? clearState,
  }) {
    return sortBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepositoriesByQuery value)?
        searchRepositoriesByQuery,
    TResult Function(UpdateSearchReposList value)? updateSearchReposList,
    TResult Function(SortBy value)? sortBy,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (sortBy != null) {
      return sortBy(this);
    }
    return orElse();
  }
}

abstract class SortBy implements SearchRepositoriesEvent {
  const factory SortBy({required final SearchSort searchSort}) = _$SortBy;

  SearchSort get searchSort;
  @JsonKey(ignore: true)
  _$$SortByCopyWith<_$SortBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearStateCopyWith<$Res> {
  factory _$$ClearStateCopyWith(
          _$ClearState value, $Res Function(_$ClearState) then) =
      __$$ClearStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearStateCopyWithImpl<$Res>
    extends _$SearchRepositoriesEventCopyWithImpl<$Res, _$ClearState>
    implements _$$ClearStateCopyWith<$Res> {
  __$$ClearStateCopyWithImpl(
      _$ClearState _value, $Res Function(_$ClearState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearState implements ClearState {
  const _$ClearState();

  @override
  String toString() {
    return 'SearchRepositoriesEvent.clearState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchRepositoriesByQuery,
    required TResult Function(List<ViewData> list) updateSearchReposList,
    required TResult Function(SearchSort searchSort) sortBy,
    required TResult Function() clearState,
  }) {
    return clearState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchRepositoriesByQuery,
    TResult? Function(List<ViewData> list)? updateSearchReposList,
    TResult? Function(SearchSort searchSort)? sortBy,
    TResult? Function()? clearState,
  }) {
    return clearState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchRepositoriesByQuery,
    TResult Function(List<ViewData> list)? updateSearchReposList,
    TResult Function(SearchSort searchSort)? sortBy,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepositoriesByQuery value)
        searchRepositoriesByQuery,
    required TResult Function(UpdateSearchReposList value)
        updateSearchReposList,
    required TResult Function(SortBy value) sortBy,
    required TResult Function(ClearState value) clearState,
  }) {
    return clearState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepositoriesByQuery value)?
        searchRepositoriesByQuery,
    TResult? Function(UpdateSearchReposList value)? updateSearchReposList,
    TResult? Function(SortBy value)? sortBy,
    TResult? Function(ClearState value)? clearState,
  }) {
    return clearState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepositoriesByQuery value)?
        searchRepositoriesByQuery,
    TResult Function(UpdateSearchReposList value)? updateSearchReposList,
    TResult Function(SortBy value)? sortBy,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState(this);
    }
    return orElse();
  }
}

abstract class ClearState implements SearchRepositoriesEvent {
  const factory ClearState() = _$ClearState;
}
