/**
 * @description : Implementation of the IUserBuilder interface to create Standard users
 * @author      : vetealaurent
**/
public with sharing class StandardUserBuilder implements IUserBuilder {

    public User user;
    
    public StandardUserBuilder() {
        this.user = new User();
    }

    public void setLastName(){
        user.LastName = 'Test User';
    }
    
    public void setAlias(){
        user.Alias = 'userTest';
    }
    
    public void setEmail(){
        user.Email = 'user.test@email.test';
    }
    
    public void setUserName(){
        user.UserName = 'user.test@email.test';
    }

    public void setEncoding(){
        user.EmailEncodingKey = 'UTF-8';
    }
    
    public void setLanguage(){
        user.LanguageLocaleKey = 'en_US';
    }

    public void setLocale(){
        user.LocaleSidKey = 'en_US';
    }

    public void setTimeZone(){
        user.TimeZoneSidKey = 'Europe/Paris';
    }
    
    public void setProfile(){
        user.ProfileId = [SELECT Id FROM Profile WHERE Name = 'Standard User'].Id;
    }

    public User getUser(){
        return user;
    }
}