package com.example.bikercare.order.model;
import com.example.bikercare.user.model.AppUser;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String orderCode;
    private String dateTime;

    @ManyToOne
    @JoinColumn(name = "app_user_id")
    private AppUser appUser;

    public Orders(Long id, String orderCode, String dateTime) {
        this.id = id;
        this.orderCode = orderCode;
        this.dateTime = dateTime;
    }

    public Orders(String orderCode, String dateTime, AppUser appUser) {
        this.orderCode = orderCode;
        this.dateTime = dateTime;
        this.appUser = appUser;
    }
}
