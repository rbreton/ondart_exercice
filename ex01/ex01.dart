//bretonr
main() {
  int intBase = 1;
  int intLenght = 9;
  int intLenghtCpt = 16;
  for (int n = 1; n<=intLenght; n++){
    var intMult = intBase * intBase;
    String strSpacer = '';
    for (int m = 1; m<= intLenghtCpt; m++){
      strSpacer = strSpacer + ' ';
    }
    intLenghtCpt = intLenghtCpt - 2;

    print('${strSpacer}${intBase} * ${intBase} = ${intMult}');
    var strBase = intBase.toString() + '1';
    intBase = int.parse(strBase);
  }
}