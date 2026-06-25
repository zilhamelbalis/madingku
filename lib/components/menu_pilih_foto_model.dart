import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'menu_pilih_foto_widget.dart' show MenuPilihFotoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuPilihFotoModel extends FlutterFlowModel<MenuPilihFotoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataTuy = false;
  FFUploadedFile uploadedLocalFile_uploadDataTuy =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataTuy = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
