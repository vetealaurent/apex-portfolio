@isTest
private with sharing class BinarySearch_test {

    @isTest
    private static void BinarySearch_test1(){
        List<Integer> nums = new List<Integer>{1,2,3,4,5,6,7,8,9,10};
        Integer target = 2;

        Test.startTest();
        Integer targetIndex = new BinarySearch(nums, target).search();
        Assert.areEqual(1, targetIndex);
        Test.stopTest();
    }

    @isTest
    private static void BinarySearch_test2(){
        List<Integer> nums = new List<Integer>{1,2,3,4,5,6,7,8,9,10};
        Integer target = 7;

        Test.startTest();
        Integer targetIndex = new BinarySearch(nums, target).search();
        Assert.areEqual(6, targetIndex);
        Test.stopTest();
    }

    @isTest
    private static void BinarySearch_test3(){
        List<Integer> nums = new List<Integer>{1,2,3,4,5,6,7,8,9,10};
        Integer target = 5;

        Test.startTest();
        Integer targetIndex = new BinarySearch(nums, target).search();
        Assert.areEqual(4, targetIndex);
        Test.stopTest();
    }

}