part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksloading extends NewestBooksState {}
final class NewestBooksfailure extends NewestBooksState {
  final String errormessage ;

  const NewestBooksfailure(this.errormessage);

}
final class NewestBookssucceed extends NewestBooksState {
  final List<BooklyModel> newestbooks ;

  const NewestBookssucceed(this.newestbooks);

}
