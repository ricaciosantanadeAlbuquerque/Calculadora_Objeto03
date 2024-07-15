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

 if(entradaOp != null && entradaOp.isNotEmpty){
   try{

    int opcao = int.parse(entradaOp);

      if ( opcao > 0 &&  opcao < 6) {       // tratando o intervalo de valores válidos
        
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
