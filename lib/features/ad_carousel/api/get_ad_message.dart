import 'package:click_desk/models/ad_message/ad_message.dart';
import 'package:click_desk/shared/constants/paths/api_paths.dart';
import 'package:click_desk/shared/providers/dio/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<AdMessage> fetchAdMessage(Ref ref) async {
  final dio = ref.read(dioProvider);
  final response = await dio.get(ApiPath.adMessage);
  return AdMessage.fromJson(response.data);
}
