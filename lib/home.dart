import 'dart:math';

import 'package:flutter/material.dart';
import 'package:letroso_app/jogo.dart';

const Color C_light_select = Color.fromARGB(255, 102, 122, 86);
const Color C_light_not_select = Color.fromARGB(255, 113, 124, 113);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  TextEditingController _user = TextEditingController();
  String _selectedDifficulty = 'Fácil';
  int _numberOfLetters = 5;
  List<String> _wordList = [
  "DOCEU", "VENTO", "FLORIR", "CASAS", "BRISA",
  "CAMINH", "AMIGOS", "CIDADE", "SORRIS", "GALHOS",
  "PLANETA", "CORAGEM", "HISTORIA", "AMIZADE", "VITORIA",
  "LIBERDAD", "AMIZADES", "FANTASIA", "FLORISTA", "BRASILE",
  "ESPERANCA", "LIBERDADE", "SOLIDARIO", "HARMONIA", "NATUREZA",
  "IMAGINACAO", "HONESTIDAD", "PROSPERIDA", "CURIOSIDAD", "RESPONSABI"
];
  String wordChoice = "";
  Random random = Random();

  void _register(){
    print("Nome: ${_user.text}");
  }

  Widget _gerenciador_textos(String texto,double x){
    return (Text(
      texto,
      style: TextStyle(
        color: Colors.white,
        fontSize: x),));
  }

  
  Widget _buttonRadioDifficulty(String difficulty){
    return RadioListTile<String>(
      value: difficulty,
      groupValue: _selectedDifficulty,
      fillColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.selected)) {
              return C_light_select;
            }
            return C_light_not_select;
          }),
      onChanged: (String? value){
        if(value == null) return;
        setState((){
          _selectedDifficulty = value;
        });
      },
      activeColor: C_light_select,
      title: Text(
        difficulty,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }

  String _randomWord(List<String> wordList,int num_Letters){
  String palavra = "";
  int i = random.nextInt(wordList.length);
  while(num_Letters != wordList[i].length){
    i = random.nextInt(wordList.length);
  }
  return wordList[i];
}

  Widget _buttonRadioNumberLetters(int numOfLetters) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio<int>(
        value: numOfLetters,
        groupValue: _numberOfLetters,
          fillColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.selected)) {
              return C_light_select;
            }
            return C_light_not_select;
          }),
        onChanged: (val) {
          if (val == null) return;
          setState(() => _numberOfLetters = val);
          print(val);
        },
        activeColor: C_light_select,
      ),
      Text(
        '$numOfLetters',
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      ]);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true ,
        title: Text("Letroso",style: TextStyle(color: const Color.fromARGB(255, 211, 206, 206)),textAlign: TextAlign.center,),
        backgroundColor: C_light_select,
      ),
      body: Container(
        color: const Color.fromARGB(255, 70, 67, 67),
        child: Center(
          child: Container(
            child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20,),
                child: _gerenciador_textos("Digite seu apelido:",20)),
                SizedBox(
                  width: 300,
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.white70, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: C_light_select, width: 2),
                      ),),
                      style: TextStyle(color: Colors.white,fontSize: 50),
                      cursorColor: Colors.white,
                      maxLength: 10,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.center,
                      controller: _user,
                    )
                  )
                ),

              Padding(
                padding: EdgeInsetsGeometry.only(top: 20),
                child: _gerenciador_textos("Escolha a dificuldade:", 20),),
              Container(
                child: Center(
                  child: SizedBox(
                    width: 120,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.only(top: 5,bottom: 5),
                          child: _buttonRadioDifficulty("Fácil"),),
                        Padding(
                          padding: EdgeInsetsGeometry.only(top: 5,bottom: 5),
                          child: _buttonRadioDifficulty("Médio"),),
                        Padding(
                          padding: EdgeInsetsGeometry.only(top: 5,bottom: 5),
                          child: _buttonRadioDifficulty("Difícil"),),  
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 20),
                child: _gerenciador_textos("Escolha o numero de caracteres:", 20),),
              Padding(padding: EdgeInsetsGeometry.only(top: 20),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
              Padding(
                padding: EdgeInsetsGeometry.only(top: 20),
                child: _buttonRadioNumberLetters(5),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 20),
                child: _buttonRadioNumberLetters(6),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 20),
                child: _buttonRadioNumberLetters(7),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 20,),
                child: _buttonRadioNumberLetters(8),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 20),
                child: _buttonRadioNumberLetters(9),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 20),
                child: _buttonRadioNumberLetters(10),
              ),

                ],
              ),)
            ),
              
              Padding(padding: EdgeInsetsGeometry.only(top: 40),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: C_light_select
                  ),
                  onPressed: (){
                    wordChoice = _randomWord(_wordList, _numberOfLetters);
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Jogo(_user.text,_selectedDifficulty,wordChoice,_numberOfLetters)));
                  }, 
                  child: Text(
                    "Iniciar",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 50),
                  )
                ))
            ]
          )
          ),
        ),
      ),
    );
  }
}