package com.example.bikercare.user.model;

import org.springframework.security.core.GrantedAuthority;

import java.io.Serializable;
import java.util.Collection;

public class JwtResponse implements Serializable {
    private String jwtToken;
    private String username;
    private Collection<? extends GrantedAuthority> grantList;
    private Boolean flagOnline;

    public JwtResponse() {
    }
    public JwtResponse(String jwtToken) {
        this.jwtToken = jwtToken;
    }
    public JwtResponse(String jwtToken, String username, Collection<? extends GrantedAuthority> grantList, Boolean flagOnline) {
        this.jwtToken = jwtToken;
        this.username = username;
        this.grantList = grantList;
        this.flagOnline = flagOnline;
    }

    public String getJwtToken() {
        return jwtToken;
    }

    public void setJwtToken(String jwtToken) {
        this.jwtToken = jwtToken;
    }

    public String getUsername() {
        return username;
    }

    public void setUserName(String username) {
        this.username = username;
    }

    public Collection<? extends GrantedAuthority> getGrantList() {
        return grantList;
    }

    public void setGrantList(Collection<? extends GrantedAuthority> grantList) {
        this.grantList = grantList;
    }

    public Boolean getFlagOnline() {
        return flagOnline;
    }

    public void setFlagOnline(Boolean flagOnline) {
        this.flagOnline = flagOnline;
    }
}
