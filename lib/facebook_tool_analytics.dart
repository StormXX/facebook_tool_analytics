import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class FacebookToolAnalytics {
  static const MethodChannel _channel =
      const MethodChannel('facebook_tool_analytics');

  Future<void> logEvent({
    @required String name,
    Map<String, dynamic> parameters,
  }) {
    final args = <String, dynamic>{
      'name': name,
      'parameters': parameters,
    };

    return _channel.invokeMethod<void>('logEvent', _filterOutNulls(args));
  }

  Future<void> logPurchase({
    @required String currency,
    @required double price,
    @required String productID,
  }) {
    final args = <String, dynamic>{
      'currency': currency,
      'price': price,
      'product_id': productID,
    };

    return _channel.invokeMethod<void>('logEvent', _filterOutNulls(args));
  }

  Map<String, dynamic> _filterOutNulls(Map<String, dynamic> parameters) {
    final Map<String, dynamic> filtered = <String, dynamic>{};
    parameters.forEach((String key, dynamic value) {
      if (value != null) {
        filtered[key] = value;
      }
    });
    return filtered;
  }
}
