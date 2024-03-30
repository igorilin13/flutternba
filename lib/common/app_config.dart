import 'package:envied/envied.dart';

part 'app_config.g.dart';

@Envied()
class AppConfig {
  @EnviedField(varName: 'BALL_API_KEY')
  static const String ballApiKey = _AppConfig.ballApiKey;

  @EnviedField(varName: 'BALL_API_URL')
  static const String ballApiUrl = _AppConfig.ballApiUrl;

  @EnviedField(varName: 'SPORTSIO_API_KEY')
  static const String sportsIoApiKey = _AppConfig.sportsIoApiKey;

  @EnviedField(varName: 'SPORTSIO_API_URL')
  static const String sportsIoApiUrl = _AppConfig.sportsIoApiUrl;
}
