void main() {
  for(int cpt = 1; cpt<=100; cpt++){
    String strNumero = cpt.toString();
    if(cpt % 3 == 0){
      strNumero = 'Fizz';
    }
    if(cpt % 5 == 0){
      
      if(strNumero == 'Fizz'){
        strNumero = 'FizzBuzz';
      }else{
        strNumero = 'Buzz';
      }
    }
    print(strNumero);
  }
}