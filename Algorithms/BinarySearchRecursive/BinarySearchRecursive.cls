/**
 * @description : Given a sorted list of Integers and an Integer target, return the target index
 * @author      : vetealaurent
**/
public with sharing class BinarySearchRecursive {
    
    public static Integer search(List<Integer> nums, Integer target, Integer left, Integer right){

        if(left > right){
            return null;
        }

        Integer mid = (left + right) / 2;
        
        if(target == nums[mid]){
            return mid;
        }
        if(target < nums[mid]){
            return search(nums, target, left, mid - 1);
        }else{
            return search(nums, target, mid + 1, right);
        }
    }
}