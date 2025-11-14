import '/flutter_flow/flutter_flow_util.dart';
import 'upload_image_widget.dart' show UploadImageWidget;
import 'package:flutter/material.dart';

class UploadImageModel extends FlutterFlowModel<UploadImageWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadedProfileImgCamera = false;
  FFUploadedFile uploadedLocalFile_uploadedProfileImgCamera =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  bool isDataUploading_uploadedProfileImgGallery = false;
  FFUploadedFile uploadedLocalFile_uploadedProfileImgGallery =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
