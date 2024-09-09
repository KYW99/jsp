package com.farm.service;

import java.util.List;
import java.util.Properties;
import java.util.concurrent.ThreadLocalRandom;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.farm.dao.UserDao;
import com.farm.dto.UserDto;

public enum UserService {

	INSTANCE;
	
	private UserDao dao = UserDao.getInstance();
	
	public String sendEmailCode(String email) {
		
		// 인증코드 생성
		int code = ThreadLocalRandom.current().nextInt(100000,1000000);
		
		
		// 이메일 기본정보
		String title = "Farmstory 인증번호 입니다.";
		String content = "<h1>인증코드는 " + code + "입니다.</h1>";
		String sender = "repos8646@gmail.com";
		String appPass = "zkvi ewfz ptgh jpez"; // 구글 앱 비밀번호

		// SMTP 설정
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

		// gmail session 생성
		Session gmailSession = Session.getInstance(props, new Authenticator(){ // Session 생성 안되면 라이브러리 확인해보기
			
			@Override
			protected javax.mail.PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication(sender, appPass);
			}
		});
		
		// 메일 발송
		Message message = new MimeMessage(gmailSession);
		
		try{
			message.setFrom(new InternetAddress(sender, "보내는사람", "UTF-8"));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			message.setSubject(title);
			message.setContent(content, "text/html;charset=utf-8");
			
			Transport.send(message);
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return ""+code;
	}
	
	public int selectCountUser(String type, String value) {
		return dao.selectCountUser(type, value);
	}
	
	public void insertUser(UserDto dto) {
		dao.insertUser(dto);
	}
	public UserDto selectUser(String uid, String pass) {
		return dao.selectUser(uid, pass);
	}
	
	public UserDto selectUser(String uid) {
		return dao.selectUser2(uid);
	}
	
	public List<UserDto> selectUsers() {
		return dao.selectUsers();
	}
	
	public void updateUser(UserDto dto) {
		dao.updateUser(dto);
	}
	
	public void deleteUser(String uid) {
		dao.deleteUser(uid);
	}
}
