import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? roundUp(
  double valorDouble,
  int valorFator,
) {
  double paramDouble;
  int paramFator;
  if ((valorDouble == null || valorFator == null) ||
      (valorDouble == 0.0 || valorFator == 0)) {
    return null;
  } else {
    paramDouble = valorDouble;
    paramFator = valorFator;
    Intl.defaultLocale = 'pt_BR';
    double valorCalculado = paramDouble * paramFator;
    int resultado = valorCalculado.round();
    var f = NumberFormat("#,###.00#", "pt_BR");
    return f.format(resultado);
  }
}
