@isTest
private with sharing class ReverseString_test {

    @isTest
    private static void ReverseString_test() {
        String input = 'Hello';

        Test.startTest();
        String output = new ReverseString(input).reverse();
        Assert.areEqual('olleH', output, 'Input was not reversed correctly');
        Test.stopTest();
    }
}