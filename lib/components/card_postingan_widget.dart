import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'card_postingan_model.dart';
export 'card_postingan_model.dart';

class CardPostinganWidget extends StatefulWidget {
  const CardPostinganWidget({
    super.key,
    required this.dataPostingan,
  });

  final PostinganFeedRow? dataPostingan;

  @override
  State<CardPostinganWidget> createState() => _CardPostinganWidgetState();
}

class _CardPostinganWidgetState extends State<CardPostinganWidget> {
  late CardPostinganModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardPostinganModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget!.dataPostingan!.daftarLiker
          .contains(FFAppState().loggedInUserId)) {
        _model.statusLike = true;
        safeSetState(() {});
      } else {
        _model.statusLike = false;
        safeSetState(() {});
      }

      if (widget!.dataPostingan!.daftarSaver
          .contains(FFAppState().loggedInUserId)) {
        _model.statusSave = true;
        safeSetState(() {});
      } else {
        _model.statusSave = false;
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
      child: FutureBuilder<List<UsersRow>>(
        future: (_model.requestCompleter ??= Completer<List<UsersRow>>()
              ..complete(UsersTable().querySingleRow(
                queryFn: (q) => q.eqOrNull(
                  'id',
                  widget!.dataPostingan?.idUsers,
                ),
              )))
            .future,
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<UsersRow> columnUsersRowList = snapshot.data!;

          final columnUsersRow =
              columnUsersRowList.isNotEmpty ? columnUsersRowList.first : null;

          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 44.0,
                          height: 44.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            widget!.dataPostingan?.profilPembuat != null &&
                                    widget!.dataPostingan?.profilPembuat != ''
                                ? widget!.dataPostingan!.profilPembuat!
                                : 'https://ui-avatars.com/api/?background=random&name=${widget!.dataPostingan?.namaPembuat}',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    columnUsersRow?.nama,
                                    'Nama',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        font: GoogleFonts.outfit(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  '@${columnUsersRow?.username}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                    Text(
                      dateTimeFormat(
                          "relative", widget!.dataPostingan!.tanggalDibuat!),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFF818181),
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
                Text(
                  valueOrDefault<String>(
                    widget!.dataPostingan?.judul,
                    'Judul',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w300,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Colors.black,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      DetailWidget.routeName,
                      queryParameters: {
                        'postId': serializeParam(
                          widget!.dataPostingan?.id,
                          ParamType.int,
                        ),
                        'statusLikeDariHome': serializeParam(
                          _model.statusLike,
                          ParamType.bool,
                        ),
                        'statusSaveDariHome': serializeParam(
                          _model.statusSave,
                          ParamType.bool,
                        ),
                      }.withoutNulls,
                    );

                    safeSetState(() => _model.requestCompleter = null);
                    await _model.waitForRequestCompleted();
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      key: ValueKey(widget!.dataPostingan!.gambar!),
                      widget!.dataPostingan!.gambar!,
                      width: double.infinity,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (!_model.statusLike!)
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.favorite_border,
                              color: Color(0xFF555555),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              _model.statusLike = true;
                              safeSetState(() {});
                              await LikesTable().insert({
                                'id_user': FFAppState().loggedInUserId,
                                'id_postingan': widget!.dataPostingan?.id,
                              });
                              await NotifikasiTable().insert({
                                'id_user_penerima':
                                    widget!.dataPostingan?.idUsers,
                                'id_user_pengirim': FFAppState().loggedInUserId,
                                'id_postingan': widget!.dataPostingan?.id,
                                'tipe': 'like',
                              });
                            },
                          ),
                        if (_model.statusLike ?? true)
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.favorite_rounded,
                              color: Color(0xFFFF0000),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              _model.statusLike = false;
                              safeSetState(() {});
                              _model.dataLikeUser =
                                  await LikesTable().queryRows(
                                queryFn: (q) => q
                                    .eqOrNull(
                                      'id_postingan',
                                      widget!.dataPostingan?.id,
                                    )
                                    .eqOrNull(
                                      'id_user',
                                      FFAppState().loggedInUserId,
                                    ),
                              );
                              await LikesTable().delete(
                                matchingRows: (rows) => rows.eqOrNull(
                                  'id',
                                  _model.dataLikeUser?.firstOrNull?.id,
                                ),
                              );

                              safeSetState(() {});
                            },
                          ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              DetailWidget.routeName,
                              queryParameters: {
                                'postId': serializeParam(
                                  widget!.dataPostingan?.id,
                                  ParamType.int,
                                ),
                                'autoFocusKomen': serializeParam(
                                  true,
                                  ParamType.bool,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Icon(
                            Icons.chat_bubble_outline,
                            color: Color(0xFF555555),
                            size: 20.0,
                          ),
                        ),
                        if (!_model.statusSave!)
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.bookmark_border,
                              color: Color(0xFF555555),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              _model.statusSave = true;
                              safeSetState(() {});
                              await SimpanPostinganTable().insert({
                                'id_user': FFAppState().loggedInUserId,
                                'id_postingan': widget!.dataPostingan?.id,
                              });
                              await NotifikasiTable().insert({
                                'id_user_penerima':
                                    widget!.dataPostingan?.idUsers,
                                'id_user_pengirim': FFAppState().loggedInUserId,
                                'id_postingan': widget!.dataPostingan?.id,
                                'tipe': 'save',
                              });
                            },
                          ),
                        if (_model.statusSave ?? true)
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.bookmark,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              _model.statusSave = false;
                              safeSetState(() {});
                              _model.dataSaveUser =
                                  await SimpanPostinganTable().queryRows(
                                queryFn: (q) => q
                                    .eqOrNull(
                                      'id_user',
                                      FFAppState().loggedInUserId,
                                    )
                                    .eqOrNull(
                                      'id_postingan',
                                      widget!.dataPostingan?.id,
                                    ),
                              );
                              await SimpanPostinganTable().delete(
                                matchingRows: (rows) => rows
                                    .eqOrNull(
                                      'id_user',
                                      _model.dataSaveUser?.firstOrNull?.idUser,
                                    )
                                    .eqOrNull(
                                      'id',
                                      _model.dataSaveUser?.firstOrNull?.id,
                                    ),
                              );

                              safeSetState(() {});
                            },
                          ),
                        Builder(
                          builder: (context) => InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await Share.share(
                                'Cek postingan menarik ini!https://madingnew.flutterflow.app/detail?id=${widget!.dataPostingan?.id?.toString()}',
                                sharePositionOrigin:
                                    getWidgetBoundingBox(context),
                              );
                            },
                            child: Icon(
                              Icons.share,
                              color: Color(0xFF555555),
                              size: 20.0,
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
          );
        },
      ),
    );
  }
}
