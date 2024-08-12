import 'package:audioplayers/audioplayers.dart';

class AudioUtil {
  late final AudioPlayer _player = AudioPlayer();

  Future<void> beep(BeepStyle beepStyle) async {
    if (beepStyle == BeepStyle.scanner) {
      return _player.play(AssetSource('sounds/beep-07a.wav'), volume: 0.1);
    }
  }
}

enum BeepStyle { scanner }
