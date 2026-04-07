import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const supabaseUrl = String.fromEnvironment('SUPABASE_URL');
  assert(supabaseUrl.isNotEmpty, 'SUPABASE_URL must be set');

  const supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY');
  assert(supabaseAnonKey.isNotEmpty, 'SUPABASE_ANON_KEY must be set');

  final supabase = await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);

  GoogleFonts.config.allowRuntimeFetching = false;

  runApp(
    MainApp(
      supabaseClient: supabase.client,
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.supabaseClient});

  final SupabaseClient supabaseClient;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<SupabaseClient>.value(
      value: supabaseClient,
      child: MaterialApp(
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,

        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: Center(
            child: Text('Hello World!'),
          ),
        ),
      ),
    );
  }
}
