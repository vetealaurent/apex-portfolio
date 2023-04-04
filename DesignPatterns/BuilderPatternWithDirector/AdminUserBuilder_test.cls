@isTest
private with sharing class AdminUserBuilder_test {

    @isTest
    private static void createAdmin_test(){

        Test.startTest();
        User admin = new UserDirector().build(new AdminUserBuilder());
        insert admin;
        Assert.isNotNull(admin);
        Test.stopTest();

    }
    
}