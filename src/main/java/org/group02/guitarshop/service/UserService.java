package org.group02.guitarshop.service;

import org.group02.guitarshop.entity.User;
import javax.mail.MessagingException;
import java.io.UnsupportedEncodingException;

public interface UserService {
    User findUserByEmail(String email);
    User findById(int id);
    User saveUser(User user);
    void sendVerificationEmail(User user, String siteURL) throws UnsupportedEncodingException, MessagingException;
    boolean verify(String verificationCode);
    User findUserByVerificationCode(String code);
    void updateResetPasswordToken(String token, String email);
    User getByResetPasswordToken(String token);
    void updatePassword(User user, String newPassword);
}