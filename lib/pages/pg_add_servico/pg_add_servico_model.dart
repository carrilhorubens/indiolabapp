import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PgAddServicoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for ser_codigo widget.
  TextEditingController? serCodigoController;
  String? Function(BuildContext, String?)? serCodigoControllerValidator;
  // State field(s) for ser_nome widget.
  TextEditingController? serNomeController;
  String? Function(BuildContext, String?)? serNomeControllerValidator;
  // State field(s) for ser_descricao widget.
  TextEditingController? serDescricaoController;
  String? Function(BuildContext, String?)? serDescricaoControllerValidator;
  // State field(s) for ser_valor widget.
  TextEditingController? serValorController;
  String? Function(BuildContext, String?)? serValorControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    unfocusNode.dispose();
    serCodigoController?.dispose();
    serNomeController?.dispose();
    serDescricaoController?.dispose();
    serValorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
