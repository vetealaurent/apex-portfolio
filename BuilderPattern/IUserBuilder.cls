/**
 * @description : User builder interface
 * @author      : vetealaurent
**/
public interface IUserBuilder {

    void setLastName();
    void setAlias();
    void setEmail();
    void setUserName();
    void setProfile();
    void setEncoding();
    void setLanguage();
    void setLocale();
    void setTimeZone();
    User getUser();
    
}