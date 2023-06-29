import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PgEditProdutoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for pro_categoria widget.
  String? proCategoriaValue;
  FormFieldController<String>? proCategoriaValueController;
  // State field(s) for pro_nome widget.
  TextEditingController? proNomeController;
  String? Function(BuildContext, String?)? proNomeControllerValidator;
  // State field(s) for pro_descricao widget.
  TextEditingController? proDescricaoController;
  String? Function(BuildContext, String?)? proDescricaoControllerValidator;
  // State field(s) for pro_logo widget.
  TextEditingController? proLogoController;
  String? Function(BuildContext, String?)? proLogoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    proNomeController?.dispose();
    proDescricaoController?.dispose();
    proLogoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
