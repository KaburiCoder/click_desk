import 'package:click_recept/providers/user/user_notifier_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../services/socket_io/socket_io_service.dart';
part 'socket_io_provider.g.dart';

@Riverpod(keepAlive: true)
SocketIOService socketIO(SocketIORef ref) {
  final user = ref.watch(userNotifierProvider);
  return SocketIOService(user);
}
