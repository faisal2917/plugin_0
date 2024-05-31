import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:torch_plugin/torch_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _torchPlugin = TorchPlugin();
bool _isTorchOn=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Torch control',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(
                height: 40,
              ),
              IconButton(onPressed: ()async {
                print('button pressed...........');
                if(_isTorchOn){
                  print('Torch off...........$_isTorchOn');

                  _isTorchOn=await _torchPlugin.offTorch();

                  setState(() {
                  });
                }else{
                  print('Torch on...........$_isTorchOn');

                  _isTorchOn=await _torchPlugin.onTorch();
                  setState(() {
                  });
                }
              },
               icon:  Icon(_isTorchOn?Icons.flashlight_off:Icons.flashlight_on,size: 50,))
            ],
          )
      ),
    ));
  }
}
