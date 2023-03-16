import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'storyteller_platform_interface.dart';

/// An implementation of [StorytellerPlatform] that uses method channels.
class MethodChannelStoryteller extends StorytellerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('storyteller');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
