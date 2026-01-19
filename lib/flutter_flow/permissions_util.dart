import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';

import '/flutter_flow/flutter_flow_util.dart';
import '/backend/push_notifications/push_notifications_util.dart';

const kPermissionStateToBool = {
  PermissionStatus.granted: true,
  PermissionStatus.limited: true,
  PermissionStatus.denied: false,
  PermissionStatus.restricted: false,
  PermissionStatus.permanentlyDenied: false,
};

final cameraPermission = Permission.camera;
final photoLibraryPermission = Permission.photos;
final notificationsPermission = Permission.notification;
final calendarPermission = Permission.calendar;

Future<bool> getPermissionStatus(Permission setting) async {
  final status = await setting.status;
  return kPermissionStateToBool[status]!;
}

Future<void> requestPermission(Permission setting) async {
  if (setting == Permission.photos && isAndroid) {
    final androidInfo = await DeviceInfoPlugin().androidInfo;
    if (androidInfo.version.sdkInt <= 32) {
      // Android 12 and below use storage permission
      await Permission.storage.request();
    } else {
      // Android 13+ uses granular media permissions
      await Permission.photos.request();
      // Also request videos permission for complete media access
      await Permission.videos.request();
    }
  } else {
    // For all other permissions, request normally
    await setting.request();
  }

  if (setting == Permission.notification) {
    kNotificationsBehaviorSubject.add(false);
  }
}
