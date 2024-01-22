package com.example.bikercare.user.service;

import com.example.bikercare.user.model.AppUser;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.Optional;

public interface IAppUserService extends UserDetailsService {
    Boolean existsByUsername(String userName);
    void createNewAppUser(AppUser appUser, String role);
    Boolean logout(String userName);

    Optional<AppUser> findUserByUsername(String username);
}
