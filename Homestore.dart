import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_store_model.dart';
export 'home_store_model.dart';

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
    _model = createModel(context, () => HomeStoreModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 30,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            'Daily Store',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Welcome to our Daily Store!',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                      ),
                      Text(
                        'Buy fresh and organic daily products directly from local farmers.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
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
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        ),
                        Text(
                          'View All',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.43,
                            decoration: BoxDecoration(
                              color: Color(0xFF2A7E27),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      'data:image/jpeg;base64,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',
                                      width: 300,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: Text(
                                      'Apples',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 0, 0),
                                    child: Text(
                                      '150/kg',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.43,
                            decoration: BoxDecoration(
                              color: Color(0xFF2A7E27),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTob1zoD-rL1Lvp9n9vgD4-u7iJuPaHuMNoVQ&usqp=CAU',
                                        width: 300,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: Text(
                                      'Fresh Milk',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 0, 0),
                                    child: Text(
                                      '45/liter',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.43,
                            decoration: BoxDecoration(
                              color: Color(0xFF2A7E27),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS3KxLV2nTW3osWejRWPSBWMlzwdlN4J50lw&usqp=CAU',
                                        width: 300,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: Text(
                                      'Pure Honey',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 0, 0),
                                    child: Text(
                                      '300/liter',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.43,
                            decoration: BoxDecoration(
                              color: Color(0xFF2A7E27),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUTEhIVFRUVFRcVFxUVGBUVFRUVFRUXFxUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHyUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAADAAMBAQEAAAAAAAAAAAAEBQYAAgMHAQj/xAA7EAABAwMDAgQEBQMDAgcAAAABAAIDBBEhBRIxQVEGEyJhMnGBoRRCkbHBUtHwFSOSB4IkU2Jyc6LC/8QAGgEAAgMBAQAAAAAAAAAAAAAAAgMBBAUABv/EADIRAAEEAQMCAwcEAQUAAAAAAAEAAgMRIQQSMUFRBRMiFGFxgZGhsTLB0fBiQkOCkvH/2gAMAwEAAhEDEQA/ALyOquiojdKqBhICeU7bLKYbQIaoYpDxRpTntLonFrhnBVrVmyntVqg0HKVMAppQku99MWyfG059+cqbgZchWVJUNmMjFOMpdsrm9nJbnU1E4ekFOKaPbGT7KA1KUukNu69Eq/TASeyhQxriu0NZcklcqKpI5Vvocm4BS0FEOVaeHKRthix/ddq2B+ELWi1VadEALoo6xG3G4IapdsjXk3iOpeJTYkZ/hdp2FgDQidhe60Na1/BTAOXkP/TvWXl+xxJXrtO+4VyOTkHkKAbWryhJSjZEBOFzpAFxQsvsgqiNHOQsyqveCuakk9OScLk7TO6atIuujyFXMYdymFIX6Wg5tHIN1Uhi2EIIXCAICFKvZtsU307WA0Wuh9VjDUmqHgJ0RLDhRVp/qeqtc0hRf4He8rKqtATnQIN2T1TZgXerqj2ABJarTiG4SGpoibY46L15+ktcL2Uzq+iBpJASWOdGUNqOpaD7Kr0cAWCEigAwQtvxIiKmVwIXWq0swo7xA2z8JpBrQI5SqvlD3qN/pRAoFtyMLSoaeUfKWtCGc64QxPLipBQW89l9RbWey+KzRXWvX6CcWFk084AXupTTKmzRfsl/iPWH7drDb5KA4gKLTHXfE8cdxuF157rviIyXsldZDI517k/NaQ6Y5zhu4Q7RduKiym3hCUtlBcfiVHrmmeXKx4+GR1j7E8G/YnFvce95hx8stI/KrsvbU02TY2wezhlp/UBKcd4KsMG5paOUDX04MRBHRTTvDW13OOR8jwmPiPWwyJjuL4PSx6i36rSr14CkbNtLsCxHFjgj6FRDHJsod1XI7oOpomxWIPzB/hNtKr2gWvYrzqr16SV9zgdAnel+ZMBsaT79P1Vowua31lCRXCo9X104ZfqlGraeZCHd01OiWAdLiyM/GNBAaBttz7qtvAy3KnJ5RfgTw+IyXnkr0qGOwXl8HiF1O6z2naeDZU2n+KmPAsUccjas8rgQFWOYhJguMGqhwW7qppRuIrC60PIllY+ycOivwlWpU+Cqz2uq1IwkrqyxW8NVdKKyMi6Wf6gWFAwFHyrZkl13Jwo+DWfdMYtWDhyng0hIX3WHXU7qGGp09+4pPqsZskeZ6kI5U/O66t/DTvQFDScqu8LhzsDhXybZaa79KuaaXCF1EAg4TjT6LC+1enXBwlPBLbSaXk9e5zHHtdKaqq3YVX4o010ZLuiiJHZSIfXk9EDjSIhZfg2X1shByhmTWRETg4pxBRtW01TdbQSBDTQ2K0ZcKQ2uEQBTLzViEwvqPzCupU7NXJXRg35Km9NmuttW1sRja05RizgIduU21OshhFzYnoFN02ovnls3jk9gO5QdLQy1Dtzr2TmCnbGNjB8z3KCQNYCOStLw/R+0y7eAOf4+aYslYz4Rud/U7+B0W41B98koEImGnLhcdFRK91BpoYm7WgAI+GWKV2yRgcJMesX9fSx7n/OUxbokZjED2AN9TbNuPSTgjt3XKlii8pxkOW9rXDhwR9QlLX1FXJJIZWt8q4hiabAvPLrXu6w65y7HCfFxzS8j40zynkN/S438HDmulGwSOLSx/h2mp5bv/wBx35af4yXdN5HA9uT7Kv8ADGq05aGvYyKS9mgADjrtHA91If6DPnddpJyQbudz17KgoPC744zIxoFxm3Lv5uilDXCnHd/ft91XZpJdUTMwNYLwLoX2AyfrQXXU3yvkJeWAXxuIFx35XPT9L3PB3Xsb2BuPla666aPxkOwgtmhuAT1A/Kf7ojQ6hrDYkE9RcE45wq4FOoYWlooNLJpyXAbxggijfzcfsOlUjNYqobBsjMjCX08sQs1kdr4vn+FR1UcU4FgLhFR6YzbawTREb9NUq7vDoA6yXD3Yx86UXrmqyw2DW47hKqXxQ5rwQTbrdUHiSLYCw/RQU8PqNlzWtcSHchYephMEhZz/AAvRaDxkLZKYs8RxyYJXlTIHdAV0ZI5p6hTsIwHWkX3XplVTte0lpuonVoS1xW2m685hsThG1lUyb5qWNAKMFKKeMlMI22X2KFdBCglfQRIiCpA5CA1Ca6KbCgaxqqNdblAOUr8rc4Bel+EdMDWi6gNPZeVvzXrGjts1q1AMAJrjilRUsQAXZ7MLWmAsvtRNZPAFZQKP8WwAscvH6uKz3D3XsviBwcCF5XrNAWPJ6FZ4pkh96BwtJHsXyFxBRLmrmY1YDsKByiw64XF5W8a5yosEJq13L4tNyxDSi0vdX7BZvKd+FtBFSS6R2eiG0LSQ5uRcnm6s9D0QxkbSR/CHU6hrAWtNHuiNrpqVK2nhOwWsLfMnCl2OVv43gLKRpIyZGgn/ALXH+FAxvSGEvbZXpPBKbET3P7IwFM9Kd07pOx6Jpp9pBCEhej3bmEI/UIXA26Kh0TTKd7QLDf1LrE39uySP1BrmoM1bgbtNlwO08JZifMzaTtIT/WNImgcHRzOMbjba7/cAv23ZTqjoqgNANVYG2PLBsPm5xH2UtS608lrXm4HF+6eSar8JB4PCNr2g3/f2WVN4WA4ekWbyBVpF4lY+nqAC8yMIDiHBgBN+XNaAD+icxyw1rAWkRSi1jb0m3FwFP+Maze5jvog9Hls8C9gT91D8iwqculfAfOgdteBZHQ9/5I6qj/BVNOctLmj87PU23zGR9QqLTdSDmc5S7Vm1LGxmKSwte9vsVrT6pO0A1NO2Rv8A5kY2u+ZURktOD8v7j8Jntr9RGHPiBP8AiRf/AEJs/Imuy4+NZ/8AbNuSOf8APkoaiDd3q6916JXUMdVETE7cD/yHsQp4eEDfJUvdk317Lzuvfvm3N4oD6JppmnxyNuAFz1Lw20j0hc26ZLB6oyfcdCjKLXfyvFj74SW45VZru6kq/QHsyAl0bHMK9OmnjkHT6cKe1KjYeAnkuaMm0W0chLNPnvymYjugqelsUxY2wWdNJZwoXwRpTqMJ6J9EFzrKYEIIXHcuApTWlYlBKv6PUgLKHlj2m6IhryFseYAAmOXqtJqIIGV2qqgELzKl1Z4cM4T6m1XdyUv2oA0UKP1JocVNeJaYeXfsmclbd4twEl8RVBc23ulPNlSo2QLaKG6ycWKMo23TnOptpaGewjlByOT2pgwktTDZTFJuXbsIa6+LayxWEKN0CvAAyF6j4Ye14HVeM6NpTpXDabfJes+ENBkiGXkqlr2xh2DnsrFlPvH1AJNPm28sDZB/2EE/a68TbKv0DHROcC12WuBaQeoIsQvEfGfh19BUGMg+W+7on9C3q2/cf2RaU36SK/uVqeHzhpLO6EjkXVsiVxyoqOVPcxbseoR7XLq1yHp7OxfPQd/a/U/utg5Ic1Wm6oGwDx+/CIuiopycHKCaffv9ljqsM9R6INtq17Q0tNnj/wB/cL5rfrkYy/wjc769ERSHbYAfXrygaHdKXOGcFxPQAd1X+E9C8wiabEbcgHG4j/8AI7pjmnDVS9ohhY+aTr9T0AHxVhBGTSgnDmt3foM/a6EgrI8We0tdgtBFwe4C5w+IfxFX5EbR5QYfX/W4jgDskFVoWz1sJvfI7Li4g+nPCwtBH5kckL7a5p9N9Cbwe2fybTbWaJ0LfPgG17T6gOHsvm4T7TXedBHMQBvF7KG1TX5jT+WIzdw27vbg/VPIqlzKeNjXENawN+WExha31dFlG3THzRkngc32+qN1zUYYGXebngNHxOPYBSL6Z0v+7INt/hZ/SO5908k8O2Aned7uRfoldbUOKNzSc0q08RidR6oSmkINropzSUJRwuc9U1Pp2FnTOccBC1KY419kanjdOWlRp+FQc1wzSY0WkzHLaScWW0tOWoCVvKfpmbnYROaAk+oVAvhCsnXTUKc3QsbFpOZXKE0nNGbowOtwl1E1NWRYVCWgUNLIqqwyuFQ67SuVUyyEMptZPYNzbXJbVhEUBWlRGSu9JGmOI2JZTBzbhLaumum0YQ9a9rQq8biDhQp10CxESVDblYr+53ZdaP8AAEIsCV7Po5FgvCPDeo+VESOR0VpSeOGMYC42SJ2O84uq8qySvXoyEq8V6FDX07oZfmx4+Jjxw5v9uqi6P/qHC4fGiKPx7BJJ5bXi9kzzXNGWn6Lg9eNatRvppnwvIJY4tuOD2IXFk6b+KphLLK/m7j+9lJ+aQVfhHmMBPKuxasnDk/ZUW6qkoXRVjbNIZUtGRw2UD82Pzd7Z65UrpOkvls6QljDwPzP/ALD3Vbp9BGywYLe/U9rnqVXmcxhoZK2YNDqJwJL2DoeSflYsH3/LoUqngla7aY3hwDsWN3WLLkdx7pXWB1gCDcm22x57WXoGsyFrIpdzHSQv3DIa50bhZ7Hd8fm5x9U3qqum8ts7RuAG5twPi4Av3B57IWPrI/v5VOTUeUHtntrunVrsAYOO3yHObSbS6enpImMnZuMoDpDci2btZYWNhY/ddfE+t5MEWGgAEjFxbDGgcNGP8C4RafLVNMu60r/U24+GPIFuxJH6Ad1P1dNJE8slBDvfr7g9Uo2bTfDNO5zhPMb6tHY8bq+WE48M1WyZjv6T+9r/ALqn1arMErri7XXLT0LT8P8AZR2isLpAByf7hPv9VbK40s4AINo5Oge02sfYkcJYJsgfFN1MzYde97m7mFrS6unQH7V81VUtAG07PQHOte3Hqdk/uljay7/JkiLXD1NGCDbqClkmpTUxLZXeocdRb2C4Uuv76hj3fluB9Uxz2OrbY4XQ+ESPaZnHJt1tPU5odCLx+6toK2NzCx/pPFnYUfqdIWudjHfoqWHU2ud0N0j12vLZrNdb26forTXHGQfssnxDTPEVu6Z474/hDaQLusFaU1NgKV0Swdfi5VnRyAhViGmUhZUfC+/hwuE8CaNjuuFTHZNdCKqkwGlM6lTCyQVMQCqNRKQVrMJULAx9hdIbCX/hA5CzaT1CJilymUMgcMq5LCJAqzXkcpFDT7TlM424Rc1KChXjasDUxPY6irTXApXqXCXQ5TOpgc7oudJQm9irMBptLkJJDgrKQJnVw7WG6Ruqw26bJGS3CFwRc9UGhS+r6kXGwK21CsJNkok5VrTacNNlJpa/iD3WLWyxX6CldqWQMIF7d1rqRIyCLJdUPytCboxHkOTiV1bMUw0a5lbtNjflLGhO/B7AapgPBuPrZTLhh+ClgtwBTHUmAXQejaWHO8x4u0H0t/qI6n2TDUWEuLOu633sEaxgaABwMD5BZnmlsdDqtzwPRtmmMkgsN6dz/AGfoiQ8YJTWjoPNadhykab6DWljlUodV7SYu8u2HIXdmlBh9Y3fqnmn6NHsc1jLNf8AEy5cwno7aT6T7tIKKpIPOG7/AA+6OhmFPyrETKN9FhauUTja4W7sk7tTdSyCOSnvu+F8LwL9PgfweOq6ax5VSxrZYZmvHwuLYmEnqLl223dHapPFVGMcbXbr/wAJtUUrHs2nIP2PQjsUewu3Bpx0WWdM2LaWF7HZsXdfUdeyitC0h8NYGuYWhzdzb2cCL8BwJva47HPHUzmttb+Kn2m4Er8/J5/lV+mySwVv4Z7nOY7/AHGA3IaMC7ewwRb/AAxWozf+JnIxaWf2I2ucbhKI5/vQI2ThmpeX06mtF980OeCd2e2U7qJjU0rXnMkHoeepYR6SUksi/CVfaUt5EnpIPB+a4MYS8gDgkW+TuPb5pRaQSFf8M1Yi3wE+lhsH/E5r5JrotWS5tzwiNYfybep2b9gvtHQ7H56NbusLDd1ARU8IdzklMhq/csnxrXRzhojxYBP5A/lLdPrXNI7K40itBAsVJO0y2QiKCcxlMfEAdwXnm+5ek077hc6x2EkotXFuVtWajjBTd1tR2l+o1GUg1Gqwt9SruVO1lcXYVUBxcjGUxgF8plA2/CQ0shxZMYq8NdYq5HJ/pKVLH1TuInqudRGu1PK1wXGokT3xteMpIJCIoYGuxZbyafZyEoKsB2U0qaxpss6WNsSex1qe8Ts2MK89qXlW3i2ru0hQk0mE/TvBYodygpnWQT5MrtMSVzEKtsAHKhaZWIjYsU7guSqoXJhW5F1kUVyrQwExdAmGiylkrXj8pBRlDpO8JjFo4bf5KlJqWC2rhynWt0dpmzgeh+fa+02+6Ca5UFMRNpsreXwer32tz+11LRyqi9tgFes8HkaInEdXX9gjAVu02yEM2RdQ5KIpbzJ1T6V4k8poaQcIfVNeMh9Nx9kg3LrDLbpf9D9iFBJquiERQtd5gbZRlNqLmnkqp0zXbjJUW6UE5jNj1jNiOwdG79w76Bd6Ztz/ALMgf7N3B3/EgFcNzchLmn0kp2SHY7s7F/A/pP8AxJ7GjhX7qhjqiN5eBsYRk/1Oabf/AFKidV0zdV1Wyzg173Xxa0nxZ623j9Aj9Ka7eXPbe1rgji2SLdzwjNM03duDnOJkdve5o2A5uRm+Mj9EW9xuupXmtT4fI7U1/t+myK6c/E81XSipCghdG8CIbnkg3IuAfdUmjxveQC5pBfueSAA4m27ZtxbFr8Eg296qHwjBYj1DdzY/b5Z6Iap8LyQnex29t+21w+gx+lkySCSrItdFodI6QgvNe8m3HtjAA+ZceKGEWdILjuuM9kPJormm/ITKjrmn0M9cgwbH0M/+R/Q/+kXd7dU2ZBjLg4+wsPoM2HzJVtkYIwFVl08BtoFe8KUMBCBnjIORhVWoUtshCfh2uGUT49wwseSMxu2lTkNM69wcdkcIHEI/8BsNxwjmU9xdVQ3bhcRakqulI5F0lq6Yc2wriupx2UnrAAuAia31ZUg0l8URAuEQKAvIJWUDwnUVlV1k+1HyhIzswtz3JXyueAtNPk8w5StNqpCluYF0YQDlBVWondjphNdZoT5ZIBuBghSFBIZHWITpxvyVzcLNYqC8ZU9MwqrqKTlJKuIApsFNaAFBKUeUucmEwkixdAuaXcZVtoJXIfzF8XT8OexWJmFNJOERAbFcQxH6fS3IT3kAZRKn0qQBq6Q1W59l3pdLuzCCp6ZzZiTwAVi2xxcVIGUw0HUfJq2tIuyceU8dPVwf87pXqdMaeZ8R4a4ge7fyn9EPqRs9hBsRI037eoZVV4qi/EOJJ2eWAGEgeu4BLieovhWW/pFrS8PnMZPZTDZl3bKlW8g2PIwujZlzo1us1CaCRbCRLROvpqUvyirHtIATPzgioIC8t3DkiwJO/wCtuAk+mO3vzkNG63c9B/nZPqKfa/cef5SpG7TSs6Zo1LHOcLb2OQSO4KstPo2gAOJzzfOVR0lEwNGxQtJqZHvc5Vl4bnz7Junc0nbSpa6ORjdxKfUpDOeE0ZIxwthTGr14Z1Smm12x5V72lrDRWUNE+du8Jp4rpTCwzR5aD6wM2ucu/uk9B4g3W9QOPf8AkKgbXNlicx2Q4EEd7jK8lk3QyuZn0PcP+LiL/ZVNQ4tcHsOD0Wp4bpfOY5khy3jjj6XjjmuML1aoqd8TrHO02+dlAHxkYzaRn1CdaHqG5h/9p/ZST6Nsh9X+YQunJpwKxPFNKGUDyCVcaN4jhmwHjPQp3uAFxwvLafw+0P3NeW/LlPjXywNFnb2+65+qHJCxQC1P9SnFioDVaq7iqt8wnj3A2NlF1lG8E3vyrTQKtcwglaw1VkZHqZ4CVvhITDw/Rb3LPliDzacu4pJJe6rPDuilgF040fSgAMJ5IxsbVYh0tCylFKdShAjIPZedPY2JztvNyrHWqsvuG/qoeuFrpco3HC5A1WochKZZCSiXRkm65SwqGgA5XFCzSeldNDZucBblfY2XwVQ6HRNBvZWWHBCmsIr/AEAHovqpY34CxEhteINhyn2kUYuEoi5+qpdKYg1UhDUbG2VW6ZENtkDrdIGDcOuEXRPsEF4gqLhoWHE53m0muApSk9K6WRrWi/qHYcZ6q21vU4IYGMmIcQ0YO2/Y57qA1c4+q+y0QdEx2C7bwet/fut2NtsGUcC11Wjic+8W+NxztcQ498+yUTyyRn1s+o4TOspSSZCSXWFz14sLfouY1DG2Rt2nqf5VloIHdWA5zeDX4QEeoA9CmtNpz3/mAH1JQhoGF4cwi32VJpjLJMsjW1tQSaqUYJ+yymoGwg2JJda5Pte1h05XREalwD2Nj9UGHqg8km16zwWe9K2zkE/m/wB0RDKWm6ptP8RCNqk9yxCLBsLXljjnFPVJreveaBtOUuhreM2ylt1l0JG7JRRRxsZsbwr3QNQvYXQU+j+fVzk4YHc/1PIFgLc5uT8lPUVY5nwgp/RajsgL3H1vJIb+a7uBbpgKJZXBgaBZtee8Vkk0huE+p/pHfPUfgH391ypz5LJAel2c3zfaRfqhqRwKFqXOIAPu4+5K7UsRV6CP05XnPGNX5ku0G9uCe5xZTaONbVMd22XSmGF3mjwrD42VwsdriSo6fVvKJYL4QY1t7zkY+676uwCW5CWiTKr7HOCbsxYwmheHC6deGLD5qXklxYJz4bkIIQNaRym3heq0lQGt+iBqasyGwOEvikLhkrWSoDBYJplsV0Qkrnq8jY2G3PdRdWb5TLxDW3ba/JSQy4GVzXNLkPRbeSFpNCLIqNhsh5D3TJIg7hCHoBkWU7051jZKoyLppQkXygDSwJu4EKjjOAsXOOQWC+ILQWvIYzlUml1IFlL7somnqbJs0W9tJrTRV02uACD1Ko3AfJTwrymdS70j5BZ3s/luBROdYSPUHEmyoael9ABbiwz9Oinnjk9yB91W7bAXNrD6cLSGAE7TDlAV1PtadjS69rZH7Ker5WnkEEciyoPMl3fG1wzjsQEkq6Z2HHIN7i30BT2qwUHp0BDg29ruvb2VdSCylXyGIh1uLc+6dUGuMOHYP2VbUtc47hkKpLzSdzAPaWnqkjnFjtruR9x3CcMma4XBQOobXixwRweoVVtDnhW9BrTpnG/0lD+at/OS55c33HcZXIz/ACTPKvhekj8RjcLaQU0M64yVoCWukJ6r6Gs8p7iSXAY7DPbqiEIHKranxgMFNOVoauocSdxFzawJA9hYKn0mnJDXE4Dy6wyHejBPvdx/RTVLI5w2s3ZGccfVWfhPTWMbIJXPBI3AAZuxpOG88Xx1xZWHgAYAC8g553bic9+t/Hm1Q0emBwDjn2Rx0sAcW+SFo2XAIdub+Ug4ITVjcKq3UAnIQ+UawUFDDYoqcWC+uwgdRrmhvOVLq5DlLbGCFI+JxZwPuktO25TbW5/MGO656dp7nGwH1V3QtbRLl0riG0FzjpC42Auq3Q9L2NuVvRUDYm3PK5zajdzYxje4NB7E4BKpag3JTVzCdtlMJtSa308WSSr1IG9jdINRfKyRzH3BB/X3HcLm3PJVd4PVHS611QX3QVJG8u9kY04wiqbAQ7w0KNuVtPWFjOEHFWh2Cu+qSi1lNNm9RVmJzyLtC9gCb1cRBuETQ1NviS+kY95AuLe6dPoBbkK212/BCWcIhupN7rEodCe6+qfLCJIqqla/IwUCISDYrFil2EbUbSUt3N+aZ6i+wWLFTky8Wj6JVK2xjHdwP3VbUgbb2zt4v2BssWJ7f0q1p0rqQJGs2PLS+w4Gdpub4/lCVMV3D1H1HaP+JJx9FixP6J6DbTCf0XsG8YshqrRHsyCCF9WJLpHNdQVOU+soOGrfGcEhNafWN2Hj6rFia+NrhZCUicOyPugqt7W/NYsVaMeqlG0WuEWmSSZwAvj6JzMOdj2X1Yj8126lzsDCoNGpI5cgFu2wIBNrjqqOmpZmu3RTWJ/K5o2kDphYsVHUyPa8tBwiw43SJptUdDMPPjbG159ez1McekjW8tf37qra5paHNO5p4OR9isWILyFHWkPUvwpfVASSFixSeURSyjofMk23xdPP9Rji9EbC8jH9Iv8AMrFisMJohIkNIV/iEbgJGWB6tN7fQgLrqDA10bweHMdf68/dYsUuAAwpY4kEFfNd07fEXD4o72vyWNy4X/a/ZTIsALnlYsRahg3KGH0r4+Wy708xPC+rFUeBttOHC6zQ35SWtpNpusWItLlCULHO7i5TOOKRww8rFifKaqlwaCvjYTbLisWLEwDCil//2Q==',
                                        width: 300,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: Text(
                                      'Tomatoes',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 0, 0),
                                    child: Text(
                                      '160/kg',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.43,
                            decoration: BoxDecoration(
                              color: Color(0xFF2A7E27),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxdExY-6yCMaJETuhv-Pz5om0dsUPbG39k6Q&usqp=CAU',
                                        width: 300,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: Text(
                                      'Sweet corns',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 0, 0),
                                    child: Text(
                                      '50/kg',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.43,
                            decoration: BoxDecoration(
                              color: Color(0xFF2A7E27),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwl4Ef22w5AVEejfxHJUUu9uLV7_hF7LifFw&usqp=CAU',
                                        width: 300,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: Text(
                                      'Brinjals',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 0, 0),
                                    child: Text(
                                      '30/kg',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.43,
                            decoration: BoxDecoration(
                              color: Color(0xFF2A7E27),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        'https://villagevasi.com/wp-content/uploads/2021/10/benefits-of-guava.jpeg',
                                        width: 300,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: Text(
                                      'guava',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 0, 0),
                                    child: Text(
                                      '100/kg',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.43,
                            decoration: BoxDecoration(
                              color: Color(0xFF2A7E27),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUFgzh-M1s5gf5ssNEfYQn2palxmNgY3Z-pg&usqp=CAU',
                                        width: 300,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: Text(
                                      ' ground nuts oil',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 0, 0),
                                    child: Text(
                                      '70/liter',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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

class HomeStoreModel extends FlutterFlowModel {
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
