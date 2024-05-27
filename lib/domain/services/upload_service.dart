import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:image_picker/image_picker.dart';
import '../../data/data_sources/upload/web_upload_ds.dart';

class UploadService {
  UploadService(
    this._webDs,
  );

  final WebUploadDataSource _webDs;

  Future<String?> uploadFile(PlatformFile file) async {
    if (kIsWeb) {
      final res = await _webDs.createContent(
        bytes: file.bytes!,
        fileName: file.name,
      );
      return res;
    }
  }

  Future<String?> uploadMedia(XFile file) async {
    if (kIsWeb) {
      final bytes = await file.readAsBytes();
      final res = await _webDs.createContent(
        bytes: bytes,
        fileName: file.name,
      );
      return res;
    }
  }
}
