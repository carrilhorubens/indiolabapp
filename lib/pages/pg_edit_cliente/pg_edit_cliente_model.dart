import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PgEditClienteModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for cli_razaosocial widget.
  TextEditingController? cliRazaosocialController;
  String? Function(BuildContext, String?)? cliRazaosocialControllerValidator;
  // State field(s) for cli_cnpj widget.
  TextEditingController? cliCnpjController;
  final cliCnpjMask = MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)? cliCnpjControllerValidator;
  // State field(s) for cli_ie widget.
  TextEditingController? cliIeController;
  String? Function(BuildContext, String?)? cliIeControllerValidator;
  // State field(s) for cli_endereco widget.
  TextEditingController? cliEnderecoController;
  String? Function(BuildContext, String?)? cliEnderecoControllerValidator;
  // State field(s) for cl_cep widget.
  TextEditingController? clCepController;
  final clCepMask = MaskTextInputFormatter(mask: '##.###-###');
  String? Function(BuildContext, String?)? clCepControllerValidator;
  // State field(s) for cli_caixapostal widget.
  TextEditingController? cliCaixapostalController;
  String? Function(BuildContext, String?)? cliCaixapostalControllerValidator;
  // State field(s) for cli_cidade widget.
  TextEditingController? cliCidadeController;
  String? Function(BuildContext, String?)? cliCidadeControllerValidator;
  // State field(s) for cli_uf widget.
  String? cliUfValue;
  FormFieldController<String>? cliUfValueController;
  // State field(s) for cli_email widget.
  TextEditingController? cliEmailController;
  String? Function(BuildContext, String?)? cliEmailControllerValidator;
  // State field(s) for cli_telefone widget.
  TextEditingController? cliTelefoneController;
  final cliTelefoneMask = MaskTextInputFormatter(mask: '(##) ####-####');
  String? Function(BuildContext, String?)? cliTelefoneControllerValidator;
  // State field(s) for cli_celular widget.
  TextEditingController? cliCelularController;
  final cliCelularMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? cliCelularControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    cliRazaosocialController?.dispose();
    cliCnpjController?.dispose();
    cliIeController?.dispose();
    cliEnderecoController?.dispose();
    clCepController?.dispose();
    cliCaixapostalController?.dispose();
    cliCidadeController?.dispose();
    cliEmailController?.dispose();
    cliTelefoneController?.dispose();
    cliCelularController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
