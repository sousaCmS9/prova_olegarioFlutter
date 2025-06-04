import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tela de usuário',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
    backgroundImage: NetworkImage(
      'https://scontent-for2-1.xx.fbcdn.net/v/t39.30808-1/466913012_1091221149082679_6636118590893403704_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=106&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeGt-heSsYuSLdMADdscawrmySM-76op1SPJIz7vqinVI8Z77YEfrE7Sa7YMWHSFjBJU3czr3eSOew6Q1-9PeWGN&_nc_ohc=TVshg8Dbq6kQ7kNvwG4IS59&_nc_oc=AdlU_EX4GgSOKtxKmIkFIDsA7KXUIhrRxPBNawdZBCSJHlCwbZ6podkiKpVsMKEDi24&_nc_zt=24&_nc_ht=scontent-for2-1.xx&_nc_gid=81mgmftgADcWPNPl8fExBg&oh=00_AfIfZ7CBHezjamgjiJHKQi0he_J7U-ZEhCPi_vqS-2xncw&oe=684635DF',
    ),
    radius: 150,
  );
  final nome = const Text(
    'Francisco Levi',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );
  final botaoTelefone = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.phone),
    onPressed: () {
      launchUrl(Uri(scheme: 'tel', path: '9999-9999'));
    },
  );
  final botaoEmail = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.mail),
    onPressed: () {
      launchUrl(Uri(scheme: 'mailto', path: 'levisousa718@gmail.com'));
    },
  );
  final botaoSMS = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.sms),
    onPressed: () {
      launchUrl(Uri(scheme: 'sms', path: '9999-9999'));
    },
  );

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        foto,
        nome,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [botaoTelefone, botaoEmail, botaoSMS],
        ),
      ],
    ),
  );

  static void launchUrl(Uri uri) {}
}
