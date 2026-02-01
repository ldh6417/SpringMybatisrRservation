package com.zeus.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Member {

    private int no;
    private String id;
    private String name;
    private String phone;
    private Date regdate;   
}
