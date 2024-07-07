import 'package:envied/envied.dart';

part 'app_config.g.dart';

@envied
abstract class AppConfig {
  @EnviedField(varName: 'PRIVACY_POLICY_URL')
  static const String privacyPolicyUrl = _AppConfig.privacyPolicyUrl;
}
