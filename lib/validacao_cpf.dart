

void main (){

String cpf = '12345678909';
verifyCpfDigits(cpf);
}

void verifyCpfDigits(String cpf){

//.trim remove espaços no começo e final da string
  cpf = cpf.trim().replaceAll(RegExp(r'[^0-9]'), ''); //remover caracteres nao numericos

// map p converter cada item para inteiro (antes estava com lista de string)
List<int> cpfNumbers = cpf.split('').map(int.parse).toList(); //toList pra transformar em lista de novo

if (cpf.length != 11) {
    print('CPF inválido! O CPF deve ter exatamente 11 números.');
    return; // return pra encerrar
  }

  if (RegExp(r"(\d)\1{10}").hasMatch(cpf)) {
  print('CPF inválido! O CPF não deve ter números repetidos.');
  return;
}

  
  int sum = 0;
  int multiplier = 10; //começa em 10 e vai até 2

//for para percorrer o cpf e .lenght pra pegar o tamanho total
for (var i = 0; i < 9; i++) {
sum = sum + (cpfNumbers[i] * multiplier);
multiplier = multiplier - 1; //vai diminuindo até chegar no ultimo numero
}
  int rest = sum % 11; // % pega o resto da divisão
  int firstDigit = 0;

if (rest >= 2){
  firstDigit = 11 - rest;
}
print('Primeiro dígito verificado: $firstDigit');

sum = 0;
multiplier = 11;

for (var i = 0; i < 10; i++) {
sum = sum + (cpfNumbers[i] * multiplier);
multiplier = multiplier - 1; 
}
rest = sum % 11;
int secondDigit = 0;

if(rest >= 2) {
  secondDigit = 11 - rest;
}
print('Segundo dígito verificado: $secondDigit.');

//comparação dos digitos verificadores com o cpf original
if (cpfNumbers[9] == firstDigit && cpfNumbers[10] == secondDigit) {
  print ('CPF válido!');
} else {
  print('CPF inválido!');
}
}

