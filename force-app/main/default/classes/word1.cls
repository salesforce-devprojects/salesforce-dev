public class word1
{

    public static  Map<String, List<String>> arrayToList(String [] words) 
    {
        Map<String, List<String>> m = new Map<String, List<String>>();
        for (integer n = 97; n <= 122; n++) {
            List<String> wordList = new List<String>{'bat','ball','air','apple','orange'};
            for (integer i = 0; i < words.size(); i++)
            {
                if (words[i].charAt(0) == n) 
                {
                    wordList.add(words[i]);
                    m.put(' ' + words[i].charAt(0), wordList);
                    system.debug('The list of map is with key '+m);
                }
            }
        }
        return m;
    }
}