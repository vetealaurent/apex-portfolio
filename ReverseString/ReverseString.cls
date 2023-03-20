public with sharing class ReverseString {
    List<Integer> chars;

    public ReverseString(String input) {
        this.chars = input.getChars();
    }

    public String reverse(){
        Integer right = chars.size() - 1;

        for(Integer left = 0; left < right; left++){
            Integer temp = chars[left];
            chars[left]  = chars[right];
            chars[right] = temp;
            right--;
        }

        return String.fromCharArray(chars);
    }
}