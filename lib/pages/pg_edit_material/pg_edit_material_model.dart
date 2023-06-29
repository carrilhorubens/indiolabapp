import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PgEditMaterialModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for mat_produto widget.
  String? matProdutoValue;
  FormFieldController<String>? matProdutoValueController;
  // State field(s) for mat_codigo widget.
  TextEditingController? matCodigoController;
  String? Function(BuildContext, String?)? matCodigoControllerValidator;
  // State field(s) for mat_marcacao widget.
  TextEditingController? matMarcacaoController;
  String? Function(BuildContext, String?)? matMarcacaoControllerValidator;
  // State field(s) for mat_nome widget.
  TextEditingController? matNomeController;
  String? Function(BuildContext, String?)? matNomeControllerValidator;
  // State field(s) for mat_descricao widget.
  TextEditingController? matDescricaoController;
  String? Function(BuildContext, String?)? matDescricaoControllerValidator;
  // State field(s) for mat_valor widget.
  TextEditingController? matValorController;
  String? Function(BuildContext, String?)? matValorControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    matCodigoController?.dispose();
    matMarcacaoController?.dispose();
    matNomeController?.dispose();
    matDescricaoController?.dispose();
    matValorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
