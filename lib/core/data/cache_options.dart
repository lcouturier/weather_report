import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:weather_report/core/extensions.dart';

enum CacheStrategy { use, forceReload }

extension CacheOptionsExtensions on CacheOptions {
  CacheOptions withCustom({Duration? duration, String? key, CacheStrategy cache = CacheStrategy.use}) {
    return copyWith(
      policy: cache == CacheStrategy.forceReload ? CachePolicy.refreshForceCache : CachePolicy.forceCache,
      keyBuilder: (request) => key ?? CacheOptions.defaultCacheKeyBuilder(request),
      maxStale: Nullable<Duration>(duration ?? 10.minutes),
    );
  }
}

class CacheOptionsManager {
  static final store = MemCacheStore();
  static final CacheOptions defaultOptions = CacheOptions(
    policy: CachePolicy.forceCache,
    store: CacheOptionsManager.store,
    maxStale: 10.minutes,
    hitCacheOnErrorExcept: [], // for offline behaviour
  );
}
