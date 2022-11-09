public class word3 
{

public static void testmap()
{
//List<String> strings=new List<String>();
list<string> key=new list<string>{'A','B','C','D'};//key
list<string> str_list= new list<string>{'Apple', 'Biscuit', 'Ant', 'Cat','Dog','Dance'};//value
Map<string,list<string>> str_map = new map<string,list<string>>();
for(string ss : key)
{
List<String> strings=new List<String>();// to store A= Apple B= Biscuit C=Cat
for(string s : str_list)
{
if(ss==s.left(1))
{
strings.add(s);
}
str_map.put(ss,strings);
}
}
system.debug(str_map);
}

}