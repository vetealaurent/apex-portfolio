/**
 * @description : Given an array of Integers and an Integer target, identify indexes of two numbers such as they add up to the target.
 *                You may assume that each input would have exactly one solution and you may not use the same element twice.
 * @author      : vetealaurent
**/
public with sharing class TwoSum {
    List<Integer> nums;
    Integer target;

    public TwoSum(List<Integer> nums, Integer target) {
        this.nums   = nums;
        this.target = target;
    }

    public List<Integer> scan() {
        List<Integer> indexes;
        
        for(Integer i = 0; i < nums.size(); i++){
            if(i == 0){
                continue;
            }
            Integer previous = nums[i - 1];
            if(target - previous == nums[i]){
                indexes =  new List<Integer>{i - 1, i};
            }
        }

        return indexes;
    }
}