import 'package:click_desk/shared/providers/auth/auth_provider.dart';
import 'package:click_desk/shared/services/socket_io/socket_io_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'socket_io_provider.g.dart';

@Riverpod(keepAlive: true)
SocketIOService socketIO(SocketIORef ref) {
  final auth = ref.watch(authProvider);
  return SocketIOService(auth.value);
}
