import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'card_postingan_widget.dart' show CardPostinganWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class CardPostinganModel extends FlutterFlowModel<CardPostinganWidget> {
  ///  Local state fields for this component.

  bool? statusLike;

  bool? statusSave = false;

  ///  State fields for stateful widgets in this component.

  Completer<List<UsersRow>>? requestCompleter;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<LikesRow>? dataLikeUser;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<SimpanPostinganRow>? dataSaveUser;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
