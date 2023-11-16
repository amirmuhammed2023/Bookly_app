part of 'all_books_cubit.dart';

sealed class AllBooksState extends Equatable {
  const AllBooksState();

  @override
  List<Object> get props => [];
}

final class AllBooksInitial extends AllBooksState {}
final class AllBooksloading extends AllBooksState {}
final class AllBooksfailure extends AllBooksState {
  final String errormessage  ;

  const AllBooksfailure(this.errormessage); 

}
final class AllBookssucceed extends AllBooksState {
  final List<BooklyModel> books ;

  const AllBookssucceed(this.books);
}
