import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class EaseCallKit {
  static const MethodChannel _channel = const MethodChannel('ease_call_kit');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// 初始化EaseCallKit,
  /// 必须确保登录成功后再调用。
  static Future<String> initWithConfig(EaseCallConfig config) async {
    final String version = await _channel.invokeMethod('initWithConfig');
    return version;
  }

  /// `emId`是对方的环信id
  /// `callType`只能是[EaseCallType.SingeAudio]或[EaseCallType.SingeAudio]
  /// `ext`是扩展信息，对方会直接收到
  static Future<String> startSingleCall(
    String emId, {
    EaseCallType callType = EaseCallType.SingeAudio,
    Map ext,
  }) async {
    final String version = await _channel.invokeMethod('initWithConfig');
    return version;
  }

  static Future<String> startInviteUsers(List<String> users, {Map ext}) async {
    final String version = await _channel.invokeMethod('initWithConfig');
    return version;
  }

  static Future<String> init({@required EaseCallConfig config}) async {
    final String version = await _channel.invokeMethod('initWithConfig');
    return version;
  }

  static Future<String> init({@required EaseCallConfig config}) async {
    final String version = await _channel.invokeMethod('initWithConfig');
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

/// 呼叫类型
enum EaseCallType {
  /// 1v1 音频
  SingeAudio,

  /// 1v1 视频
  SingeVideo,

  /// 多人
  Multi,
}

class EMCallError {
  /// 错误种类
  EaseCallErrorType errType;

  /// 错误码
  int errCode;

  /// 错误描述
  String errDescription;
}

/// 结束原因
enum EaseCallEndReason {
  /// 挂断
  Hangup,

  /// 呼叫取消
  Cancel,

  /// 对方取消
  RemoteCancel,

  /// 对方拒接
  Refuse,

  /// 对方忙
  Busy,

  /// 无响应
  NoResponse,

  /// 对方无响应
  RemoteNoResponse,

  /// 已在其他设备处理
  HandleOtherDevice,
}

enum EaseCallErrorType { Process, RTC, IM }
