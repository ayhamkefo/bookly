part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchISuccess extends SearchState {
  final List<BookModel> bookMoodel;

  const SearchISuccess({required this.bookMoodel});
}

final class SearchIFailure extends SearchState {
  final String errorMessage;

  const SearchIFailure({required this.errorMessage});
}

final class SearchNotFound extends SearchState {
  final String message;

  const SearchNotFound({required this.message});
}

final class SearchLoading extends SearchState {}
