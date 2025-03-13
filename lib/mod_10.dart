// Cartão inválido: 5419 8250 0346 1210.
// Cartão válido: 4916 6418 5936 9080.
void main() {
  String cardNumber = '4916 6418 5936 9080';
  verifyNumberCard(cardNumber);
}

void verifyNumberCard(String cardNumber) {
  List<int> cardNumberList =
      cardNumber
          .replaceAll(' ', '')
          .split('')
          .map(int.parse)
          .toList(); //removendo os espaços enquanto tranformo em uma lista de inteiros

  int lastNumber = cardNumberList.last;
  int oddMultiplier = 2;
  int evenMultiplier = 1;
  int sum = 0;

  for (int i = 0; i < cardNumberList.length; i += 2) {
    int oddNumbers = cardNumberList[i] * oddMultiplier;
    if (oddNumbers >= 10) {
      String oddNumbersString = oddNumbers.toString();

      List<int> oddNumbersList =
          oddNumbersString.split('').map(int.parse).toList();

      sum +=
          oddNumbersList[0] +
          oddNumbersList[1]; // +=: o mesmo que sum = sum + oddNumbersList[0]....
    } else {
      sum += oddNumbers;
    }
  }
  for (var i = 1; i < cardNumberList.length; i += 2) {
    int evenNumbers = cardNumberList[i] * evenMultiplier;
    if (evenNumbers >= 10) {
      String evenNumbersString = evenNumbers.toString();
      List<int> evenNumbersList =
          evenNumbersString.split('').map(int.parse).toList();
      sum += evenNumbersList[0] + evenNumbersList[1];
    } else {
      sum += evenNumbers;
    }
  }

  int rest = sum % 10;
  int checkDigit = (10 - rest) % 10;

  if (checkDigit == lastNumber) {
    print('O cartão é válido!');
  } else {
    print('O cartão é inválido!');
  }
}
