package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {

	private long uno;
	private String email;
	private String name;
	private String password;
	private String passwordConfirm;
	private String phone;
	private String addr;
	private Date regdate;
	private String role;
	

}
