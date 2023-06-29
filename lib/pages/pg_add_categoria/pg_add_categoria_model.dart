import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PgAddCategoriaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for cat_grupo widget.
  String? catGrupoValue;
  FormFieldController<String>? catGrupoValueController;
  // State field(s) for cat_nome widget.
  TextEditingController? catNomeController;
  String? Function(BuildContext, String?)? catNomeControllerValidator;
  // State field(s) for cat_descricao widget.
  TextEditingController? catDescricaoController;
  String? Function(BuildContext, String?)? catDescricaoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    catNomeController?.dispose();
    catDescricaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
