import 'package:better_video_player/src/configuration/better_video_data_source_type.dart';

class BetterVideoPlayerDataSource {
  /// 数据类型
  final BetterVideoPlayerDataSourceType type;

  /// url
  final String url;

  const BetterVideoPlayerDataSource(
    this.type,
    this.url,
  ) : assert((type != null && url != null),
            "Url can't be null in network or file data source");

  /// 工厂初始化数据源
  factory BetterVideoPlayerDataSource.network(String url) {
    return BetterVideoPlayerDataSource(BetterVideoPlayerDataSourceType.network, url);
  }

  /// 工厂初始化数据源
  factory BetterVideoPlayerDataSource.file(String url) {
    return BetterVideoPlayerDataSource(BetterVideoPlayerDataSourceType.file, url);
  }
}