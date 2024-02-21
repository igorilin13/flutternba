import 'package:envied/envied.dart';

part 'app_config.g.dart';

@Envied()
class AppConfig {
  @EnviedField(varName: 'API_KEY')
  static const String apiKey = _AppConfig.apiKey;

  @EnviedField(varName: 'API_URL')
  static const String apiUrl = _AppConfig.apiUrl;
}
