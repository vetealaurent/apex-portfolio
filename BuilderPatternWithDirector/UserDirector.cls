/**
 * @description : Responsible for executing the user building steps
 * @author      : veteaLaurent
**/
public with sharing class UserDirector {

    IUserBuilder userBuilder;

    public User build(IUserBuilder userBuilder) {
        this.userBuilder = userBuilder;
        userBuilder.setLastName();
        userBuilder.setAlias();
        userBuilder.setEmail();
        userBuilder.setUserName();
        userBuilder.setEncoding();
        userBuilder.setLanguage();
        userBuilder.setLocale();
        userBuilder.setTimeZone();
        userBuilder.setProfile();

        return userBuilder.getUser();
    }

}