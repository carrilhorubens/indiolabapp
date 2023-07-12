import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PgAddUsuarioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for usr_codigo widget.
  TextEditingController? usrCodigoController;
  String? Function(BuildContext, String?)? usrCodigoControllerValidator;
  String? _usrCodigoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Insira no mínimo 2 caracteres';
    }
    if (val.length > 6) {
      return 'Insira no máximo 6 caracteres';
    }

    return null;
  }

  // State field(s) for usr_nome widget.
  TextEditingController? usrNomeController;
  String? Function(BuildContext, String?)? usrNomeControllerValidator;
  String? _usrNomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 4) {
      return 'Insira no mínimo 4 caracteres';
    }
    if (val.length > 64) {
      return 'Insira no máximo 64 caracteres';
    }

    return null;
  }

  // State field(s) for usr_email widget.
  TextEditingController? usrEmailController;
  String? Function(BuildContext, String?)? usrEmailControllerValidator;
  String? _usrEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'Insira no mínimo 10 caracteres';
    }
    if (val.length > 64) {
      return 'Insira no máximo 64 caracteres';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for usr_imagem widget.
  TextEditingController? usrImagemController;
  String? Function(BuildContext, String?)? usrImagemControllerValidator;
  // State field(s) for usr_senha widget.
  TextEditingController? usrSenhaController;
  late bool usrSenhaVisibility;
  String? Function(BuildContext, String?)? usrSenhaControllerValidator;
  String? _usrSenhaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 4) {
      return 'Insira no mínimo 4 caracteres';
    }
    if (val.length > 12) {
      return 'Insira no máximo 12 caracteres';
    }

    return null;
  }

  // State field(s) for usr_confirma widget.
  TextEditingController? usrConfirmaController;
  late bool usrConfirmaVisibility;
  String? Function(BuildContext, String?)? usrConfirmaControllerValidator;
  String? _usrConfirmaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 4) {
      return 'Insira no mínimo 4 caracteres';
    }
    if (val.length > 12) {
      return 'Insira no máximo 12 caracteres';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    usrCodigoControllerValidator = _usrCodigoControllerValidator;
    usrNomeControllerValidator = _usrNomeControllerValidator;
    usrEmailControllerValidator = _usrEmailControllerValidator;
    usrSenhaVisibility = false;
    usrSenhaControllerValidator = _usrSenhaControllerValidator;
    usrConfirmaVisibility = false;
    usrConfirmaControllerValidator = _usrConfirmaControllerValidator;
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
