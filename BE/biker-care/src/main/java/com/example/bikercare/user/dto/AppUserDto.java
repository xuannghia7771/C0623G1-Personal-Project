package com.example.bikercare.user.dto;
import com.example.bikercare.user.common.ValidateAppUser;
import com.example.bikercare.user.model.UserRole;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import java.util.Set;

public class AppUserDto implements Validator {
    private Long id;
    private String username;
    private String password;
    private String confirmPassword;
    private String fullName;
    private String email;
    private String phone;
    private String address;
    private String image;
    private Boolean flagDeleted;
    private Boolean flagOnline;
    private Set<UserRole> userRoles;

    public AppUserDto() {
    }

    public AppUserDto(Long id, String username, String password, String confirmPassword, String fullName, String email, String phone, String address, String image, Boolean flagDeleted, Boolean flagOnline, Set<UserRole> userRoles) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.confirmPassword = confirmPassword;
        this.fullName = fullName;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.image = image;
        this.flagDeleted = flagDeleted;
        this.flagOnline = flagOnline;
        this.userRoles = userRoles;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Boolean getFlagDeleted() {
        return flagDeleted;
    }

    public void setFlagDeleted(Boolean flagDeleted) {
        this.flagDeleted = flagDeleted;
    }

    public Boolean getFlagOnline() {
        return flagOnline;
    }

    public void setFlagOnline(Boolean flagOnline) {
        this.flagOnline = flagOnline;
    }

    public Set<UserRole> getUserRoles() {
        return userRoles;
    }

    public void setUserRoles(Set<UserRole> userRoles) {
        this.userRoles = userRoles;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return false;
    }

    @Override
    public void validate(Object target, Errors errors) {
        AppUserDto appUserDto = (AppUserDto) target;
        ValidateAppUser.checkValidateAppUserName(appUserDto.getUsername(),errors);
        ValidateAppUser.checkValidateAppUserPassword(appUserDto.getPassword(),errors);
    }
}
