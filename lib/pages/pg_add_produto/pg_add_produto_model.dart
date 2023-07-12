import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PgAddProdutoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for pro_nome widget.
  TextEditingController? proNomeController;
  String? Function(BuildContext, String?)? proNomeControllerValidator;
  // State field(s) for pro_descricao widget.
  TextEditingController? proDescricaoController;
  String? Function(BuildContext, String?)? proDescricaoControllerValidator;
  // State field(s) for pro_logo widget.
  TextEditingController? proLogoController;
  String? Function(BuildContext, String?)? proLogoControllerValidator;
  // State field(s) for pro_valor widget.
  TextEditingController? proValorController;
  String? Function(BuildContext, String?)? proValorControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    unfocusNode.dispose();
    proNomeController?.dispose();
    proDescricaoController?.dispose();
    proLogoController?.dispose();
    proValorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
