WIP dart client for Warframe Market.

Documentation can be found [here][docs]

## Usage

A simple usage example:

```dart
import 'package:market_client/market_client.dart';

Future<void> main() async {
  final api = MarketClient();
  final item = await api.getMarketItem('secura_dual_cestra');

  print(item.id);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
[docs]: https://slayerornstein.github.io/market_client/
