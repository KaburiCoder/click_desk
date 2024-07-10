import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_state.freezed.dart';

@freezed
class RequestState<T> with _$RequestState {
  const factory RequestState.init() = RequestInitState<T>;
  const factory RequestState.loading() = RequestLoadingState<T>;
  const factory RequestState.success({required T data}) =
      RequestSuccessState<T>;
  const factory RequestState.error({@Default("") String message}) =
      RequestErrorState<T>;
}
