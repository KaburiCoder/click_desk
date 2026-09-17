import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// 다음 우편번호 검색 결과 중 앱에서 사용하는 값
class KopoModel {
  final String? zonecode;
  final String? address;

  const KopoModel({this.zonecode, this.address});

  factory KopoModel.fromJson(Map<String, dynamic> json) => KopoModel(
        zonecode: json['zonecode'],
        address: json['address'],
      );
}

/// 주소 검색 화면 (remedi_kopo 패키지를 webview_flutter 4.x로 옮김)
/// 선택한 주소를 [KopoModel]로 pop 한다.
class KopoPage extends StatefulWidget {
  const KopoPage({super.key});

  @override
  State<KopoPage> createState() => _KopoPageState();
}

class _KopoPageState extends State<KopoPage> {
  late final WebViewController _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..addJavaScriptChannel('onComplete', onMessageReceived: _onComplete)
    ..loadRequest(
        Uri.parse('https://studio-b-co-kr.github.io/kopo/assets/daum.html'));

  void _onComplete(JavaScriptMessage message) {
    final model = KopoModel.fromJson(jsonDecode(message.message));
    Navigator.pop(context, model);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('주소검색', style: TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
