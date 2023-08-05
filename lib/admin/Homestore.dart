import 'package:dreamfarm/admin/Adminpage.dart';
import 'package:dreamfarm/admin/ProductDetails.dart';
import 'package:dreamfarm/admin/home2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeStoreWidget extends StatefulWidget {
  const HomeStoreWidget({Key? key}) : super(key: key);

  @override
  _HomeStoreWidgetState createState() => _HomeStoreWidgetState();
}

class _HomeStoreWidgetState extends State<HomeStoreWidget> {
  late HomeStoreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = HomeStoreModel();
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
        appBar: AppBar(
          title: Text(
            'My Stock',
            style: TextStyle(
              fontFamily: 'Readex Pro',
            ),
          ),
          centerTitle: false,
          elevation: 0,
        ),
        drawer: Drawer(
          child: Home2Widget(),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Welcome to our Daily Store!',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'Buy fresh and organic daily products directly from local farmers.',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' Products',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'View All',
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      children: [1, 2, 3]
                          .map((e) => Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetails()),
                                        (route) => true);
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.43,
                                    height: MediaQuery.of(context).size.height *
                                        0.35,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2A7E27),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR4fHcmbNHzlQKH0e0hNIjhSHfNoNmVugO6w&usqp=CAU',
                                              width: 300,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Apples     150/kg',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'Sold - 15 kgs / Left - 10 kgs',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
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

class HomeStoreModel {
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
