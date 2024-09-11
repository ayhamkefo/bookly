part of 'books_details_cubit.dart';

sealed class BooksDetailsState extends Equatable {
  const BooksDetailsState();

  @override
  List<Object> get props => [];
}

final class BooksDetailsInitial extends BooksDetailsState {}

final class BooksDetailsSelectBook extends BooksDetailsState {
  final BookModel bookModel;

  const BooksDetailsSelectBook({required this.bookModel});
}
