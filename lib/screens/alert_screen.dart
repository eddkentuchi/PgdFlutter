import 'package:flutter/material.dart';
import 'dart:io';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Center(child: Text('Que pedal perro')),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(15)),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Esta es mi alerta'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 30,
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar')),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Cancelar',
                  style: TextStyle(color: Colors.red),
                )),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => !Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogAndroid(context),
            child: const Padding(
              padding:
                  EdgeInsets.only(top: 16, bottom: 16, left: 30, right: 30),
              child: Text(
                'Mostrar alerta',
                style: TextStyle(fontSize: 18),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class CupertinoAlertDialog {}
