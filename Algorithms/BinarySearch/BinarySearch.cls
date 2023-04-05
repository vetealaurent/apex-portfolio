/**
 * @description : Given a sorted list of Integers and an Integer target, return the target index
 * @author      : vetealaurent
**/
public with sharing class BinarySearch {
    List<Integer> nums;
    Integer target;

    public BinarySearch(List<Integer> nums, Integer target) {
        this.nums   = nums;
        this.target = target;
    }

    public Integer search(){
        Integer left   = 0;
        Integer right  = nums.size() - 1;
        
        while(left <= right){
            Integer mid = (left + right) / 2;
            if(target == nums[mid]){
                return mid;
            }
            if(target < nums[mid]){
                right = mid - 1;
            }else{
                left = mid + 1;
            }
        }
        
        return null;
    }
}