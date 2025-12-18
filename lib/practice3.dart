import 'package:flutter/material.dart';

import 'custom_weidget.dart';

class calcu extends StatefulWidget {
  const calcu({super.key});

  @override
  State<calcu> createState() => _calcuState();
}

class _calcuState extends State<calcu> {
  String _output='0';
  String _input='0';
  String _operator='';
  double num1=0;
  double num2=0;
  void buttonpress(String value){
    print('value==$value');

    setState(() {
      if(value=="0")
        {
          _output='0';
           _input='0';
          _operator='';
          num1=0;
         num2=0;
        }else if(value=='='){
        num2=double.parse(_input);
        if(_operator == '+'){
          _output=(num1 + num2).toString();
        } else if(_operator=='-'){
          _output= (num1 - num2).toString();
        }else if(_operator=='*'){
          _output= (num1 * num2).toString();
        }else if(_operator=='/'){
          _output=num2!=0?(num1 / num2).toString() : "Matherror";
        }

      }
      else if(['+', '-', '*', '/'].contains(value)){
        num1=double.parse(_input);
        _operator=value;
        _input='';

      }else{
        if(_input=='0')
          {
            _input=value;
          }
        else{
          _input += value;
        }
        _output = _input;
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('$num1 $_operator $_input',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                    ),
                    ),
                    SizedBox(height: 10,),
                    Text(_output, style: TextStyle(
                      color: Colors.white,
                      fontSize: 50, fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
           Row(
             children: [
               calclator_botton_2(onClick: ()=>buttonpress('7'), text: '7',),
               calclator_botton_2(onClick: ()=>buttonpress('8'), text: '8',),
               calclator_botton_2(onClick: ()=>buttonpress('9'), text: '9',),
               calclator_botton_2(onClick: ()=>buttonpress('/'), text: '/', color: Colors.orange,),
        
             ],
           ),
            Row(
              children: [
                calclator_botton_2(onClick: ()=>buttonpress('4'), text: '4',),
                calclator_botton_2(onClick: ()=>buttonpress('5'), text: '5',),
                calclator_botton_2(onClick: ()=>buttonpress('6'), text: '6',),
                calclator_botton_2(onClick: ()=>buttonpress('*'), text: '*', color: Colors.orange,),
        
              ],
            ),
            Row(
              children: [
                calclator_botton_2(onClick: ()=>buttonpress('1'), text: '1',),
                calclator_botton_2(onClick: ()=>buttonpress('2'), text: '2',),
                calclator_botton_2(onClick: ()=>buttonpress('3'), text: '3',),
                calclator_botton_2(onClick: ()=>buttonpress('+'), text: '+', color: Colors.orange,),
        
              ],
            ),
            Row(
              children: [
                calclator_botton_2(onClick: ()=>buttonpress('0'), text: '0',),
                calclator_botton_2(onClick: () =>buttonpress('='), text: '=',),
                calclator_botton_2(onClick: ()=>buttonpress("AC"), text: 'AC',),
                calclator_botton_2(onClick: () =>buttonpress('-'), text: '-', color: Colors.orange,),
        
              ],
            ),
          ],
        ),
      ),
    );
  }
}


