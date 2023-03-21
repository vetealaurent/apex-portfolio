@isTest
private with sharing class TwoSum_test {

    @isTest
    private static void TwoSum_test1() {
        List<Integer> nums = new List<Integer>{2,7,11,15};
        Integer target = 9;

        Test.startTest();
        List<Integer> indexes = new TwoSum(nums, target).scan();
        Assert.areEqual(new List<Integer>{0, 1},
                        indexes,
                        'Because nums[0] + nums[1] == 9, we should return [0, 1]');
        Test.stopTest();
    }

    @isTest
    private static void TwoSum_test2() {
        List<Integer> nums = new List<Integer>{3,2,4};
        Integer target = 6;

        Test.startTest();
        List<Integer> indexes = new TwoSum(nums, target).scan();
        Assert.areEqual(new List<Integer>{1, 2},
                        indexes,
                        'Because nums[1] + nums[2] == 6, we should return [1, 2]');
        Test.stopTest();
    }

    @isTest
    private static void TwoSum_test3() {
        List<Integer> nums = new List<Integer>{3,3};
        Integer target = 6;

        Test.startTest();
        List<Integer> indexes = new TwoSum(nums, target).scan();
        Assert.areEqual(new List<Integer>{0, 1},
                        indexes,
                        'Because nums[0] + nums[1] == 6, we should return [0, 1]');
        Test.stopTest();
    }
    
}