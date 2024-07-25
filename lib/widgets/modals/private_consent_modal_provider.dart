import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'private_consent_modal_provider.freezed.dart';
part 'private_consent_modal_provider.g.dart';

@riverpod
class PrivateConsentModal extends _$PrivateConsentModal {
  @override
  PrivateConsentModalState build() {
    return const PrivateConsentModalState();
  }

  void allCheckChanged(bool checked) {
    if (checked) {
      state = state.copyWith(
        allChecked: true,
        privateChecked: true,
        marketingChecked: true,
      );
    } else {
      state = state.copyWith(allChecked: false);
    }
  }

  void privateChanged(bool checked) {
    state = state.copyWith(
      privateChecked: checked,
      allChecked: checked && state.marketingChecked,
    );
  }

  void marketingChanged(bool checked) {
    state = state.copyWith(
      marketingChecked: checked,
      allChecked: checked && state.privateChecked,
    );
  }
}

@freezed
class PrivateConsentModalState with _$PrivateConsentModalState {
  const factory PrivateConsentModalState({
    @Default(false) bool allChecked,
    @Default(false) bool privateChecked,
    @Default(false) bool marketingChecked,
    Uint8List? signImageBuffer,
  }) = _PrivateConsentModalState;
}
