package com;
// Generated Jul 20, 2016 11:27:06 AM by Hibernate Tools 4.3.1



/**
 * Articledata generated by hbm2java
 */
public class Articledata  implements java.io.Serializable {


     private Integer aid;
     private String atopic;
     private String abody;

    public Articledata() {
    }

    public Articledata(String atopic, String abody) {
       this.atopic = atopic;
       this.abody = abody;
    }
   
    public Integer getAid() {
        return this.aid;
    }
    
    public void setAid(Integer aid) {
        this.aid = aid;
    }
    public String getAtopic() {
        return this.atopic;
    }
    
    public void setAtopic(String atopic) {
        this.atopic = atopic;
    }
    public String getAbody() {
        return this.abody;
    }
    
    public void setAbody(String abody) {
        this.abody = abody;
    }




}


