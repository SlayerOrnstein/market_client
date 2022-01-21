import 'package:market_client/src/entities/order_set.dart';
import 'package:market_client/src/http.dart';
import 'package:market_client/src/models/models.dart';

/// {@template profile_client}
/// Holds endpoints that don't require auth in order to retrive orders and
/// statistics from profiles
/// {@endtemplate}
class ProfileClient {
  /// {@macro profile_client}
  ProfileClient({required this.ingameName, required this.client});

  /// in-game name for this profile.
  final String ingameName;

  /// [MarketHttpClient] used by the instance.
  final MarketHttpClient client;

  /// Return profile information for given user.
  Future<CurrentUser> getProfile() async {
    final res = await client.get('/profile/$ingameName');

    return CurrentUser.fromJson(res);
  }

  /// Return profile statistics for given user.
  ///
  /// Currently throw [UnimplementedError] since there are no models for
  /// this yet.
  Future getProfileStatistics() async {
    // TODO(Orn): Create profile statistics model.
    throw UnimplementedError();
  }

  /// Return all orders owned by this profile.
  Future<OrderSet> getProfileOrders() async {
    final res = await client.get('/profile/$ingameName/orders');

    final sellOrders =
        List<Map<String, dynamic>>.from(res['sell_orders'] as List<dynamic>)
            .map((e) => OrderFull.fromJson(e))
            .toList();

    final buyOrders =
        List<Map<String, dynamic>>.from(res['buy_orders'] as List<dynamic>)
            .map((e) => OrderFull.fromJson(e))
            .toList();

    return OrderSet(selling: sellOrders, buying: buyOrders);
  }

  /// Return profile achievements.
  ///
  /// Currently throw [UnimplementedError] since there are no models for
  /// this yet.
  Future getprofileAchievements() async {
    // TODO(SlayerOrn): find out how to get achievements
    //  the current docs say the endpoint but even with achievements there is
    //  not imformation displayed.
    throw UnimplementedError();
  }

  // /profile/<ingame_name>/reviews [GET | POST | DELETE] - Profile reviews.
  ///
  /// Currently throw [UnimplementedError] since there are no models for
  /// this yet.
  Future getprofileReviews() async {
    // TODO(SlayerOrn): find out how to get achievements
    //  the current docs say the endpoint but even with achievements there is
    //  not imformation displayed.
    throw UnimplementedError();
  }

  /// {@template undoc}
  /// Not yet documented in Warframe Market.
  /// DO NOT USE.
  /// {@endtemplate}

  /// Creates a review for this profile.
  ///
  /// {@macro undoc}
  Future createReview() async {
    // TODO(SlayerOrn): it's more then likely this requires sign-in
    throw UnimplementedError();
  }

  /// Deletes a review from this profile
  ///
  /// {@macro undoc}
  Future deleteReview() async {
    // TODO(SlayerOrn): it's more then likely this requires sign-in
    throw UnimplementedError();
  }
}
