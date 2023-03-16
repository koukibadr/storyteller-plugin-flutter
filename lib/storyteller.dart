
import 'storyteller_platform_interface.dart';

class Storyteller {
  Future<String?> getPlatformVersion() {
    return StorytellerPlatform.instance.getPlatformVersion();
  }
}
