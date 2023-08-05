import 'package:dreamfarm/admin/Adminpage.dart';
import 'package:dreamfarm/users/buyproduct.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late TomatoesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = TomatoesModel();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR4fHcmbNHzlQKH0e0hNIjhSHfNoNmVugO6w&usqp=CAU',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Product Details',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Text(
                                    'Location: Narsimhulapet',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Text(
                                    'Farmer: Veeraiah',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Text(
                                    'Mobile: 123-456-7890',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Text(
                                    'Available Products:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: MaterialButton(
                              color: Colors.green,
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BuyProductWidget()),
                                    (route) => true);
                              },
                              child: Center(
                                child: Text(
                                  "Buy",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 8, 4, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Text(
                                    'Apples',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 8, 4, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Text(
                                    'Honey',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 8, 4, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Text(
                                    'Bananas',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.network(
                            'data:image/jpeg;base64,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',
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNMai_uOtyjS_987M0Ln6rx_mCWPtkLqeEIQ&usqp=CAU',
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR4fHcmbNHzlQKH0e0hNIjhSHfNoNmVugO6w&usqp=CAU',
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// import '/flutter_flow/flutter_flow_icon_button.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

class TomatoesModel {
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
