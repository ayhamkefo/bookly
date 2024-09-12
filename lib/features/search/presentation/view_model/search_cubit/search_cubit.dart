import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future fetchSearchedBooks(String searchText) async {
    emit(SearchLoading());
    var data = await searchRepo.fetchSearchedBooks(searchText);
    data.fold(
      (failure) {
        emit(SearchIFailure(errorMessage: failure.errorMessage));
      },
      (data) {
        data.fold(
          (message) {
            emit(SearchNotFound(message: message));
          },
          (books) {
            emit(SearchISuccess(bookMoodel: books));
          },
        );
      },
    );
  }
}
