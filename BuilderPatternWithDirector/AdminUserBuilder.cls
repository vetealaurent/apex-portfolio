/**
 * @description : Implementation of the IUserBuilder interface to create Admin users
 * @author      : vetealaurent
**/
public with sharing class AdminUserBuilder implements IUserBuilder {

    public User user;
    
    public AdminUserBuilder() {
        this.user = new User();
    }

    public void setLastName(){
        user.LastName = 'Test Admin';
    }
    
    public void setAlias(){
        user.Alias = 'admTest';
    }
    
    public void setEmail(){
        user.Email = 'admin.test@email.test';
    }
    
    public void setUserName(){
        user.UserName = 'admin.test@email.test';
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
        user.ProfileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator'].Id;
    }

    public User getUser(){
        return user;
    }
}