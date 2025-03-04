import 'package:flutter/material.dart';
import 'package:flash_chat_new/screens/welcome_screen.dart';
import 'package:flash_chat_new/screens/login_screen.dart';
import 'package:flash_chat_new/screens/registration_screen.dart';
import 'package:flash_chat_new/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main()async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context)=> WelcomeScreen(),
        RegistrationScreen.id: (context)=> RegistrationScreen(),
        LoginScreen.id: (context)=> LoginScreen(),
        ChatScreen.id: (context)=> ChatScreen(),
      },
    );
  }
}
