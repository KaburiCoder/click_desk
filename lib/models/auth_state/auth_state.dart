import 'package:click_desk/models/error_state/error_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(LoadingState.init) LoadingState loadingState,
    @Default(false) bool isAuthenticated,
    String? errorMessage,
    ErrorState? error,
  }) = _AuthState;
}

enum LoadingState {
  init,
  loading,
  complite,
}
