@isTest
private with sharing class StandardUserBuilder_test {
    
    @isTest
    private static void createStandardUser_test(){

        Test.startTest();
        User standard = new UserDirector().build(new StandardUserBuilder());
        insert standard;
        Assert.isNotNull(standard);
        Test.stopTest();

    }
}