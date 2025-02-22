void main (){ 
  //exemplo com bandeja de morango
double valorUnit = 4; // valor de uma bandeja
double qtd = 1; // uma bandeja
double qtdCaixa = 4; // uma caixa vem com 4 bandejas
double? valorCaixa;

print('O valor da caixa é R\$${regraDeTres(valorUnit,qtd,qtdCaixa,valorCaixa)}.');

}
double regraDeTres([double? valorUnit, double? qtd, double? qtdCaixa, double? valorCaixa]){

// verifica se valor unitário é nulo
  if(valorUnit == null && qtd != null && qtdCaixa != null && valorCaixa != null){
return valorCaixa * qtd / qtdCaixa; 

//verifica se quantidade é nula
} else if (qtd == null && valorUnit != null && qtdCaixa != null && valorCaixa != null){
return qtdCaixa * valorUnit / valorCaixa;

//verifica se quantidade que vem na caixa é nula
} else if (qtdCaixa == null && valorUnit != null && qtd != null && valorCaixa != null){
  return valorCaixa * qtd / valorUnit;

  //verifica se o valor da caixa é nulo
}else if(valorCaixa == null && valorUnit != null && qtd != null && qtdCaixa != null){
return valorUnit * qtdCaixa / qtd;
} else{
  // como a função precisa retornar um double eu não pude retornar um print então coloquei um twrow exception que é 
  // usado para para lançar um erro intencionalmente quando algo inesperado acontece no seu código.
  throw Exception('Por favor, informe pelo menos 3 valores.');
}
}