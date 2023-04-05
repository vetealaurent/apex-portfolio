@isTest
private with sharing class BinarySearchRecursive_test {
    
    @isTest
    private static void BinarySearchRecursive_test1(){
        List<Integer> nums = new List<Integer>{1,2,3,4,5,6,7,8,9,10};
        Integer target  = 2;
        Integer left    = 0;
        Integer right   = nums.size() - 1;

        Test.startTest();
        Integer targetIndex = BinarySearchRecursive.search(nums, target, left, right);
        Assert.areEqual(1, targetIndex);
        Test.stopTest();
    }

    @isTest
    private static void BinarySearchRecursive_test2(){
        List<Integer> nums = new List<Integer>{1,2,3,4,5,6,7,8,9,10};
        Integer target  = 7;
        Integer left    = 0;
        Integer right   = nums.size() - 1;

        Test.startTest();
        Integer targetIndex = BinarySearchRecursive.search(nums, target, left, right);
        Assert.areEqual(6, targetIndex);
        Test.stopTest();
    }

    @isTest
    private static void BinarySearchRecursive_test3(){
        List<Integer> nums = new List<Integer>{1,2,3,4,5,6,7,8,9,10};
        Integer target  = 5;
        Integer left    = 0;
        Integer right   = nums.size() - 1;

        Test.startTest();
        Integer targetIndex = BinarySearchRecursive.search(nums, target, left, right);
        Assert.areEqual(4, targetIndex);
        Test.stopTest();
    }
}