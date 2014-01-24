void main(){
  print(fibonacci(11));
}
String fibonacci(int intNI){
  String strPrint = '0, ';
  int intCpt = 1;
  int intA = 0;
  int intB = 1;
  int intCalResult;
  String strSpacer = ', ';
  while (intCpt < intNI){
    intCalResult = intA + intB;
    strSpacer = (intNI-1) == intCpt ? '' : ', ';
    strPrint = strPrint + intCalResult.toString() + strSpacer;
    intB = intA;
    intA = intCalResult;
    intCpt++;
  }
  return strPrint;
}