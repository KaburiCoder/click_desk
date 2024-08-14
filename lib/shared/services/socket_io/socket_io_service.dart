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

    socket.onConnect((_) {
      print('connect');
    });
    socket.onDisconnect((_) => print('disconnect'));
    socket.onError((error) {
      print(error.toString());
    });
  }

  Future<SocketResponse<List<PatientState>>> getMobilePatientInfo(
      UserSearchParams params) async {
    Map<String, dynamic> data = params.toJson();
    data['key'] = user!.roomKey;

    final response =
        await socket.emitWithAckAsync(SocketEv.getMobilePatientInfo, data);

    final resData = SocketResponse.fromJson(
      response,
      (json) => (json as List<dynamic>)
          .map((item) => PatientState.fromJson(item))
          .toList(),
    );

    if (resData.status == ResponseStatus.error) {
      throw resData.message!;
    }
    return resData;
  }

  Future<SocketResponse<List<DoctorState>>> getMobileDoctorInfo() async {
    Map<String, dynamic> data = {"key": user!.roomKey};

    final response =
        await socket.emitWithAckAsync(SocketEv.getMobileDoctorInfo, data);

    return SocketResponse.fromJson(
        response,
        (json) => (json as List<dynamic>)
            .map((item) => DoctorState.fromJson(item))
            .toList());
  }

  Future<SocketResponse<PatientCertState>> getMobilePatientCert(
      PatientCertParams params) async {
    final jsonData = params.toJson();
    jsonData['key'] = user!.roomKey;

    final response =
        await socket.emitWithAckAsync(SocketEv.getMobilePatientCert, jsonData);

    return SocketResponse.fromJson(response,
        (json) => PatientCertState.fromJson(json as Map<String, dynamic>));
  }

  Future<SocketResponse<ReceivePatientResState>> receiveMobilePatient(
      CheckinState checkin) async {
    final jsonData = checkin.toJson();
    jsonData['key'] = user!.roomKey;

    final response =
        await socket.emitWithAckAsync(SocketEv.receiveMobilePatient, jsonData);

    return SocketResponse.fromJson(
        response,
        (json) =>
            ReceivePatientResState.fromJson(json as Map<String, dynamic>));
  }

  Future<SocketResponse<SocketCheckConsentRes>> checkMobileConsent(
      SocketCheckConsentArgs args) async {
    final jsonData = args.toJson();
    jsonData['key'] = user!.roomKey;

    final response = await socket.emitWithAckAsync(
        SocketEv.checkMobilePatientConsent, jsonData);

    return SocketResponse.fromJson(response,
        (json) => SocketCheckConsentRes.fromJson(json as Map<String, dynamic>));
  }

  Future<SocketResponse<SocketSaveConsentRes>> saveMobileConsent(
      SocketSaveConsentArgs args) async {
    final jsonData = args.toJson();
    jsonData['key'] = user!.roomKey;

    final response = await socket.emitWithAckAsync(
        SocketEv.saveMobilePatientConsent, jsonData);

    return SocketResponse.fromJson(response,
        (json) => SocketSaveConsentRes.fromJson(json as Map<String, dynamic>));
  }

  Future<SocketResponse<SocketFetchHealthCheckUpListRes>>
      fetchHealthCheckUpList(SocketFetchHealthCheckUpListArgs args) async {
    final jsonData = args.toJson();
    jsonData['key'] = user!.roomKey;

    final response = await socket.emitWithAckAsync(
        SocketEv.fetchHealthCheckUpList, jsonData);

    return SocketResponse.fromJson(
        response,
        (json) => SocketFetchHealthCheckUpListRes.fromJson(
            json as Map<String, dynamic>));
  }
}
