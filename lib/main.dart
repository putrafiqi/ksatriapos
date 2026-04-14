import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ksatriapos/core/core.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const supabaseUrl = String.fromEnvironment('SUPABASE_URL');

  const supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY');

  final supabase = await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);

  GoogleFonts.config.allowRuntimeFetching = false;

  runApp(MainApp(supabaseClient: supabase.client));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.supabaseClient});

  final SupabaseClient supabaseClient;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (context) => context.l10n.appName,
      home: const Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
