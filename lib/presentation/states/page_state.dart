class PageState {}

class PageLoadingState extends PageState {}
class PageFailureState extends PageState {}
class PageSuccessState<T> extends PageState {
  T data;
  PageSuccessState(this.data);
}