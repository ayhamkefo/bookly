import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'books_details_state.dart';

class BooksDetailsCubit extends Cubit<BooksDetailsState> {
  BooksDetailsCubit() : super(BooksDetailsInitial());

  void setBook(BookModel book) {
    emit(BooksDetailsSelectBook(bookModel: book));
  }
}
