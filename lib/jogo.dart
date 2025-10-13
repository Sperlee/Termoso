import 'package:flutter/material.dart';
import 'package:letroso_app/home.dart';

class Jogo extends StatefulWidget {
  
  String _user = "",_dificulty = "";
  int _numLetters = 5;
  Jogo(String user,String dificulty,int letters){
    this._user = user;
    this._dificulty = dificulty;
    this._numLetters = letters;
  }

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  List<String> _voidWord = ["","","","","","","","","",""];
  String _wordChoice = "word5";
  List<String> _wordUserTest = ["","","","","","","","","",""];
  int _cont = 0;
  Color _KeyboardColorButton = Color.fromARGB(74, 85, 95, 77);

  Widget _letterWorld(int letters,String char){
    return Container(
          color: const Color.fromARGB(74, 85, 95, 77),
          child: SizedBox(
          width: 500/letters,
          height: 500/letters,
          child:Center(
            child: Text(char,style: TextStyle(fontSize: 50- 2*letters.toDouble(),color: Colors.white),)
          ) 
        ),
        );
  }


  Widget _WorldFive(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsetsGeometry.only(top: 50),
        child: _letterWorld(widget._numLetters,_voidWord[0])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[1])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[2])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[3])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[4])),
      ],
    );
  }

  Widget _WorldSix(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsetsGeometry.only(top: 50),
        child: _letterWorld(widget._numLetters,_voidWord[0])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[1])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[2])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[3])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[4])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[5])),
      ],
    );
  }

  Widget _WorldSeven(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsetsGeometry.only(top: 50),
        child: _letterWorld(widget._numLetters,_voidWord[0])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[1])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[2])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[3])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[4])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[5])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[6])),
      ],
    );
  }
  Widget _WorldEight(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsetsGeometry.only(top: 50),
        child: _letterWorld(widget._numLetters,_voidWord[0])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[1])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[2])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[3])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[4])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[5])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[6])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[7])),
      ],
    );
  }
  Widget _WorldNine(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsetsGeometry.only(top: 50),
        child: _letterWorld(widget._numLetters,_voidWord[0])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[1])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[2])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[3])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[4])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[5])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[6])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[7])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[8])),
      ],
    );
  }
  Widget _WorldTen(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsetsGeometry.only(top: 50),
        child: _letterWorld(widget._numLetters,_voidWord[0])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[1])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[2])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[3])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[4])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[5])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[6])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[7])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[8])),
        Padding(padding: EdgeInsetsGeometry.only(top: 50,left: 10),
        child: _letterWorld(widget._numLetters,_voidWord[9])),
      ],
    );
  }

  Widget _ChoiceNumLetters(int num,Widget _W5,Widget _W6,Widget _W7,Widget _W8,Widget _W9,Widget _W10){
    if(num == 5) return _W5;
    if(num == 6) return _W6;
    if(num == 7) return _W7;
    if(num == 8) return _W8;
    if(num == 9) return _W9;
    if(num == 10) return _W10;

    return _W5;
  }

  void _writesWord(String char){
    int i = _cont;
    while(i < widget._numLetters && _voidWord[i] != ""){
      i++;
    }
    if(i < widget._numLetters){
      setState(() {
        _voidWord[i] = char;
        _cont = i + 1;
      });
    }
  }

  void _wordDelet(){
    if(_cont <= 0) return;
    setState(() {
      _cont = _cont - 1;
      _voidWord[_cont] = "";
    });
  }

  void _compareWord(int cont,int size,List<String> wordTest,List<String> trueWord){
    if(size == cont){

    }
  }

  Widget _ButtonKeyboard(String char){
    if(char == "DELETE" || char == "ENTER"){
      return Container(
          color: const Color.fromARGB(74, 85, 95, 77),
          child: SizedBox(
          width: 100,
          height: 50,
          child:Center(
            child: TextButton(onPressed: (){
              if(char == "DELETE"){
                _wordDelet();
                print(_cont);
              }
              else{

              }
              setState(() {});
            }, child: Text(char,style: TextStyle(color: Colors.white,fontSize: 20),))
          ) 
        ),
        );
    }
    return Container(
          color: _KeyboardColorButton,
          child: SizedBox(
          width: 50,
          height: 50,
          child:Center(
            child: TextButton(onPressed: (){
              _writesWord(char);
              print(_voidWord);
              print(_cont);
              setState(() {});}, 
            child: Text(char,style: TextStyle(color: Colors.white,fontSize: 20),))
          ) 
        ),
        );
  }

  Widget _keyboardTop(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("Q"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("W"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("E"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("R"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("T"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("Y"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("U"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("I"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("O"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("P"),),
        
      ],
    );
  }

  Widget _keyboardMid(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("A"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("S"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("D"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("F"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("G"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("H"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("J"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("K"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("L"),),  
      ],
    );
  }

  Widget _keyboardBottom(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("Z"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("X"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("C"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("V"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("B"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("N"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("M"),),
      ],
    );
  }
  Widget _keyboardDelEnt(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5),
        child: _ButtonKeyboard("DELETE"),),
        Padding(padding: EdgeInsetsGeometry.only(top: 10,left: 5,right: 5),
        child: _ButtonKeyboard("ENTER"),)
      ]
    );
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
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
        _ChoiceNumLetters(widget._numLetters, _WorldFive(), _WorldSix(), _WorldSeven(), _WorldEight(), _WorldNine(), _WorldTen()),
        Container(
          child: Column(
            children: [
              _keyboardTop(),
              _keyboardMid(),
              _keyboardBottom(),
              _keyboardDelEnt()
            ],
          ),
        )
      ],),
      )
      
    );
  }
}