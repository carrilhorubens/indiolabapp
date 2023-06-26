import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PgAddGrupoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for gru_nome widget.
  TextEditingController? gruNomeController;
  String? Function(BuildContext, String?)? gruNomeControllerValidator;
  // State field(s) for gru_descricao widget.
  TextEditingController? gruDescricaoController;
  String? Function(BuildContext, String?)? gruDescricaoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    gruNomeController?.dispose();
    gruDescricaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
