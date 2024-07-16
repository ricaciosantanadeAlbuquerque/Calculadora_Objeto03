abstract class InterfaceCalculadora{
  double? soma;
  double? subtracao;
  double? multiplicacao;
  double? divisao;

  double somaValor({required double valor1, required double valor2});
  double subtracaoValor({required double valor1, required double valor2});
  double multiplicacaoValor({required double valor1, required double valor2});
  double divisaoValor({required double valor1, required double valor2});

}