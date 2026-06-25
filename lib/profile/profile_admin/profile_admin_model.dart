import '/backend/supabase/supabase.dart';
import '/components/logout_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'profile_admin_widget.dart' show ProfileAdminWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileAdminModel extends FlutterFlowModel<ProfileAdminWidget> {
  ///  Local state fields for this page.

  String activeTab = 'like';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
