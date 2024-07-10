import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_scan_state.freezed.dart';

@freezed
class QrScanState with _$QrScanState {
  const factory QrScanState({
    @Default(false) bool isLoading,
    Barcode? scanData,
    QRViewController? controller,
  }) = _QrScanState;
}


