/**
 * @description : Given an array of Integers and an Integer target, identify indexes of two numbers such as they add up to the target.
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
        Map<Integer, Integer> complementMap = new Map<Integer, Integer>();

        for(Integer i = 0; i < nums.size(); i++){
            if(complementMap.containsKey(nums[i])){
                return new List<Integer>{complementMap.get(nums[i]), i};
            }else{
                Integer complement = target - nums[i];
                complementMap.put(complement, i);
            }
        }

        return null;
    }
}