import 'dart:io';
void main(){
  menu();
}

void menu(){
 print('Digite [1] para somar');
 print('Digite [2] para subtrair');
 print('Digite [3] para multiplicar');
 print('Digite [4] para dividir');
 print('Digite [5] para sair');
 String? entradaOp = stdin.readLineSync();
}
