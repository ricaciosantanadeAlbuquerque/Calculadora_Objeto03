import 'dart:io';
import 'interface_calculadora.dart';

class Calculadora implements InterfaceCalculadora{
  int? _op;
  double? _valor1;
  double? _valor2;

  Calculadora({required int op,required double valor1,required double valo2}){
    this.op = op;
    this.valor1 = valor1;
    this.valor2 = valor2;
    escolha(op:op,valor1: valor1,valor2: valo2);
  }


  int? get op => this._op;
  void set op(int? op) => this._op = op;

  double? get valor1 => this._valor1;
  void set valor1(double? valor1) => this._valor1 = valor1;

  double? get valor2 => this._valor2;
  void set valor2(double? valor2) => this._valor2 = valor2;

   void escolha({required int op,required double valor1,required double valor2}){
        switch(op){
          case 1:
          break;
          case 2:
          break;
          case 3:
          break;
          case 4:
          break;
          case 5:
          break;
          default:
          print('ERRO! valor fora da faixa.\n O programa será encerrado');
          exit(0);
        }
   }

   @override
   String toString() => 'Opção $op, Valor 1: $valor1, Valor 2: $valor2';

  // interface
  @override
  double? soma;
  @override
  double? subtracao;
  @override
  double? multiplicacao;
  @override
  double? divisao;
  
  @override
  double somaValor({required double valor1,required double valor2}){
    return  valor1 + valor2;
  }

  @override
  double subtracaoValor({required double valor1,required double valor2}){
    return valor1 - valor2;
  }

  @override
  double multiplicacaoValor({required double valor1,required double valor2}){
    return valor1 * valor2;
  }

  @override
  double divisaoValor({required double valor1,required double valor2}){
    return valor1 / valor2;
  }

}