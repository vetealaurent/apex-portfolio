@isTest
private with sharing class SegregateEvenOdd_test {
    
    @isTest
    private static void SegregateEvenOdd_test1(){
        List<Integer> input = new List<Integer>{6, 9, 3, 2, 5, 2};

        Test.startTest();
        List<Integer> output = new SegregateEvenOdd(input).segregate();
        Assert.areEqual(new List<Integer>{6, 2, 2, 5, 3, 9}, output);
        Test.stopTest();
    }
}