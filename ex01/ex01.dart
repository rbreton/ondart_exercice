void main() {
  int intBase = 1;
  int intLenght = 9;
  for (int n = 1; n<=intLenght; n++){
    int intMult = intBase * intBase;
    print('${intBase} * ${intBase} = ${intMult}');
    String strBase = intBase.toString() + '1';
    intBase = int.parse(strBase);
  }
}