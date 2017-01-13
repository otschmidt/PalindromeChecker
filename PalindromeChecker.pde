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
  for(int i=1; i<word.length()+1; i++)
    bob = bob + word.substring(word.length()-i, word.length()-i+1);
    if(bob.equals(word))
    {
      return true;
    }
  
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i=1; i<str.length()+1; i++)
    sNew = sNew + str.substring(str.length()-i, str.length()-i+1);
    
    return sNew;
}


