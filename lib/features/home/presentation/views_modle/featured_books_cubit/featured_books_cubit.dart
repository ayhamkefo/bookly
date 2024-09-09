import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var data = await homeRepo.fetchFeaturedBooks();
    data.fold((failuer) {
      emit(FeaturedBooksFailuer(failuer.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
