package com.example.bikercare.user.repository;

import com.example.bikercare.user.model.AppUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface IAppUserRepository extends JpaRepository<AppUser, Long> {
    @Transactional
    @Query(value = "SELECT * FROM biker_care.app_user WHERE " +
            "username = :username and flag_deleted = false",nativeQuery = true)
    AppUser findAppUserByName(@Param("username") String username);

    @Modifying
    @Transactional
    @Query(value = "UPDATE app_user set flag_online = 1 WHERE id = :#{#appUser.id}",nativeQuery = true)
    Integer updateAppUserIsOnline (AppUser appUser);

    @Modifying
    @Transactional
    @Query(value =  " CALL insert_acc_users ( :password, :userName, :roleId, :address, :email, :fullName, " +
            ":image, :phone,0,0)" ,nativeQuery = true)
    void findAppRoleIdByNameUser(@Param("password") String password, @Param("userName") String userName,
                                 @Param("roleId") Long roleId, @Param("address") String address,
                                 @Param("email") String email, @Param("fullName") String fullName,
                                 @Param("image") String image, @Param("phone") String phone);

    @Modifying
    @Transactional
    @Query(value = "UPDATE app_user set flag_online = 0 WHERE user_name = :userName",nativeQuery = true)
    Integer updateAppUserIsOffline (@Param("userName") String userName);
}
