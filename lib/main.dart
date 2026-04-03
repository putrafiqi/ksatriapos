import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const supabaseUrl = String.fromEnvironment('SUPABASE_URL');
  assert(supabaseUrl.isNotEmpty, 'SUPABASE_URL must be set');

  const supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY');
  assert(supabaseAnonKey.isNotEmpty, 'SUPABASE_ANON_KEY must be set');

  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
