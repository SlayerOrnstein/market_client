import 'package:market_client/src/models/models.dart';

extension I18nX<T extends MarketI18n> on Map<String, T> {
  /// Get translations matching [locale] or fallback to `en`
  T translations(String locale) => this[locale] ?? this['en']!;
}
