import 'package:flutter_test/flutter_test.dart';
import 'package:storyteller/storyteller.dart';
import 'package:storyteller/storyteller_platform_interface.dart';
import 'package:storyteller/storyteller_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStorytellerPlatform
    with MockPlatformInterfaceMixin
    implements StorytellerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final StorytellerPlatform initialPlatform = StorytellerPlatform.instance;

  test('$MethodChannelStoryteller is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStoryteller>());
  });

  test('getPlatformVersion', () async {
    Storyteller storytellerPlugin = Storyteller();
    MockStorytellerPlatform fakePlatform = MockStorytellerPlatform();
    StorytellerPlatform.instance = fakePlatform;

    expect(await storytellerPlugin.getPlatformVersion(), '42');
  });
}
