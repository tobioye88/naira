package com.naira3.jsp;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Super Soft Tech
 */
public class Validate {
//    private boolean _checked = false;
    private boolean _passed = false;
//    private String[] _errors;
    public Validate required(String value){
        this._passed = !value.isEmpty();
        return this;
    }
    public Validate min(String value, int limit){
        this._passed = value.length() > limit;
        return this;
    }
    public Validate max(String value, int limit){
        this._passed = value.length() < limit;
        return this;
    }
    public Validate alpha(String value){
        this._passed = !value.matches("[^a-z]");
        return this;
    }
    public Validate same(String value1, String value2){
        this._passed = value1.equals(value2);
        return this;
    }
    public Validate email(String value){
        this._passed = value.matches("(\\w){2,}@\\.{3,}\\.(\\w){2,}");
        return this;
    }
    public Validate phone(String value){
        this._passed = value.matches("[0-9]{11}");
        return this;
    }
    public Validate phone(String value, int limit){
        this._passed = value.matches("[0-9]{"+limit+"}");
        return this;
    }
    public boolean result(){
        return this._passed;
    }
}

//Validate.number(numval).email(emakl).get(result);