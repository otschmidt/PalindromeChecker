public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String bob = new String();
  String sting = new String();
  String joe = new String();
  String otto = new String();
  for(int i=0;i<word.length();i++){
    if(!word.substring(i,i+1).equals(" "))// No spaces
      bob = bob + word.substring(i,i+1);
  }
  for(int i=0;i<bob.length();i++)
  {
    if(Character.isLetter(bob.charAt(i))==true)
      sting = sting + bob.substring(i,i+1);
  }
  joe = sting.toLowerCase();
  for(int i=1; i<joe.length()+1; i++)
    otto = otto + joe.substring(joe.length()-i, joe.length()-i+1);// Reverse
    if(otto.equals(joe))
    {
      return true;
    }
  
  return false;
}

/*
if(Character.isLetter(sString.charAt(i))==true)
      a++;

public String noSpaces(String word){
  String bob = new String();
  for(int i=0;i<word.length();i++)
    if(!word.substring(i,i+1).equals(" "))
      bob = bob + word.substring(i,i+1);
      
  return bob;
}


public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i=1; i<str.length()+1; i++)
    sNew = sNew + str.substring(str.length()-i, str.length()-i+1);
    
    return sNew;
}

public int numLetters(String sString){
  int a=0;
  for(int i=0;i<sString.length();i++)
  {
    if(Character.isLetter(sString.charAt(i))==true)
      a++;
  }
  return a;
}
*/


