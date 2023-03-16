import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'storyteller_method_channel.dart';

abstract class StorytellerPlatform extends PlatformInterface {
  /// Constructs a StorytellerPlatform.
  StorytellerPlatform() : super(token: _token);

  static final Object _token = Object();

  static StorytellerPlatform _instance = MethodChannelStoryteller();

  /// The default instance of [StorytellerPlatform] to use.
  ///
  /// Defaults to [MethodChannelStoryteller].
  static StorytellerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StorytellerPlatform] when
  /// they register themselves.
  static set instance(StorytellerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
