import 'package:click_recept/constants/socket_ev.dart';
import 'package:click_recept/models/checkin_state/checkin_state.dart';
import 'package:click_recept/models/doctor_state/doctor_state.dart';
import 'package:click_recept/models/params/patient_cert_params.dart';
import 'package:click_recept/models/params/user_search_params.dart';
import 'package:click_recept/models/patient_cert_state/patient_cert_state.dart';
import 'package:click_recept/models/patient_state/patient_state.dart';
import 'package:click_recept/models/receive_patient_res_state/receive_patient_res_state.dart';
import 'package:click_recept/models/socket_io/socket_response.dart';
import 'package:click_recept/models/user/user.dart';
// ignore: library_prefixes
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketIOService {
  final User user;
  late IO.Socket socket;

  SocketIOService(this.user) {
    if (user.roomKey.isEmpty) return;

    bool test = true;
    socket = IO.io(
        test ? "http://192.168.1.43:4020" : 'https://hs.click-soft.co.kr',
        IO.OptionBuilder()
            .setPath("/api/socket.io")
            .setTransports(['websocket']).build());

    socket.onConnect((_) {
      print('connect');
    });
    socket.onDisconnect((_) => print('disconnect'));
  }

  Future<SocketResponse<List<PatientState>>> getMobilePatientInfo(
      UserSearchParams params) async {
    Map<String, dynamic> data = params.toJson();
    data['key'] = user.roomKey;

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
    Map<String, dynamic> data = {"key": user.roomKey};

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
    jsonData['key'] = user.roomKey;

    final response =
        await socket.emitWithAckAsync(SocketEv.getMobilePatientCert, jsonData);

    return SocketResponse.fromJson(response,
        (json) => PatientCertState.fromJson(json as Map<String, dynamic>));
  }

  Future<SocketResponse<ReceivePatientResState>> receiveMobilePatient(
      CheckinState checkin) async {
    final jsonData = checkin.toJson();
    jsonData['key'] = user.roomKey;

    final response =
        await socket.emitWithAckAsync(SocketEv.receiveMobilePatient, jsonData);

    return SocketResponse.fromJson(
        response,
        (json) =>
            ReceivePatientResState.fromJson(json as Map<String, dynamic>));
  }
}
