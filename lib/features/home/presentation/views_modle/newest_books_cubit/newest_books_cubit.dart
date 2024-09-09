import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var data = await homeRepo.fetchFeaturedBooks();
    data.fold((failuer) {
      emit(NewestBooksFailuer(failuer.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
