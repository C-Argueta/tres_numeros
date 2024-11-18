import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _numero1editcontroler = TextEditingController();
  final TextEditingController _numero2editcontroler = TextEditingController();
  final TextEditingController _numero3editcontroler = TextEditingController();
  String resultado='0';



 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: 
      Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
            keyboardType: TextInputType.number,
            controller: _numero1editcontroler,
            decoration: const InputDecoration(labelText: 'numero 1'),
            ),
            const Divider(),
            const SizedBox(height: 20,),
            TextField(
            keyboardType: TextInputType.number,
            controller: _numero2editcontroler,
            decoration: const InputDecoration(labelText: 'numero 2'),
            ),
            const Divider(),
            _espacios(),
            TextField(
            keyboardType: TextInputType.number,
            controller: _numero3editcontroler,
            decoration: const InputDecoration(labelText: 'numero 3'),
            ),
            _espacios(),
            _botones(),
            _espacios(),
            _botones2(),
            _espacios(),
            Text(
              resultado,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
     
    );
  }
  void _numeromayor(){
     double numero1= double.tryParse(_numero1editcontroler.text)??0;
     double numero2= double.tryParse(_numero2editcontroler.text)??0;
     double numero3= double.tryParse(_numero3editcontroler.text)??0;
     double mayor = numero1;
    if (numero2 > mayor) mayor = numero2;
    if (numero3 > mayor) mayor = numero3;
    setState(() {
      resultado = 'Resultado : $mayor';
    });
  }
   void _numeromanor(){
     double numero1= double.tryParse(_numero1editcontroler.text)??0;
     double numero2= double.tryParse(_numero2editcontroler.text)??0;
     double numero3= double.tryParse(_numero3editcontroler.text)??0;
     double menor = numero1;
    if (numero2 < menor) menor = numero2;
    if (numero3 < menor) menor = numero3;
    setState(() {
      resultado = 'Resultado : $menor';
    });
  }
  
  void _cuadrado(){
     double numero1= double.tryParse(_numero1editcontroler.text)??0;
     double cuadrado= numero1*numero1;
    setState(() {
      resultado = 'Resultado : $cuadrado';
    });
  }
  void _cubo(){
     double numero1= double.tryParse(_numero1editcontroler.text)??0;
     double ncubo= numero1*numero1 *numero1;
    setState(() {
      resultado = 'Resultado : $ncubo';
    });
  }
  Widget _espacios(){
    return             const SizedBox(height: 20,);

  }
  

  Widget _botones(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ElevatedButton(onPressed: _numeromayor, child: const Text('mayor')),
        const SizedBox(width:  20,),
        ElevatedButton(onPressed: _numeromanor, child: const Text('manor')),
        const SizedBox(width:  20,),

        ],

      );
    }
    Widget _botones2(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ElevatedButton(onPressed: _cuadrado, child: const Text('cuadrado')),
        const SizedBox(width:  20,),
        ElevatedButton(onPressed: _cubo, child: const Text('cubo')),
        const SizedBox(width:  20,),

        ],

      );
    }
  
}