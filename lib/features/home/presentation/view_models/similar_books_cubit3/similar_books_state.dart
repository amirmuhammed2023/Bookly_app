part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}
final class SimilarBooksloading extends SimilarBooksState {}
final class SimilarBooksfailure extends SimilarBooksState {
  final String errormessage ;

  const SimilarBooksfailure(this.errormessage);

}
final class SimilarBookssucceed extends SimilarBooksState {
  final List<BooklyModel> similarbooks ;

  const SimilarBookssucceed(this.similarbooks);

}