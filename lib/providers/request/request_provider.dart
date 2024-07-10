import 'package:click_recept/models/request_state/request_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'request_provider.g.dart';

@riverpod
class Request<T> extends _$Request {
  @override
  RequestState build() {
    return const RequestInitState();
  }

  void setLoading() {
    state = const RequestLoadingState();
  }

  void setSuccess({T? data}) {
    state = RequestSuccessState(data: data);
  }

  void setError({String? message = ""}) {
    state = const RequestErrorState();
  }
}
