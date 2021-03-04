import 'dart:async';

import 'package:flutter/services.dart';

class EaseCallKit {
  static const MethodChannel _channel = const MethodChannel('ease_call_kit');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> initWithConfig() async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

/// 用户信息
class EaseCallUser {
  /// 用户名称
  String nickname;

  /// 用户头像URL
  String headImageURL;
}

class EaseCallConfig {
  EaseCallConfig(
    this.agoraAppId, {
    this.enableRTCTokenValidate = false,
  });

  /// 默认头像本地路径
  String defaultHeadImageURL;

  /// 铃声本地路径
  String ringFileURL;

  /// 超时时间
  int callTimeOut = 30;

  /// 声网AppId
  final String agoraAppId;

  /// 是否需要RTC验证，需要去声网后台控制，默认关闭
  final bool enableRTCTokenValidate;
}
