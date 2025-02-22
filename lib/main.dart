
//       //FUNCTIONS
// //  Geralmente quanod é mais de um parâmetro deve ser na ordem (quando não houver nome) mas é confuso não ter. 
// //  porque não tem como saber. Posicional é porque deve ser a mesma posição. Boleano seja sempre nomeado
// //  required pode ser nulo.

//   message('oi', 'Suelen');
//   dados('Suelen');
//   details('Suelen', age: 28);
//   ageAndHeight(28, height: 1.54);
//   }
//   //  ( )  - POSICIONAL = Tem que ser passada na mesma posição e é obrigatório. Não fala nome
//   void message(String msg, String name){
//     print('$msg $name');
//   }

//   //  ([]) - OPCIONAL = Ele é posicional mas opcional
// void dados(String name,[int? age]){
// print('Name: $name');
//   }

//   //  ({}) - NOMEADO  = Tem que ser passada pelo nome, tanto faz a ordem. Tem nome opcional.
//   void details(String name,{int? age}){
// print('Name: $name, Age: $age');
//   }

//     //  ({}) - NOMEADO REQUERIDO = Tem que ser passado pelo nome obrigatóriamente, a ordem não importa. Add o required antes
//     void ageAndHeight(int age, {required double height}){
//       print('Idade: $age, Altura: $height');
//     }


// void main (){Carro carro = Carro(marca: 'Fiat', nome: 'Punto', qtdPortas: 4);
// //ou final carro = Carro.......
// print(carro.marca);
// print(carro.nomeCompleto());
// }

// //classe
// class Carro {
//   late String marca;
//   late String nome;
//   late int qtdPortas;

// //construtor
// Carro({required String marca, required String nome, required int qtdPortas}){
//   this.marca = marca;
//   this.nome = nome;
//   this.qtdPortas = qtdPortas;
// }

// //método
//   String nomeCompleto(){
//     return '$marca $nome';
//   }
// }

