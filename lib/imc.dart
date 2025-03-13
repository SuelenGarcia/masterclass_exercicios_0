
void main (){
Pessoa pessoa = Pessoa(nome:'Suelen', altura: 1.54, peso: 56);

print('Nome: ${pessoa.nome}, altura: ${pessoa.altura}m e peso: ${pessoa.peso}kg');
print(pessoa.calcImc());

}

class Pessoa {
  final String nome;
  final double altura;
  final int peso;

Pessoa({
  required this.nome, required this.altura, required this.peso,});
  
double calcImc(){
return peso / altura * altura;
}
}


