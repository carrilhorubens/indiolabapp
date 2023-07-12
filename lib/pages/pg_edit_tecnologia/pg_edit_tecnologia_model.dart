import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PgEditTecnologiaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for tec_material widget.
  String? tecMaterialValue;
  FormFieldController<String>? tecMaterialValueController;
  // State field(s) for tec_codigo widget.
  TextEditingController? tecCodigoController;
  String? Function(BuildContext, String?)? tecCodigoControllerValidator;
  // State field(s) for tec_nome widget.
  TextEditingController? tecNomeController;
  String? Function(BuildContext, String?)? tecNomeControllerValidator;
  // State field(s) for tec_descricao widget.
  TextEditingController? tecDescricaoController;
  String? Function(BuildContext, String?)? tecDescricaoControllerValidator;
  // State field(s) for tec_valor widget.
  TextEditingController? tecValorController;
  String? Function(BuildContext, String?)? tecValorControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    tecCodigoController?.dispose();
    tecNomeController?.dispose();
    tecDescricaoController?.dispose();
    tecValorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
