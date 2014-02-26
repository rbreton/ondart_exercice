library fcns;
String txtFormat(String strCharToFormat){
  Map mapUnwantedCharacter = {'Š' : 'S', 'š' : 's', 'Ž' : 'Z', 'ž' : 'z', 'À' : 'A', 'Á' : 'A', 'Â' : 'A', 'Ã' : 'A', 'Ä' : 'A', 'Å' : 'A', 'Æ' : 'A', 'Ç' : 'C', 'È' : 'E', 'É' : 'E', 'Ê' : 'E', 'Ë' : 'E', 'Ì' : 'I', 'Í' : 'I', 'Î' : 'I', 'Ï' : 'I', 'Ñ' : 'N', 'Ò' : 'O', 'Ó' : 'O', 'Ô' : 'O', 'Õ' : 'O', 'Ö' : 'O', 'Ø' : 'O', 'Ù' : 'U', 'Ú' : 'U', 'Û' : 'U', 'Ü' : 'U', 'Ý' : 'Y', 'Þ' : 'B', 'ß' : 'Ss', 'à' : 'a', 'á' : 'a', 'â' : 'a', 'ã' : 'a', 'ä' : 'a', 'å' : 'a', 'æ' : 'a', 'ç' : 'c', 'è' : 'e', 'é' : 'e', 'ê' : 'e', 'ë' : 'e', 'ì' : 'i', 'í' : 'i', 'î' : 'i', 'ï' : 'i', 'ð' : 'o', 'ñ' : 'n', 'ò' : 'o', 'ó' : 'o', 'ô' : 'o', 'õ' : 'o', 'ö' : 'o', 'ø' : 'o', 'ù' : 'u', 'ú' : 'u', 'û' : 'u', 'ý' : 'y', 'þ' : 'b', 'ÿ' : 'y'};
  String strCharFormated = strCharToFormat;
  if (mapUnwantedCharacter[strCharToFormat] != null) {
    strCharFormated = mapUnwantedCharacter[strCharToFormat];
  }
  return strCharFormated.toLowerCase();
}
String palindrome(String strTxt){
  String strReturn = '';
  String strTxtNoSpace = strTxt.replaceAll(new RegExp('[!"#\$%&\\\'()*+,-.\/:;?@[\\\]_`{|}~ ]'), '');
  List lstTxtToCharacter = strTxtNoSpace.split('');
  List lstTxtFormated = new List();
  for(int intI = 0; intI < lstTxtToCharacter.length; intI++){
    lstTxtFormated.add(txtFormat(lstTxtToCharacter[intI]));
  }
    
  /* -------- Besoin d'explication sur les foreach{} --------- */
  //lstTxtToCharacter.forEach(txtFormat);
  int intStart = 0;
  int intEnd = lstTxtFormated.length-1;
  int intLength = ((lstTxtFormated.length) / 2).floor();
  bool bolStateTxt = true;
  for(int intJ = 0; intJ < intLength; intJ++){
    if(intStart < intEnd){
      if(lstTxtFormated[intStart] != lstTxtFormated[intEnd]){
        bolStateTxt = false;
      }
    }
    intStart++;
    intEnd--;
  }
  if(bolStateTxt){
    strReturn += 'Ce texte : « $strTxt » est un palindrome.';
  }else{
    strReturn += "Ce texte : « $strTxt » n'est pas un palindrome.";
  }
  return strReturn + '\n';
}
String getPlural(int intCount, String strLetter){
  if(intCount > 1){return strLetter;}else{return '';};
}
String numDaysBetween(DateTime dtFirstDate, DateTime dtSecondDate){
  String strReturn = '';
  List lstMois = ['janvier','février','mars','avril','mai','juin','juillet','aout','septembre','octobre','novembre','decembre'];
  Duration drtPassedTime = dtSecondDate.difference(dtFirstDate);
  int intDaysPassed = drtPassedTime.inDays;
  strReturn = 'Il y a $intDaysPassed jour${getPlural(intDaysPassed, 's')} entre le ${dtFirstDate.day} ${lstMois[dtFirstDate.month-1]} ${dtFirstDate.year} et le ${dtSecondDate.day} ${lstMois[dtSecondDate.month-1]} ${dtSecondDate.year}.';
  return strReturn + '\n';
}
String convertNumGradesToLetters(int intNumGrade){
  String strReturn = '';
  
  return strReturn + '\n';
}
String getNamelength(List lstNames){
  String strReturn = '';
  
  return strReturn + '\n';
}
String getClubPlayers(){
  String strReturn = '';

  return strReturn + '\n';
}