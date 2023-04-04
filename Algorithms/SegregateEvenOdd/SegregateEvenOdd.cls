/**
 * @description : Given a List of Integers, write a function that segregates even and odd numbers.         
 *                The function should put all even numbers first, and then odd numbers.
 *                Do so without creating any extra lists, which would mean an O(1) space complexity
 *                You are not required to order the even and odd numbers in any sequence
 * @author      : vetealaurent
**/
public with sharing class SegregateEvenOdd {
    List<Integer> nums;

    public SegregateEvenOdd(List<Integer> nums) {
        this.nums = nums;
    }

    public List<Integer> segregate(){
        Integer left = 0;
        Integer right = nums.size() - 1;

        while(left < right){
            Integer temp = nums[left];
            if(Math.mod(temp, 2) == 0){
                left++;
            }else{
                nums[left]  = nums[right];
                nums[right] = temp;
                right--;
            }
        }
        return nums;
    }
}