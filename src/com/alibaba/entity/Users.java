package com.alibaba.entity;
import java.math.BigDecimal;
import java.util.Date;

/**
* users实体定义
* 创建时间：2017-09-14
*/
public class Users
{
public Users()
{}

/**
* 构造函数
* @param Id
* @param Name
* @param Password
* @param Email
* @param QQ
* @param Age
* @param ImageURL
* @param Mobile
* @param Birthday
* @param Address
* @param Gender
* @param CreateDate
* @param Introduction
* @param Money
* @param Marriage
* @param State
*/
public Users(int Id,String Name,String Password,String Email,String QQ,int Age,String ImageURL,String Mobile,Date Birthday,String Address,int Gender,Date CreateDate,String Introduction,BigDecimal Money,int Marriage,int State)
{
this.Id = Id;
this.Name = Name;
this.Password = Password;
this.Email = Email;
this.QQ = QQ;
this.Age = Age;
this.ImageURL = ImageURL;
this.Mobile = Mobile;
this.Birthday = Birthday;
this.Address = Address;
this.Gender = Gender;
this.CreateDate = CreateDate;
this.Introduction = Introduction;
this.Money = Money;
this.Marriage = Marriage;
this.State = State;
}

private int Id;
private String Name;
private String Password;
private String Email;
private String QQ;
private int Age;
private String ImageURL;
private String Mobile;
private Date Birthday;
private String Address;
private int Gender;
private Date CreateDate;
private String Introduction;
private BigDecimal Money;
private int Marriage;
private int State;
public int getId()
{
    return this.Id; 
}
public void setId(int value)
{
    this.Id = value; 
}
public String getName()
{
    return this.Name; 
}
public void setName(String value)
{
    this.Name = value; 
}
public String getPassword()
{
    return this.Password; 
}
public void setPassword(String value)
{
    this.Password = value; 
}
public String getEmail()
{
    return this.Email; 
}
public void setEmail(String value)
{
    this.Email = value; 
}
public String getQQ()
{
    return this.QQ; 
}
public void setQQ(String value)
{
    this.QQ = value; 
}
public int getAge()
{
    return this.Age; 
}
public void setAge(int value)
{
    this.Age = value; 
}
public String getImageURL()
{
    return this.ImageURL; 
}
public void setImageURL(String value)
{
    this.ImageURL = value; 
}
public String getMobile()
{
    return this.Mobile; 
}
public void setMobile(String value)
{
    this.Mobile = value; 
}
public Date getBirthday()
{
    return this.Birthday; 
}
public void setBirthday(Date value)
{
    this.Birthday = value; 
}
public String getAddress()
{
    return this.Address; 
}
public void setAddress(String value)
{
    this.Address = value; 
}
public int getGender()
{
    return this.Gender; 
}
public void setGender(int value)
{
    this.Gender = value; 
}
public Date getCreateDate()
{
    return this.CreateDate; 
}
public void setCreateDate(Date value)
{
    this.CreateDate = value; 
}
public String getIntroduction()
{
    return this.Introduction; 
}
public void setIntroduction(String value)
{
    this.Introduction = value; 
}
public BigDecimal getMoney()
{
    return this.Money; 
}
public void setMoney(BigDecimal value)
{
    this.Money = value; 
}
public int getMarriage()
{
    return this.Marriage; 
}
public void setMarriage(int value)
{
    this.Marriage = value; 
}
public int getState()
{
    return this.State; 
}
public void setState(int value)
{
    this.State = value; 
}

}
