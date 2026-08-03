import 'package:flutter/material.dart';

// A função main() é a porta de entrada do aplicativo
void main(){
  // coloca o aplicativo para funcionar.
  runApp(const MeuApp());
}
// significa que a classe está herdando as características de um StatelessWidget
class MeuApp extends StatelessWidget{
  const MeuApp({super.key});

@override
Widget build (BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Média Escolar',
    theme: ThemeData(
      colorSchemeSeed: Colors.blue,
      useMaterial3: true,
    ),
    home: MediaEscolarPage(),
  );
}
}

class   MediaEscolarPage extends StatefulWidget{
  const MediaEscolarPage ({super.key});

  @override
  State<MediaEscolarPage> createState() => _MediaEscolarPageState();
}


class _MediaEscolarPageState extends State<MediaEscolarPage>{

final TextEditingController nomeController = TextEditingController();
final TextEditingController nota1Controller = TextEditingController();
final TextEditingController nota2Controller = TextEditingController();
final TextEditingController nota3Controller = TextEditingController();

String nomeAluno = '';
String situacao = ''; //aprovado, recuperação, aprovado
double media = 0;
  
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Calculadora de Média'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.school,
              size: 80
            ),
            const SizedBox(height: 10),
            
            const Text(
              'Média Escolar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),
            )
          ],  
        ), 
      )
    );
  }
}

