@isTest
private with sharing class FrequencyCounter_test {

    @isTest
    private static void FrequencyCounter_test() {
        List<String> sports = new List<String>{
            'Tennis',
            'Football',
            'Handball',
            'Tennis',
            'Handball'
        };

        Test.startTest();
        Map<String, Integer> countBySports = new FrequencyCounter(sports).calculate();
        Assert.areEqual(2, countBySports.get('Tennis'));
        Assert.areEqual(1, countBySports.get('Football'));
        Assert.areEqual(2, countBySports.get('Handball'));
        Test.stopTest();
    }
}