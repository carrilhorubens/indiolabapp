import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PgAddUsersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for usr_codigo widget.
  TextEditingController? usrCodigoController;
  String? Function(BuildContext, String?)? usrCodigoControllerValidator;
  // State field(s) for usr_nome widget.
  TextEditingController? usrNomeController;
  String? Function(BuildContext, String?)? usrNomeControllerValidator;
  // State field(s) for usr_email widget.
  TextEditingController? usrEmailController;
  String? Function(BuildContext, String?)? usrEmailControllerValidator;
  // State field(s) for usr_imagem widget.
  TextEditingController? usrImagemController;
  String? Function(BuildContext, String?)? usrImagemControllerValidator;
  // State field(s) for usr_senha widget.
  TextEditingController? usrSenhaController;
  late bool usrSenhaVisibility;
  String? Function(BuildContext, String?)? usrSenhaControllerValidator;
  // State field(s) for usr_confirma widget.
  TextEditingController? usrConfirmaController;
  late bool usrConfirmaVisibility;
  String? Function(BuildContext, String?)? usrConfirmaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    usrSenhaVisibility = false;
    usrConfirmaVisibility = false;
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    unfocusNode.dispose();
    usrCodigoController?.dispose();
    usrNomeController?.dispose();
    usrEmailController?.dispose();
    usrImagemController?.dispose();
    usrSenhaController?.dispose();
    usrConfirmaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
