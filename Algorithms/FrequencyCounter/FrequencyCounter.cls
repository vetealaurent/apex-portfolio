/**
 * @description : Given an array of Strings, count the occurences
 * @author      : vetealaurent
**/
public with sharing class FrequencyCounter {
    List<String> words;

    public FrequencyCounter(List<String> words) {
        this.words = words;
    }

    public Map<String, Integer> calculate(){
        Map<String, Integer> wordCount = new Map<String, Integer>();
        
        for(String word : words){
            if(!wordCount.containsKey(word)){
                wordCount.put(word, 1);
            }else{
                wordCount.put(word, wordCount.get(word) + 1);
            }
        }
        return wordCount;
    }
}