import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'Adminpage.dart';

class AddproductModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textController6?.dispose();
    textController7?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

class FlutterFlowModel {
}
// import '/flutter_flow/flutter_flow_icon_button.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'addproduct_model.dart';
// export 'addproduct_model.dart';

class AddproductWidget extends StatefulWidget {
  const AddproductWidget({Key? key}) : super(key: key);

  @override
  _AddproductWidgetState createState() => _AddproductWidgetState();
}

class _AddproductWidgetState extends State<AddproductWidget> {
  late AddproductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddproductModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
    _model.textController5 ??= TextEditingController();
    _model.textController6 ??= TextEditingController();
    _model.textController7 ??= TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add Product',
                style: FlutterFlowTheme.of(context).headlineMedium,
              ),
              FlutterFlowIconButton(
                borderColor: const Color(0xFF2A7E27),
                borderRadius: 45,
                borderWidth: 1,
                buttonSize: 100,
                fillColor: const Color(0xFF2A7E27),
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 45,
                ),
                onPressed: () {
                    print('IconButton pressed ...');
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                child: TextFormField(
                  controller: _model.textController1,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Seller Name',
                    hintText: 'Enter seller name',
                    hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF2A7E27),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  validator:
                      _model.textController1Validator asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                child: TextFormField(
                  controller: _model.textController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Product Name',
                    hintText: 'Enter product name',
                    hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF2A7E27),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  validator:
                      _model.textController2Validator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                child: TextFormField(
                  controller: _model.textController3,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Product Description',
                    hintText: 'Enter product description',
                    hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF2A7E27),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  minLines: 3,
                  validator:
                      _model.textController3Validator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                child: TextFormField(
                  controller: _model.textController4,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Product Price',
                    hintText: 'Enter product price',
                    hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF2A7E27),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  validator:
                      _model.textController4Validator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                child: TextFormField(
                  controller: _model.textController5,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Seller City',
                    hintText: 'Enter seller city',
                    hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF2A7E27),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  validator:
                      _model.textController5Validator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                child: TextFormField(
                  controller: _model.textController6,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Seller Address',
                    hintText: 'Enter seller address',
                    hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF2A7E27),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  validator:
                      _model.textController6Validator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                child: TextFormField(
                  controller: _model.textController7,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Stock Quantity',
                    hintText: 'Enter stock quantity',
                    hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF2A7E27),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  validator:
                      _model.textController7Validator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 50, 16, 16),
                child: FFButtonWidget(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Button pressed ...');
                    
                  },
                  text: 'Add Product',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 55,
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: const Color(0xFF2A7E27),
                    textStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Colors.white,
                            ),
                    elevation: 2,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FFButtonWidget {
}

class FFButtonOptions {
}

class FlutterFlowIconButton {
}
