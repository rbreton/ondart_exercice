import 'dart:math' as Math;

void main(){
  print(fibonacci(11));
  print(endPointLine(980, 660, 120, 33));
  print(passedTimeBetween(new DateTime(1991, 09, 22, 0, 0)));
  print(investment(10, 1000.00, 3.3));
  print(timesTable(12, 20));
}
// Source : Dzenan R.
// Site : https://docs.google.com/presentation/d/1dnz-3b4-KsdgTnLDzI381SILc26fCgyuuYLbe96gBC0/edit?pli=1#slide=id.gd932d385_010
String fibonacci(int intNI){
  String strPrint = '#1 La suite de fibonacci :\n 0, ';
  int intA = 0;
  int intB = 1;
  int intCalResult;
  String strSpacer = ', ';
  for(int intCpt = 1; intCpt < intNI; intCpt ++){
    intCalResult = intA + intB;
    strSpacer = (intNI-1) == intCpt ? '' : ', ';
    strPrint = strPrint + intCalResult.toString() + strSpacer;
    intB = intA;
    intA = intCalResult;
  }
  return strPrint + '\n';
}

String endPointLine(int intW, int intH, int intL, int intD){
  String strPrint = '#2  :\n ';
  double dblCenterX = intW / 2;
  double dblCenterY = intH / 2;
  double dblR = intD * (Math.PI / 180);
  double dblEndLineX = intW / 2 + 120 * Math.cos(dblR);
  double dblEndLineY = intH / 2 + 120 * Math.sin(dblR);
  strPrint += 'Centre : ${dblCenterX.toStringAsFixed(2)}, ${dblCenterY.toStringAsFixed(2)}\n ';
  strPrint += 'Fin de la ligne : ${dblEndLineX.toStringAsFixed(2)}, ${dblEndLineY.toStringAsFixed(2)}';
  return strPrint + '\n';
}

//Source : Dart API Reference
//Site : https://api.dartlang.org/apidocs/channels/stable/#dart:core.DateTime
//Site : https://api.dartlang.org/apidocs/channels/stable/#dart:core.Duration
String passedTimeBetween(DateTime dtBirthday){
  DateTime dtNow = new DateTime.now();
  String strPrint = "#3 Temps passé entre le $dtBirthday et aujourd'hui le $dtNow :\n ";
  
  Duration drtPassedTime = dtNow.difference(dtBirthday);
  
  int intDaysPassed = drtPassedTime.inDays;
  int intY = (intDaysPassed / 365).truncate();
  int intM = ((intDaysPassed - (365 * intY)) / 30).truncate();
  int intD = (intDaysPassed - (365 * intY)) - (30 * intM);
  strPrint += '$intY ans, $intM mois et $intD jours';
  return strPrint + '\n';
}

String investment(int intYears, double dblInvestment, double dblInterest){
  String strPrint = '#4 :\n';
  double dblInterestF = dblInvestment;
  for(int intI = 1; intI <= intYears; intI++){
    dblInterestF += (dblInterestF*dblInterest)/100;
  }
  strPrint = strPrint + ' Investissement Total :' + dblInterestF.toStringAsFixed(2) + '\n';
  strPrint = strPrint + ' Investissement Remporté :' + (dblInterestF - dblInvestment).toStringAsFixed(2);
  return strPrint + '\n';
}

String timesTable(int intTimeTable, int intNI){
  String strPrint = '#5 Les $intNI premiers chiffres de la table de multiplication $intTimeTable :\n';
  int intCpt = 1;
  while (intCpt <= intNI){
    int intMult = intCpt * intTimeTable;
    strPrint += ' $intCpt X $intTimeTable = $intMult\n';
    intCpt++;
  }
  return strPrint + '\n';
}