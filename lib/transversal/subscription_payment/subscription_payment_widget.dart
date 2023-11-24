import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/stripe/payment_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'subscription_payment_model.dart';
export 'subscription_payment_model.dart';

class SubscriptionPaymentWidget extends StatefulWidget {
  const SubscriptionPaymentWidget({Key? key}) : super(key: key);

  @override
  _SubscriptionPaymentWidgetState createState() =>
      _SubscriptionPaymentWidgetState();
}

class _SubscriptionPaymentWidgetState extends State<SubscriptionPaymentWidget> {
  late SubscriptionPaymentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubscriptionPaymentModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault(currentUserDocument?.plan, 0) != 0) {
        if (FFAppState().changePlan) {
          setState(() {
            _model.plan = 1;
          });
        } else {
          if (currentUserDocument?.role != null) {
            context.pushNamed('ListUsers');
          } else {
            context.pushNamed('Home');
          }
        }
      } else {
        setState(() {
          _model.plan = 1;
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                  child: Text(
                    'Subscription / Payment',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).secondary,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                  child: Text(
                    'Your Subscription',
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: Color(0x34111417),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              unselectedWidgetColor: Color(0xFF95A1AC),
                            ),
                            child: CheckboxListTile(
                              value: _model.monthValue ??= _model.plan == 1,
                              onChanged: (newValue) async {
                                setState(() => _model.monthValue = newValue!);
                                if (newValue!) {
                                  setState(() {
                                    _model.plan = 1;
                                    _model.amount = 1000;
                                  });
                                }
                              },
                              title: Text(
                                'Monthly',
                                style: FlutterFlowTheme.of(context).labelSmall,
                              ),
                              subtitle: Text(
                                '\$10 USD/mo',
                                style:
                                    FlutterFlowTheme.of(context).headlineMedium,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: Colors.white,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 24.0, 0.0),
                            child: Text(
                              'Gain unlimited access to all the content we have to offer! ',
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                  child: Text(
                    'Other Offers',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFFFF2CFF),
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: Color(0x34111417),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: CheckboxListTile(
                              value: _model.yearValue ??= _model.plan == 2,
                              onChanged: (newValue) async {
                                setState(() => _model.yearValue = newValue!);
                                if (newValue!) {
                                  setState(() {
                                    _model.plan = 2;
                                    _model.amount = 10000;
                                  });
                                }
                              },
                              title: Text(
                                'Annual (save \$20)',
                                style: FlutterFlowTheme.of(context).labelSmall,
                              ),
                              subtitle: Text(
                                '\$100 USD/yr',
                                style:
                                    FlutterFlowTheme.of(context).headlineMedium,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: Colors.white,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 24.0, 0.0),
                            child: Text(
                              'Gain unlimited access to all the content we have to offer! ',
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: Color(0x34111417),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                        child: CheckboxListTile(
                          value: _model.freeValue ??= false,
                          onChanged: (newValue) async {
                            setState(() => _model.freeValue = newValue!);
                            if (newValue!) {
                              setState(() {
                                _model.plan = 0;
                                _model.amount = 1000;
                              });
                            }
                          },
                          title: Text(
                            'Free Limited Access',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  lineHeight: 1.5,
                                ),
                          ),
                          subtitle: Text(
                            'Continue with limited access at no cost. Create short poems',
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          activeColor: FlutterFlowTheme.of(context).primary,
                          checkColor: Colors.white,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              if ((_model.plan == 0) ||
                                  (_model.plan ==
                                      valueOrDefault(
                                          currentUserDocument?.plan, 0))) {
                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  plan: _model.plan,
                                ));
                              } else {
                                final paymentResponse =
                                    await processStripePayment(
                                  context,
                                  amount: _model.amount,
                                  currency: 'USD',
                                  customerEmail: currentUserEmail,
                                  customerName: currentUserDisplayName,
                                  description: 'Story Suscription',
                                  allowGooglePay: false,
                                  allowApplePay: false,
                                );
                                if (paymentResponse.paymentId == null &&
                                    paymentResponse.errorMessage != null) {
                                  showSnackbar(
                                    context,
                                    'Error: ${paymentResponse.errorMessage}',
                                  );
                                }
                                _model.paymentId =
                                    paymentResponse.paymentId ?? '';

                                if (!(_model.paymentId == null ||
                                    _model.paymentId == '')) {
                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    plan: _model.plan,
                                  ));
                                  setState(() {
                                    FFAppState().changePlan = false;
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Success',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                }
                              }

                              context.goNamed('Home');

                              setState(() {});
                            },
                            text: 'Select Plan',
                            options: FFButtonOptions(
                              width: 270.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 18.0,
                                  ),
                              elevation: 2.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
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
