import 'package:click_desk/shared/constants/socket_ev.dart';
import 'package:click_desk/shared/constants/paths/url_paths.dart';
import 'package:click_desk/models/checkin_state/checkin_state.dart';
import 'package:click_desk/models/doctor_state/doctor_state.dart';
import 'package:click_desk/models/params/patient_cert_params.dart';
import 'package:click_desk/models/params/user_search_params.dart';
import 'package:click_desk/models/patient_cert_state/patient_cert_state.dart';
import 'package:click_desk/models/patient_state/patient_state.dart';
import 'package:click_desk/models/receive_patient_res_state/receive_patient_res_state.dart';
import 'package:click_desk/models/socket_io/socket_response.dart';
import 'package:click_desk/models/user/user.dart';
import 'package:click_desk/shared/services/socket_io/dto/socket_args.dart';
import 'package:click_desk/shared/services/socket_io/dto/socket_res.dart';
// ignore: library_prefixes
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketIOService {
  final User? user;
  late IO.Socket socket;

  SocketIOService([this.user]) {
    if (user == null || user!.roomKey.isEmpty) return;

    socket = IO.io(UrlPaths.sockUrl,
        IO.OptionBuilder().setTransports(['websocket']).build());

    socket.onConnect((_) => print('connect'));
    socket.onDisconnect((_) => print('disconnect'));
    socket.onError((error) => print(error.toString()));
  }

  Future<SocketResponse<T>> _emitWithAckAsync<T>(
      String event, Map<String, dynamic> data, T Function(dynamic) fromJson) async {
    final response = await socket.emitWithAckAsync(event, data);
    final resData = SocketResponse.fromJson(response, fromJson);

    if (resData.status == ResponseStatus.error) {
      throw resData.message!;
    }
    return resData;
  }

  Future<SocketResponse<List<PatientState>>> getMobilePatientInfo(
      UserSearchParams params) async {
    final data = params.toJson()..['key'] = user!.roomKey;
    return _emitWithAckAsync(
        SocketEv.getMobilePatientInfo, data, (json) => (json as List<dynamic>)
            .map((item) => PatientState.fromJson(item))
            .toList());
  }

  Future<SocketResponse<List<DoctorState>>> getMobileDoctorInfo() async {
    final data = {"key": user!.roomKey};
    return _emitWithAckAsync(
        SocketEv.getMobileDoctorInfo, data, (json) => (json as List<dynamic>)
            .map((item) => DoctorState.fromJson(item))
            .toList());
  }

  Future<SocketResponse<PatientCertState>> getMobilePatientCert(
      PatientCertParams params) async {
    final data = params.toJson()..['key'] = user!.roomKey;
    return _emitWithAckAsync(SocketEv.getMobilePatientCert, data,
        (json) => PatientCertState.fromJson(json as Map<String, dynamic>));
  }

  Future<SocketResponse<ReceivePatientResState>> receiveMobilePatient(
      CheckinState checkin) async {
    final data = checkin.toJson()..['key'] = user!.roomKey;
    return _emitWithAckAsync(SocketEv.receiveMobilePatient, data,
        (json) => ReceivePatientResState.fromJson(json as Map<String, dynamic>));
  }

  Future<SocketResponse<SocketCheckConsentRes>> checkMobileConsent(
      SocketCheckConsentArgs args) async {
    final data = args.toJson()..['key'] = user!.roomKey;
    return _emitWithAckAsync(SocketEv.checkMobilePatientConsent, data,
        (json) => SocketCheckConsentRes.fromJson(json as Map<String, dynamic>));
  }

  Future<SocketResponse<SocketSaveConsentRes>> saveMobileConsent(
      SocketSaveConsentArgs args) async {
    final data = args.toJson()..['key'] = user!.roomKey;
    return _emitWithAckAsync(SocketEv.saveMobilePatientConsent, data,
        (json) => SocketSaveConsentRes.fromJson(json as Map<String, dynamic>));
  }

  Future<SocketResponse<SocketFetchHealthCheckUpListRes>>
      fetchHealthCheckUpList(SocketFetchHealthCheckUpListArgs args) async {
    final data = args.toJson()..['key'] = user!.roomKey;
    return _emitWithAckAsync(SocketEv.fetchHealthCheckUpList, data,
        (json) => SocketFetchHealthCheckUpListRes.fromJson(json as Map<String, dynamic>));
  }
}
