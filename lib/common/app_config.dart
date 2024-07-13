import 'package:envied/envied.dart';

part 'app_config.g.dart';

@envied
abstract class AppConfig {
  @EnviedField(varName: 'privacy_policy_url')
  static const String privacyPolicyUrl = _AppConfig.privacyPolicyUrl;

  @EnviedField(varName: 'show_team_logos')
  static const bool showTeamLogos = _AppConfig.showTeamLogos;
}
