void main (){
    var ultimoNumero = 0; //vai representar o numero anterior
    var numeroAtual = 1; //representa o numero atual
  // O papel do "i" é controlar o número de vezes que o bloco de código vai ser repetido
 for (var i = 0; i < 10; i++) {
  var proximoNumero = ultimoNumero + numeroAtual; //fiz a soma
  //atualizei os valores
  ultimoNumero = numeroAtual;
  print(proximoNumero);
  numeroAtual = proximoNumero;
  print(numeroAtual);
    }
}
