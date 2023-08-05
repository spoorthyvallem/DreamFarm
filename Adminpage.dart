// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
 import 'package:google_fonts/google_fonts.dart';
 import 'package:provider/provider.dart';
import 'admin_page_model.dart';
export 'admin_page_model.dart';

class AdminPageWidget extends StatefulWidget {
  const AdminPageWidget({Key? key}) : super(key: key);

  @override
  _AdminPageWidgetState createState() => _AdminPageWidgetState();
}

class _AdminPageWidgetState extends State<AdminPageWidget> {
  late AdminPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 487,
                height: 291,
                decoration: BoxDecoration(
                  color: Color(0xDC4DE371),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFE56969),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'S',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 40,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 55, 0, 0),
                      child: Container(
                        width: 353,
                        height: 68,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 1),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                child: Text(
                                  'Total Product            Active Product\n          2                                        0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 429,
                height: 566,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.73, -0.71),
                      child: Icon(
                        Icons.person_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 50,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.73, -0.41),
                      child: Icon(
                        Icons.mail,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 50,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.71, -0.07),
                      child: Icon(
                        Icons.call,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 50,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.7, 0.23),
                      child: Icon(
                        Icons.location_on,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 50,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.25, -0.65),
                      child: Text(
                        'Admin',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 25,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.07, -0.03),
                      child: Text(
                        '1234567890',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 25,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.07, 0.24),
                      child: Text(
                        'Hyderabad',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 25,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.37, -0.38),
                      child: Text(
                        'admin@gmail.com',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 25,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1, -1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 60, 0, 0),
                      child: Icon(
                        Icons.person_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 40,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 70, 0, 0),
                      child: Text(
                        'Admin',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FlutterFlowTheme {
  static of(BuildContext context) {}
}
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

class AdminPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
