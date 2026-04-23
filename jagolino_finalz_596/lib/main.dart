import 'package:flutter/material.dart';
import 'package:modelhandling/screen/chat_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://biaazuxqgcrntuclhxif.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJpYWF6dXhxZ2NybnR1Y2xoeGlmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4ODM2MzQsImV4cCI6MjA4NjQ1OTYzNH0.Cy2ruDYhTgG2Lf_rCCwAveML1gijXLfssySBsJHvkPE',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const ChatPage(username: 'MJ'), 
    );
  }
}