import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://vjxcfhppguforgcaahzk.supabase.co';
const supabaseAnonKey = sb_publishable_S__ey70hlPjLlv6o0dmJNg_xIcy8qKB

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
  } catch (_) {}
  runApp(const UniChatApp());
}

class UniChatApp extends StatelessWidget {
  const UniChatApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniChat Blue
