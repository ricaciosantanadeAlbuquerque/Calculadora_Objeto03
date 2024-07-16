import 'dart:io';

import 'calculadora.dart';
void main(){
  var result = menu();

  if(result.soma != null){
   print('Soma:${result.soma}');
  }else if(result.subtracao != null){
   print('Subtração ${result.subtracao}');
  }else if(result.multiplicacao != null){
   print('multiplicacao:${result.multiplicacao}');
  }else if(result.divisao != null){
   print('Divisão:${result.divisao}');
  }

}

 Calculadora menu(){
 print('Digite [1] para somar');
 print('Digite [2] para subtrair');
 print('Digite [3] para multiplicar');
 print('Digite [4] para dividir');
 print('Digite [5] para sair');
 String? entradaOp = stdin.readLineSync();

 if(entradaOp != null && entradaOp.isNotEmpty){
   try{

    int opcao = int.parse(entradaOp);

     if(opcao == 5)  exit(0); // como é só uma linha de código não há nescessidade de abrir o escopo da estrutura if()

      if ( opcao > 0 &&  opcao < 6) {       // tratando o intervalo de valores válidos
        
        print('Digite o primeiro valor');
        String? entradaValor1 = stdin.readLineSync();
        print('Digite o segundo valor');
        String? entradavalor2 = stdin.readLineSync();

        if(entradaValor1 != null && entradavalor2 != null ){
          if(entradaValor1.isNotEmpty && entradavalor2.isNotEmpty){
             try{
                
               double valor1 = double.tryParse(entradaValor1) ?? 0.0;
               double valor2 = double.tryParse(entradavalor2) ?? 0.0;
                return Calculadora(op:opcao,valor1:valor1,valor2:valor2);
             }catch(e){

              throw Exception('ERRO! $entradaValor1 ou $entradavalor2 não podem ser convertidos');

             }
          }else{
            print('ERRO! Valor inválido o programa será encerrado');
            exit(0);
          }
        }else{
          print('ERRO! Valor inválido o programa será encerrado');
          exit(0);
        }

      } else {
        print('O valor está fora da faixa. \nO programa será encerrado');
        exit(0);
      }

   }catch(e){
    throw Exception('ERRO! o valor $entradaOp não pode ser convertido');
   }
 }else{
   print('ERRO! Valor inválido o programa será encerrado');
   exit(0);
 }

}
